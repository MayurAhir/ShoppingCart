using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication5
{
    public partial class Contact : Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db.insert_contact(txtName.Text, txtemail.Text, Convert.ToDecimal(phn.Text), txtsubject.Text, txtmsg.Text);

            string from = "myfake404@gmail.com";
            //    string to = Email.Text;
            MailMessage msg = new MailMessage(from,"mayurahir4045@gmail.com");

            string msgbody = "New Message from" + "<br>Email Id" +txtemail.Text;
            msgbody += "<br>Name of person is "+ txtName.Text;


            msgbody += "<br>Phone Number is"+phn.Text;
            msgbody += "<br>Message Body" + txtmsg.Text;

            msg.Subject = "<br> Message Heading"+txtsubject.Text;
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
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('We Have Received Your Email And Contact You Soon')", true);

               
                clnt.Send(msg);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something Went Wrong!')", true);

                throw ex;
            }

            txtcmpnm.Text = "";
            txtemail.Text = "";
            txtmsg.Text = "";
            txtName.Text = "";
            txtsubject.Text = "";
     }
    }
}