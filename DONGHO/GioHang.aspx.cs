using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShoppingCart sCart;
            if (Session["Cart"] == null)
            {
                sCart = new ShoppingCart();
            }
            else
            {
                sCart = (ShoppingCart)Session["Cart"];
            }
            if (!IsPostBack)
            {
                BindGrid(sCart);
            }
        }

        public void BindGrid(ShoppingCart cart)
        {
            gvgiohang.DataSource = cart.items;
            gvgiohang.DataBind();
            lblTongTien.Text = "\t" + cart.TongTien.ToString();
        }

        protected void gvgiohang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndext = Convert.ToInt32(e.CommandArgument);
            int iD = Convert.ToInt32(gvgiohang.Rows[rowIndext].Cells[0].Text);
            TextBox txtSl = (TextBox)gvgiohang.Rows[rowIndext].FindControl("txtSoLuong");
            int sl = Convert.ToInt32(txtSl.Text);
            ShoppingCart s;
            if (Session["Cart"] == null)
            {
                s = new ShoppingCart();
            }
            else
            {
                s = (ShoppingCart)Session["Cart"];
            }
            int rowID = s.getIndext(iD);
            s.UpdateItem(rowID, sl);
            BindGrid(s);
            Session["Cart"] = s;
        }

        protected void btnXoagiohang_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            lblTongTien.Text = "";
            Response.Redirect("GioHang.aspx");
        }

        protected void btntieptuc_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/XemDanhMucDongHo.aspx");
        }

        protected void btnthanhtoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatMua.aspx");
        }
    }
}