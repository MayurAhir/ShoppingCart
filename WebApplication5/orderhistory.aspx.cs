using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class orderhistory : System.Web.UI.Page
    {
        ShopingEntities db = new ShopingEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            decimal pid = Convert.ToDecimal(Request.Cookies["p_id"].Value);
            decimal u_id = Convert.ToDecimal(Request.Cookies["u_id"].Value);

            //   decimal o_id = Convert.ToDecimal(Request.Cookies["o_id"].Value);
            // decimal id =Convert.ToInt32(Session["order"].ToString());

            // List<Order_History_Result> dt = db.Order_History(id, u_id).ToList();
            List<history_sp_Result> dt = db.history_sp(u_id).ToList();

            GridView1.DataSource = dt;
            GridView1.DataBind();
            var m = dt.FirstOrDefault();
            bool ps =m.isprocessed;
            if (ps == false)

            {
                Button3.Visible = true;
            }
            else
            {
                Label1.Text = "Your order is shipped thank you!!";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Product.aspx");
        }
    }
}