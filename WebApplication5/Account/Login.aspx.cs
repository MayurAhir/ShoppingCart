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

namespace WebApplication5.Account
{
    public partial class Login : Page
    {

        ShopingEntities db = new ShopingEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // List<userlist_Result> m = db.userlist(Email.Text, Password.Text).ToList();
            String em = Email.Text;
            var ps = Password.Text;

            List<UserMst> n = (from st in db.UserMsts
                               where st.email == em
                               where st.password == ps
                               select st).ToList<UserMst>();

            //  var m = db.UserMsts.Where(p => p.email == Email.Text && p.password == Password.Text).ToString() ;

            if (n.Any())
            {
                UserMst m = n.First();
                if (Email.Text == m.email)
                {

                    Session["username"] = m.username;
                    Session["u_id"] = m.u_id;
                    Response.Redirect("~/Product.aspx");
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