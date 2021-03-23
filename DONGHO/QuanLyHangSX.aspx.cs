using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class QuanLyHangSX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["UserName"] != null)
            {
                string name = Application["UserName"].ToString();

            }
        }
        protected void btnthem_Click(object sender, EventArgs e)
        {

            SqlDsHangSX.InsertParameters["TENHSX"].DefaultValue = txtTENHSX.Text;
            SqlDsHangSX.InsertParameters["DIACHI"].DefaultValue = txtDIACHI.Text;
            SqlDsHangSX.InsertParameters["THONGTIN"].DefaultValue = txtDIACHI.Text;
            SqlDsHangSX.InsertParameters["WEBSITE"].DefaultValue = txtDIACHI.Text;
            try
            {
                SqlDsHangSX.Insert();
                txtTENHSX.Text = "";
                txtDIACHI.Text = "";
                txtTHONGTIN.Text = "";
                txtWEBSITE.Text = "";
                grvHangSX.DataBind();
                lblthongbao.Text = "";
            }
            catch (Exception ex)
            {
                lblthongbao.Text = "Một lỗi xảy ra khi thêm dữ liệu.<br/> <br/>"
                    + "Message: " + ex.Message;
            }
        }
    }
}