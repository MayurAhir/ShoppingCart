using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebApplication5.Models;

namespace WebApplication5.Account
{
    public partial class Register : Page
    {
        ShopingEntities db = new ShopingEntities();
        protected void CreateUser_Click(object sender, EventArgs e)
        {
           
       
            db.Register_sp(username.Text, Email.Text, Password.Text, address.Text, Convert.ToDateTime(dob.Text), Convert.ToInt32(contact.Text));
            Response.Redirect("~/Default.aspx");
        
    }
    }
}