using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication5.Admin
{
    public partial class product : System.Web.UI.Page
    {
        ShopingEntities1 db = new ShopingEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                var m = db.allproduct().ToList();
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
        protected void LbtnDelete_Click(object sender, EventArgs e)
        {
            LinkButton lbtn = (LinkButton)(sender);
            int pid = Convert.ToInt32(lbtn.CommandArgument);
            var toDelete = db.Products.Single(p => p.p_id == pid);
           
            db.Products.Remove(toDelete);

            db.Products.Remove(toDelete);
            db.SaveChanges();

            load();

           
        }
        protected void load()
        {
            var m = db.allproduct().ToList();
            Gridcontact.DataSource = m;
            Gridcontact.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");

        }
    }
}