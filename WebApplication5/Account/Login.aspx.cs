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
using System.Net.Mail;

namespace WebApplication5.Account
{
    public partial class Login : Page
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
                    Session["email"] = m.email;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Email.Text != null || Email.Text!="")
            {


                string from = "myfake404@gmail.com";
                string to = Email.Text;
                MailMessage msg = new MailMessage(from, to);

                string msgbody = "please reset your password by following this link <a href='http://mayurahir-001-site1.itempurl.com/Account/ResetPassword'>Reset Password</a>";
                msg.Subject = "Reset Password";
                msg.Body = msgbody;
                msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;


                msg.IsBodyHtml = true;

                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basiccred = new System.Net.NetworkCredential("myfakeac404@gmail.com", "Fake@404");
                clnt.EnableSsl = true;

                clnt.UseDefaultCredentials = false;
                clnt.Credentials = basiccred;
                clnt.Send(msg);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter your email address')", true);

                Response.Redirect("~/Account/Login.aspx");
            }
        }
    }

}