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
        ShopingEntities1 db = new ShopingEntities1();
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


           // u_id = Convert.ToDecimal(Request.Cookies["u_id"].Value);

         
            List<history_sp_Result> dt = db.history_sp(u_id).ToList();

            GridView1.DataSource = dt;
            GridView1.DataBind();
            var m = dt.FirstOrDefault();
            bool ps =m.isprocessed;
            if (ps == false)
            {
                HyperLink1.Visible = true;
            }
           
            else
            {
                Label1.Text = "Your previous order is shipped thank you";
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