using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DONGHO
{
    public partial class ChiTietDongHo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataView dv = (DataView)Sqlchitietdongho.Select(DataSourceSelectArguments.Empty);
            int MaSP = Int32.Parse(dv[0]["ID"].ToString());
            string TenSP = dv[0]["TENSP"].ToString();
            int DonGia = Int32.Parse(dv[0]["DONGIA"].ToString());
            ShoppingCart aCart;
            if (Session["Cart"] == null)
            {
                aCart = new ShoppingCart();

            }
            else
            {
                aCart = (ShoppingCart)Session["Cart"];
            }
            aCart.InsertItem(MaSP, TenSP, DonGia, 1);
            Session["Cart"] = aCart;
            Response.Redirect("~/GioHang.aspx");
        }
    }
}