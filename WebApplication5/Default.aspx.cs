﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication5
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShopingEntities db = new ShopingEntities();
            var it = db.discount_sp().ToList();
            Repeater1.DataSource = it;
            Repeater1.DataBind();


            var ne = db.allproduct().ToList();
             //var ne = db.newproduct_sp().ToList();
            Repeater2.DataSource = ne;
            Repeater2.DataBind();
        }
    }
}