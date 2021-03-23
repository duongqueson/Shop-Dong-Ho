using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DONGHO
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblerror.Text = "";
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {

            try
            {
                DataView dv = (DataView)SqlDsNguoidung.Select(DataSourceSelectArguments.Empty);
                int number = dv.Count;
                if (number > 0)
                {
                    Use tk = new Use();

                    tk.password = txtpassword.Text;
                    tk.userName = txtuser.Text;
                    Session.Add("User", tk);
                    string quyen = Quyen();

                    if (quyen.Equals("admin"))
                    {
                        Application["UserName"] = txtuser.Text;
                        Response.Redirect("~/QuanLyDanhMuc.aspx");

                    }
                    else
                    {
                        Application["tentaikhoan"] = txtuser.Text;
                        Response.Redirect("TrangChu.aspx");
                    }

                }
                else
                {
                    lblerror.Text = "Đăng nhập không thành công";
                }
            }
            catch (Exception ex)
            {
                lblerror.Text = "Đăng nhập không thành công";
            }
        }
        public string Quyen()
        {
            string ConnectionString = @"Data Source=DQS;Initial Catalog=DONGHO;User ID=sa;Password=31101998";
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            string select = "SELECT quyen FROM TAIKHOAN WHERE TAIKHOAN=@tk AND MATKHAU=@mk ";
            SqlCommand comand = new SqlCommand(select, con);
            comand.Parameters.AddWithValue("tk", txtuser.Text);
            comand.Parameters.AddWithValue("mk", txtpassword.Text);
            SqlDataReader dataReader = comand.ExecuteReader();
            dataReader.Read();
            string quyen = dataReader["quyen"].ToString();
            con.Close();
            return quyen;

        }
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangKy.aspx");
        }
    }
}