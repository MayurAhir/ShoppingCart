using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Admin
{
    public partial class resetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            ShopingEntities db = new ShopingEntities();
            var m = db.AdminMsts.Where(c => c.email == Email.Text && c.password == Password.Text);
            if (m.Any())
            {
                AdminMst a = new AdminMst();
                a = db.AdminMsts.Single(c => c.email == Email.Text && c.password == Password.Text);
                a.password = newpass.Text;
                db.SaveChanges();
                Response.Redirect("login.aspx");


            }
            else
            {
                Label1.Text = "Your username or password is not match";
            }
        }
    }
}