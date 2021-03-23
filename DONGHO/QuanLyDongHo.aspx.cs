using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class QuanLyDongHo : System.Web.UI.Page
    {

        FileUpload fileUpload;
        Image img;
        FileUpload fileUploadedit;
        Image imgedit;
        protected void Page_Load(object sender, EventArgs e)
        {
            fileUpload = (FileUpload)FormView1.FindControl("uploadfile");
            img = (Image)FormView1.FindControl("img");
            fileUploadedit = (FileUpload)FormView1.FindControl("fileupload");
            imgedit = (Image)FormView1.FindControl("image");
        }
        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            lbthongbao.Text = "";
        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lbthongbao.Text = "Lỗi xảy ra khi xóa";
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lbthongbao.Text = "Một người dùng khác có thể đang cập nhật dữ liệu";
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if (Page.IsValid && fileUpload.HasFile)
            {
                fileUpload.SaveAs(Server.MapPath("~/image/") + fileUpload.FileName);
                img.ImageUrl = "image/" + fileUpload.FileName;
            }
            if (e.Exception != null)
            {
                lbthongbao.Text = "Lỗi xảy ra khi thêm" + e.Exception;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lbthongbao.Text = "Một người dùng khác có thể đang cập nhật dữ liệu";
            }
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            if (Page.IsValid && fileUploadedit.HasFile)
            {
                fileUploadedit.SaveAs(Server.MapPath("~/image/") + fileUploadedit.FileName);
                imgedit.ImageUrl = "image/" + fileUploadedit.FileName;
            }
            if (e.Exception != null)
            {
                lbthongbao.Text = "Lỗi xảy ra khi cập nhật";
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lbthongbao.Text = "Một người dùng khác có thể đang cập nhật dữ liệu";
            }
        }   
    }
}