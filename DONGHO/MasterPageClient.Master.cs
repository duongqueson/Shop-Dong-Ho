using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class MasterPageClient : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Application["tentaikhoan"] != null)
            {
                string name = Application["tentaikhoan"].ToString();
            }
        }
        protected void imgtimkiem_Click(object sender, ImageClickEventArgs e)
        {
            if (txttimkiem.Text == "")
            {
                Response.Write("<script>alert('Bạn Phải Nhập Từ Khoá Trước Khi Tìm >.<!...')</script>");
            }
            else
            {
                string tenSP = txttimkiem.Text;
                Response.Redirect("~/TimKiemDongHo.aspx?TENSP=" + tenSP);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/DangNhap.aspx");
            lbltieude.Text = "";
        }
    }
}
