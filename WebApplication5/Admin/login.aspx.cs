using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebApplication5.Models;
using System.Data.SqlClient;
using System.Linq;
using System.Collections.Generic;

namespace WebApplication5.Admin
{
    public partial class login : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // List<userlist_Result> m = db.userlist(Email.Text, Password.Text).ToList();
            String em = Email.Text;
            var ps = Password.Text;

            List<AdminMst> n = (from st in db.AdminMsts
                               where st.email == em
                               where st.password == ps
                               select st).ToList<AdminMst>();

            //  var m = db.UserMsts.Where(p => p.email == Email.Text && p.password == Password.Text).ToString() ;

            if (n.Any())
            {
                AdminMst m = n.First();
                if (Email.Text == m.email)
                {

                    Session["username"] = m.username;
                    Session["u_id"] = m.a_id;
                  
                    Response.Redirect("order.aspx");
                }
                else
                {
                    Label1.Text = "Invalid User";
                }
            }
            else
                Label1.Text = "Invalid User";




        }
       
    }

}