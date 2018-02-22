using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Admin
{
    public partial class contact : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                var m = db.contact_sp().ToList();
                Gridcontact.DataSource = m;
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