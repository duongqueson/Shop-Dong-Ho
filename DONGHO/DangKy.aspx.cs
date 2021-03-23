using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DONGHO
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblerror.Text = "";
        }
        string strConnString = @"Data Source=DQS;Initial Catalog=DONGHO;User ID=sa;Password=31101998";
        SqlCommand com;
        Boolean check = false;
        protected void btndangky_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strConnString);
                com = new SqlCommand("insert2", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.Add("@tentk", SqlDbType.NVarChar).Value = txttentaikhoan.Text;
                com.Parameters.Add("@matkhau", SqlDbType.NVarChar).Value = txtmatkhau.Text;
                com.Parameters.AddWithValue("@tenkh", SqlDbType.NVarChar).Value = txttennguoidung.Text;
                com.Parameters.Add("@sdt", SqlDbType.Int).Value = txtsdt.Text;
                com.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = txtdiachi.Text;               
                com.Parameters.Add("@gmail", SqlDbType.NVarChar).Value = txtemail.Text;
                com.Parameters.Add("@quyen", SqlDbType.NVarChar).Value = "khachhang";
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                txttentaikhoan.Text = "";
                txtmatkhau.Text = "";
                txttennguoidung.Text = "";
                txtnhaplaipass.Text = "";
                txtsdt.Text = "";
                txtemail.Text = "";
                txtdiachi.Text = "";
                lblerror.Text = "Đăng ký thành công";
                check = true;
            }
            catch (Exception ex)
            {
                lblerror.Text = " đăng ký không thành công  <br/>" + ex.Message;
                check = false;
            }

            if (check == true)
            {
                Response.Redirect("DangNhap.aspx");
            }
        }

        protected void btnquaylai_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}