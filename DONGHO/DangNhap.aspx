<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="DONGHO.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin-left: 100px; margin-top: 20px; width: 300px; border: dashed">
        <tr>
            <td class="auto-style12" style="text-align: center">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Đăng nhập"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtuser" runat="server" Height="35px" Width="250px" placeholder="Nhập tên đăng nhập" BorderColor="#990000" BorderStyle="Double" CssClass="auto-style13"></asp:TextBox>               
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtpassword" runat="server" Height="35px" Width="250px" placeholder="Nhập mật khẩu" TextMode="Password" BorderColor="Maroon" BorderStyle="Double" CssClass="auto-style14"></asp:TextBox>              
            </td>
        </tr>
        <tr>
            <td style="text-align: center">              
                <asp:Button ID="btnlogin" runat="server" BackColor="#993333" Font-Bold="False" ForeColor="White" Height="35px" OnClick="btnlogin_Click" Text="Đăng nhập" Width="250px" Font-Size="Medium" />               
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <br />
                <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Size="Medium" Text="Chưa có tài khoản?"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnDangKy" runat="server" BackColor="#993333" CausesValidation="False" Font-Bold="False" ForeColor="White" Height="35px" OnClick="btnDangKy_Click" Text="Đăng ký" Width="250px" Font-Size="Medium" />
                <br />
                <br />
                <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <style>
        .auto-style12 {
            height: 60px;
        }
        .auto-style13 {
            position: relative;
            margin-bottom: 1rem;
            border: 1px solid transparent;
            border-radius: .25rem;
            left: 4px;
            top: 0px;
        }
        .auto-style14 {
            position: relative;
            margin-bottom: 1rem;
            border: 1px solid transparent;
            border-radius: .25rem;
            left: 5px;
            top: 1px;
        }
    </style>

    <asp:SqlDataSource ID="SqlDsNguoidung" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [TAIKHOAN] WHERE (([TAIKHOAN] = @TAIKHOAN) AND ([MATKHAU] = @MATKHAU))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtuser" Name="TAIKHOAN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtpassword" Name="MATKHAU" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
</asp:Content>
