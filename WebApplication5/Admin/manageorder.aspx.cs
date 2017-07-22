using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using WebApplication5.Admin;
using WebApplication5.Models;

namespace WebApplication5.Admin
{
    public partial class manageorder : System.Web.UI.Page
    {
        ShopingEntities DB = new ShopingEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                if (Request.QueryString["id"] == null|| Request.QueryString["id"]==Convert.ToString (0))
                {
                    Label6.Text = "Something went wrong!!";
                }
                var m = DB.manage_order_(Convert.ToDecimal(id)).ToList();

                if (m.Any())
                {
                    var tb = m.First();
                    TextBox1.Text = Convert.ToString(tb.p_name);
                    TextBox2.Text = Convert.ToString(tb.qty);
                    TextBox3.Text = Convert.ToString(tb.total);

                    TextBox4.Text = Convert.ToString(tb.o_date);
                    CheckBox1.Checked = Convert.ToBoolean(tb.isprocessed);



                }

                else Label6.Text = "Something went wrong!!";


            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

          //  DB.updateorder_sp(id,true);
            
            if (CheckBox1.Checked==true)
             {
                // DB.updateorder_sp(id, true);
                // var m = from i in DB.Order_Mst where i.o_id == id select i;
                id = Convert.ToInt32(Request.QueryString["id"]);
                Order_Mst o = new Order_Mst();
                o = DB.Order_Mst.Single(c => c.o_id == id);  
                o.isprocessed = true;

                DB.SaveChanges();

                 Label6.Text = "status is updated";

                Response.Redirect("order.aspx");
            }
             else
             {
                id = Convert.ToInt32(Request.QueryString["id"]);
                Order_Mst o = new Order_Mst();

                o = DB.Order_Mst.Single(c => c.o_id == id);
                o.isprocessed = false;

                DB.SaveChanges();
                Label6.Text = "status is updated";

                 Response.Redirect("order.aspx");
             }

        }
    }
}