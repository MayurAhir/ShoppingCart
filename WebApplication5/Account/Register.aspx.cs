using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebApplication5.Models;
using System.Net.Mail;
using System.Linq;
using System.Collections.Generic;

namespace WebApplication5.Account
{
    public partial class Register : Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        string from = "myfake404@gmail.com";

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            // here u have to check email address before alllow rgistration

           
            }
        
        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dob_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            List<UserMst> m = (from n in db.UserMsts where n.email == Email.Text select n).ToList<UserMst>();
            if (!m.Any())
            {
                string to = Email.Text;
                MailMessage msg = new MailMessage(from, to);

                string msgbody = "Thank you for registering with us, here is your Id and Password" + "<br>Email Id" + Email.Text;
                msgbody += "<br>Please set-up your new password from this link<a href='http://mayurahir-001-site1.itempurl.com/Account/ResetPassword.aspx'>Set New Passowrd</a>";


                msgbody += "<br>If you have any issue with your product please leave message from contact us page at <a href='http://mayurahir-001-site1.itempurl.com'>Myshoping.com</a>. we will reach you soon!<br></h2 style='color:blue'>Thank You!</h2>";
                msgbody += "<br>All Right Reserved By <a href='http://mayurahir-001-site1.itempurl.com'>Myshoping.com</a>";
                msg.Subject = "Your Order Detail";
                msg.Body = msgbody;
                msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;


                msg.IsBodyHtml = true;

                SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basiccred = new System.Net.NetworkCredential("myfakeac404@gmail.com", "Fake@404");
                clnt.EnableSsl = true;

                clnt.UseDefaultCredentials = false;
                clnt.Credentials = basiccred;
                try
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We have sent you email to set new Password!')", true);

                    db.Register_sp(username.Text, Email.Text, "", address.Text, Convert.ToDateTime(dob.Text), Convert.ToDecimal(contact.Text));

                    clnt.Send(msg);
                }
                catch (Exception ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something Went Wrong!')", true);

                    throw ex;
                }

                Response.Redirect("~/Default.aspx");

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User with same Email exist!')", true);


            }
        }
    }
}