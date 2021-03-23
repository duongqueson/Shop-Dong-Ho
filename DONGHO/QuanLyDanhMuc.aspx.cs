using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class QuanLyDanhMuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["UserName"] != null)
            {
                string name = Application["UserName"].ToString();

            }
        }
        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lbError.Text = "Một lỗi xảy ra khi xóa dữ liệu. <br/> <br/>"
                    + "Message: " + e.Exception.Message;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lbError.Text = "Một người khác có thể đang cập nhật dữ liệu.<br/>"
                    + "Cố gắng thử lại!";
            }
        }
        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lbError.Text = "Một lỗi xảy ra khi sửa dữ liệu. <br/> <br/>"
                    + "Message: " + e.Exception.Message;
                e.ExceptionHandled = true;

            }
            else if (e.AffectedRows == 0)
            {
                lbError.Text = "Một người khác có thể đang cập nhật dữ liệu.<br/>"
                    + "Cố gắng thử lại!";
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            lbError.Text = "";
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            SqlDsDanhMucDongHo.InsertParameters["TenDM"].DefaultValue = txtTenDM.Text;
            try
            {
                SqlDsDanhMucDongHo.Insert();
                txtTenDM.Text = "";
                grvDanhMuc.DataBind();
                lbError.Text = "";
            }
            catch (Exception ex)
            {
                lbError.Text = "Một lỗi xảy ra khi thêm dữ liệu.<br/> <br/>"
                    + "Message: " + ex.Message;
            }
        }
    }
}