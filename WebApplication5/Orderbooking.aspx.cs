using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication5
{
    public partial class Orderbooking : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        string from = "myfake404@gmail.com";
        string to;
        public int p_id;
        public itemselected_sp_Result id;
        // bool clk = false;
        public int qty;
        public decimal price;
        public int u_id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                u_id = Convert.ToInt32(Session["u_id"]);
            }
            if (Request.QueryString["id"] == null)
            {
                Label1.Text = "Product Is Not Available ";

            }
            else
            {

                List<itemselected_sp_Result> m = db.itemselected_sp(Convert.ToInt32(Request.QueryString["id"])).ToList();
                GridView1.DataSource = m;
                GridView1.DataBind();
                id = m.First();
                p_id = Convert.ToInt32(id.p_id);
                qty = Convert.ToInt32(id.qty);
                price = Convert.ToDecimal(id.price);


            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text != "total")
            {

                Label1.Text = Convert.ToString(Session["username"]);

                if (qty >= Convert.ToInt32(TextBox2.Text))
                {
                    string add = TextBox3.Text + "," + TextBox8.Text + "," + TextBox5.Text + "," + TextBox6.Text + "," + TextBox7.Text;

                    db.order_insert(Convert.ToDecimal(u_id),Convert.ToDecimal(p_id),Convert.ToDecimal(TextBox2.Text), Convert.ToDecimal(TextBox4.Text), Convert.ToDecimal(TextBox1.Text),add);
                    // db.insertProduct_sp(u_id, p_id, Convert.ToInt32(TextBox2.Text), Convert.ToInt32(TextBox4.Text), Convert.ToInt32(TextBox1.Text), Convert.ToString(TextBox3.Text));



                    var oqty = TextBox2.Text;

                    decimal updt = Convert.ToDecimal(qty - Convert.ToInt32(oqty));
                    db.updateQt(updt,p_id);
                   
                    
                    
                    string pname = id.p_name;
                    int ttl = Convert.ToInt32(TextBox4.Text);


                    to = Session["email"].ToString();
                    MailMessage msg = new MailMessage(from, to);

                    string msgbody = "Thank you for shoping with us:" + "<h3>" + Session["username"].ToString() + "</h3>" + "<br>" + "<p>Here is your order details:</p>"
                   + "<table style='border: 1px solid black;'>" + "<tr><th style='border: 1px solid black;'>Product Name </th><th style='border: 1px solid black;'> Unit Price </th><th style='border: 1px solid black;'> Qauntity </th><th> Total </th></tr>"
                   + "<tr><td style='border: 1px solid black;'>" + pname + "</td><td style='border: 1px solid black;'>" + price + "</td><td style='border: 1px solid black;'>" + Convert.ToInt32(oqty) + "</td><td style='border: 1px solid black;'>" + ttl + "</td></tr></table>";




                    msgbody += "<br>If you have any issue with your product please leave message from contact us page. we will reach you soon!<br></h2 style='color:blue'>Thank You!</h2>";
                    msg.Subject = "Your Order Detail";
                    msg.Body = msgbody;
                    msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;


                    msg.IsBodyHtml = true;

                    SmtpClient clnt = new SmtpClient("smtp.gmail.com", 587);
                    System.Net.NetworkCredential basiccred = new System.Net.NetworkCredential("myfakeac404@gmail.com", "Fake@404");
                    clnt.EnableSsl = true;

                    clnt.UseDefaultCredentials = false;
                    clnt.Credentials = basiccred;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You For Shoping With Us! You Will Get E-Mail Notification Of Your Order.')", true);
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    try
                    {
                        clnt.Send(msg);
                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Process is not completed!')", true);

                        throw ex;
                    }




                }
                else
                {
                    Label6.Text = "we dont have enough quantity";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }

            }
            else
                Label7.Text = "Get total first";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int qt = Convert.ToInt32(TextBox2.Text);
            decimal prc = Convert.ToDecimal(price);
            int ttl = Convert.ToInt32(prc * qt);
            TextBox4.Text = Convert.ToString(ttl);
            // clk = true;

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpCookie uid = new HttpCookie("u_id");
            uid.Value = Convert.ToString(u_id);
            Response.Cookies.Add(uid);
            HttpCookie pid = new HttpCookie("p_id");
            pid.Value = Convert.ToString(p_id);
            Response.Cookies.Add(pid);

            var o_id1 = from i in db.Order_Mst where i.u_id == u_id select i;



            if (o_id1.Any())
            {
                var m1 = o_id1.First<Order_Mst>();
                Session["order"] = Convert.ToString(m1.o_id);
                Response.Redirect("~/OrderHistory.aspx");
            }
            else
            {
                Label7.Text = "You didnt purchase any items still?";
            }

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            int qt = Convert.ToInt32(TextBox2.Text);
            decimal prc = Convert.ToDecimal(price);
            int ttl = Convert.ToInt32(prc * qt);
            TextBox4.Text = Convert.ToString(ttl);

        }
        protected void TextBox2_Leave(object sender, EventArgs e)
        {

            int qt = Convert.ToInt32(TextBox2.Text);
            decimal prc = Convert.ToDecimal(price);
            int ttl = Convert.ToInt32(prc * qt);
            TextBox4.Text = Convert.ToString(ttl);
        }
    }
}