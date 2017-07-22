using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Admin
{
    public partial class register : System.Web.UI.Page
    {
        ShopingEntities db = new ShopingEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            AdminMst a = new AdminMst();
            a.email = Email.Text;
            a.password = Password.Text;
            a.username = username.Text;
            a.isactive = true;
            db.AdminMsts.Add(a);
            db.SaveChanges();
            Response.Redirect("login.aspx");


        }
    }
}