using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Orderbooking : System.Web.UI.Page
    {
        ShopingEntities db = new ShopingEntities();
        decimal p_id = 0;
        itemselected_sp_Result id;
       // bool clk = false;
        int qty;
        decimal u_id;
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
                Label1.Text = "Product is Not Available ";

            }
            else
            {

                List<itemselected_sp_Result> m = db.itemselected_sp(Convert.ToInt32(Request.QueryString["id"])).ToList();
                GridView1.DataSource = m;
                GridView1.DataBind();
                id = m.First();
                p_id = Convert.ToInt32(id.p_id);
                qty = Convert.ToInt32(id.qty);

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text!=""|| TextBox4.Text!=null)
            {

                Label1.Text = Convert.ToString(Session["username"]);

                if (qty >= Convert.ToInt32(TextBox2.Text))
                {
                    db.order_insert(u_id, p_id, Convert.ToInt32(TextBox2.Text), Convert.ToInt32(TextBox4.Text), Convert.ToInt32(TextBox1.Text), Convert.ToString(TextBox3.Text));
                    // db.insertProduct_sp(u_id, p_id, Convert.ToInt32(TextBox2.Text), Convert.ToInt32(TextBox4.Text), Convert.ToInt32(TextBox1.Text), Convert.ToString(TextBox3.Text));



                    var oqty = TextBox2.Text;

                    decimal updt = Convert.ToDecimal(qty - Convert.ToInt32(oqty));
                    db.updateQt(p_id, updt);
                    Label7.Text = "Your order is sucessfully completed!!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";

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
            int prc = Convert.ToInt32(id.price);
            int ttl = (prc * qt);
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
    }
}