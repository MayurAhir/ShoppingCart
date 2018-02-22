using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication5.Admin;
using WebApplication5.Models;
namespace WebApplication5.Admin
{
    public partial class order : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                var n = db.show_order_sp();
                Gridcontact.DataSource = n;
                Gridcontact.DataBind();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Gridcontact_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       
    }
}