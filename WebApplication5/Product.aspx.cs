using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Product1 : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            var m = db.allproduct().ToList();
            Repeater1.DataSource = m;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            decimal id;
            if (Session["username"] == null)
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                id = Convert.ToDecimal(Session["u_id"]);
                HttpCookie uid = new HttpCookie("u_id");
                uid.Value = Convert.ToString(id);
                Response.Cookies.Add(uid);



                var o_id1 = from i in db.Order_Mst where i.u_id == id select i;



                if (o_id1.Any())
                {
                    var m1 = o_id1.First<Order_Mst>();
                    Session["order"] = Convert.ToString(m1.o_id);
                    Response.Redirect("~/OrderHistory.aspx");
                }
                else
                {
                    Label1.Text = "You didnt purchase any items still?";
                }

            }



        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}