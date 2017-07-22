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
        protected void Page_Load(object sender, EventArgs e)
        {
            ShopingEntities db = new ShopingEntities();
            var m = db.allproduct().ToList();
            Repeater1.DataSource = m;
            Repeater1.DataBind();
        }
    }
}