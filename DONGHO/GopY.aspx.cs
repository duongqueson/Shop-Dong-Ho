using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class GopY : System.Web.UI.Page
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
                com.Parameters.AddWithValue("@tenkh", SqlDbType.NVarChar).Value = txttennguoidung.Text;
                com.Parameters.Add("@sdt", SqlDbType.Int).Value = txtsdt.Text;
                com.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = txtdiachi.Text;
                com.Parameters.Add("@gmail", SqlDbType.NVarChar).Value = txtemail.Text;
                com.Parameters.Add("@noidung", SqlDbType.NVarChar).Value = txtnoidung.Text;
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                txttennguoidung.Text = "";
                txtsdt.Text = "";
                txtemail.Text = "";
                txtdiachi.Text = "";
                lblerror.Text = "Đã gửi đi";
                check = true;
            }
            catch (Exception ex)
            {
                lblerror.Text = "gửi không thành công  <br/>" + ex.Message;
                check = false;
            }

            if (check == true)
            {
                Response.Redirect("TrangChu.aspx");
            }
        }

        protected void btnquaylai_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}