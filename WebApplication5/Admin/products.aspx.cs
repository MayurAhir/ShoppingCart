using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Drawing.Imaging;
using System.Data.SqlClient;
using WebApplication5.Admin;
using WebApplication5.Models;

namespace WebApplication5.Admin
{
    public partial class products : System.Web.UI.Page
    {
        ShopingEntities db = new ShopingEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    var m = db.Products.SingleOrDefault(p => p.p_id == id);
                    p_id.Text = Convert.ToString(m.p_id);
                    pnm.Text = m.p_name;
                    qty.Text = Convert.ToString(m.qty);
                    prc.Text = Convert.ToString(m.price);
                    disc.Text = Convert.ToString(m.discount);
                    chkdis.Checked = Convert.ToBoolean(m.isdiscount);
                    chkact.Checked = Convert.ToBoolean(m.isactive);
                    chkdlt.Checked = Convert.ToBoolean(m.isdelete);
                    chknw.Checked = Convert.ToBoolean(m.isnew);

                    // byte img = Convert.ToByte(m.image);
                    Image1.ImageUrl = "../images/tempr/" + Convert.ToString(m.image);
                    Label1.Text = "done";
                    s1.Visible = false;

                }



            }
        }
        protected void s1_Click(object sender, EventArgs e)
        {
            string imgname = "";
            try
            {
                if (FileUpload1.HasFile)
                {
                    imgname = Server.MapPath("../images/tempr" + FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgname);

                }
                //db.packageinsert(ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), Convert.ToBoolean(CheckBox1.Checked), FileUpload1.FileName);
                db.insert_product(pnm.Text, FileUpload1.FileName, Convert.ToDecimal(qty.Text), Convert.ToDecimal(prc.Text), Convert.ToDecimal(disc.Text), Convert.ToBoolean(chkdis.Checked), Convert.ToBoolean(chkact.Checked), Convert.ToBoolean(chkdlt.Checked), Convert.ToBoolean(chknw.Checked));
                Response.Redirect("product.aspx");
            }
            catch (Exception)
            {

            }

        }

        protected void u1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.FileName == null || FileUpload1.FileName == "")
            {
                //db.packageupdate(Convert.ToInt32(TextBox1.Text),ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2));
                // db.packageupdate(Convert.ToInt32(TextBox1.Text), ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), CheckBox1.Checked, FileUpload1.FileName);
                db.update_product(Convert.ToDecimal(Request.QueryString["id"]), pnm.Text, FileUpload1.FileName, Convert.ToDecimal(qty.Text), Convert.ToDecimal(prc.Text), Convert.ToDecimal(disc.Text), Convert.ToBoolean(chkdis.Checked), Convert.ToBoolean(chkact.Checked), Convert.ToBoolean(chkdlt.Checked), Convert.ToBoolean(chknw.Checked));
                Response.Redirect("product.aspx");

            }

            else
            {
                if (FileUpload1.HasFile)
                {
                    string imgpath1 = Server.MapPath("../images/tempr" + FileUpload1.FileName);
                    FileUpload1.PostedFile.SaveAs(imgpath1);
                    db.update_product(Convert.ToDecimal(Request.QueryString["id"]), pnm.Text, FileUpload1.FileName, Convert.ToDecimal(qty.Text), Convert.ToDecimal(prc.Text), Convert.ToDecimal(disc.Text), Convert.ToBoolean(chkdis.Checked), Convert.ToBoolean(chkact.Checked), Convert.ToBoolean(chkdlt.Checked), Convert.ToBoolean(chknw.Checked));
                    Response.Redirect("product.aspx");

                    //    db.packageupdate(Convert.ToInt32(TextBox1.Text), ptypedrp.Text, pdesctb.Text, Convert.ToInt32(pricetb.Text), DateTime.Parse(dt1), DateTime.Parse(dt2), CheckBox1.Checked, FileUpload1.FileName);
                }
            }


        }

        protected void c1_Click(object sender, EventArgs e)
        {

        }
    }
}