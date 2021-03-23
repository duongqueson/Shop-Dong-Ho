using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DONGHO
{
    public partial class MasterPageAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["UserName"] != null)
            {
                string name = Application["UserName"].ToString();
                lblname.Text = "<br/> Xin chào " + name;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/DangNhap.aspx");
        }
    }
}