using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Admin
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Session["username"] = null;
                Session["u_id"] = null;
                Label1.Text = "You are successfully logged out";
                Response.Redirect("login.aspx");


            }
            else
            {
                Label1.Text = "You are not login";
                Response.Redirect("login.aspx");

            }
        }
    }
}