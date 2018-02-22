using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebApplication5.Models;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication5.Account
{
    public partial class ResetPassword : Page
    {
        protected string StatusMessage
        {
            get;
            private set;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ShopingEntities1 db = new ShopingEntities1();
           var m= db.UserMsts.Where(c => c.email == Email.Text);
            if (m.Any())
            {
                   
                UserMst a = new UserMst();
                a = db.UserMsts.Single(c => c.email == Email.Text);
                a.password = newpass.Text;
                db.SaveChanges();
                Response.Redirect("~/Default.aspx");


            }
            else
            {
                Label1.Text = "Your username or password is not match";
            }
        }
    }
}