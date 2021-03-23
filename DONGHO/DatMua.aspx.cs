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
    public partial class DatMua : System.Web.UI.Page
    {
        string MaDH;
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["tentaikhoan"] != null)
            {
                name = Application["tentaikhoan"].ToString();
            }
            ShoppingCart aCart;
            if (Session["Cart"] == null)
            {
                aCart = new ShoppingCart();
            }
            else
            {
                aCart = (ShoppingCart)Session["Cart"];
            }
            if (!IsPostBack)
            {
                BindGrid(aCart);
            }

        }
        public void BindGrid(ShoppingCart aCart)
        {
            gvGioHang.DataSource = aCart.items;
            gvGioHang.DataBind();
            lblTongTien.Text = "Tổng tiền: " + aCart.TongTien.ToString();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                ddlbank.Enabled = false;
                txtsotk.Enabled = false;
            }
            else
            {
                ddlbank.Enabled = true;
                txtsotk.Enabled = true;
            }
        }
        public int getMa(string name)
        {
            string ConnectionString = @"Data Source=DQS;Initial Catalog=DONGHO;User ID=sa;Password=31101998";
            SqlConnection con = new SqlConnection(ConnectionString);
            con.Open();
            string select = "SELECT ID FROM TAIKHOAN WHERE TAIKHOAN='" + name + "' ";
            SqlCommand cmd = new SqlCommand(select, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return Int32.Parse(dr.GetValue(0).ToString());
            }
            else return 0;

        }
        protected void sqlDsDonHang_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            MaDH = e.Command.Parameters["@ID"].Value.ToString();
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {
            ShoppingCart aCart;
            if (Session["Cart"] != null)
            {
                aCart = (ShoppingCart)Session["Cart"];
                sqlDsDonHang.InsertParameters["NGUOINHAN"].DefaultValue = txtnguoinhan.Text;
                sqlDsDonHang.InsertParameters["SDT"].DefaultValue = txtsdt.Text;
                sqlDsDonHang.InsertParameters["DIACHI"].DefaultValue = txtdiachi.Text;                             
                sqlDsDonHang.InsertParameters["EMAIL"].DefaultValue = txtemail.Text;               
                sqlDsDonHang.InsertParameters["TONGTIEN"].DefaultValue = aCart.TongTien.ToString();
                sqlDsDonHang.InsertParameters["IDTK"].DefaultValue = getMa(name) +"";
                try {
                    sqlDsDonHang.Insert();
                    foreach (var item in aCart.items)
                    {
                        sqlDsChiTietDH.InsertParameters["MaDH"].DefaultValue = MaDH.ToString();
                        sqlDsChiTietDH.InsertParameters["MaSP"].DefaultValue = item.maSP.ToString();
                        sqlDsChiTietDH.InsertParameters["SOLUONG"].DefaultValue = item.soLuong + "";
                        sqlDsChiTietDH.Insert();
                    }
                    Session.Remove("Cart");
                    Response.Redirect("~/ThongTinDonHang.aspx?ID=" + MaDH);
                }
                catch(Exception ex)
                {
                    lblThongBao.Text = "Đặt hàng thất bại " + ex.Message;
                }
                                   
            }
        }

    }
}