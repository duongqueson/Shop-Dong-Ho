<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="DONGHO.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Đăng ký"></asp:Label>
    </h1>
    <p>&nbsp;</p>
                <table class="auto-style1" style="border-style: dotted; border-color: #808080; width: 545px; margin-left:100px" >
                    <tr>
                        <td style="height: 51px; width: 136px; text-align:center">
                            <asp:Label ID="lbltentaikhoan" runat="server" Text="Tên người dùng"></asp:Label>
                        </td>
                        <td style="height: 51px">
                            <br />
                            <asp:TextBox ID="txttennguoidung" runat="server" placeholder="Nhập tên người dùng" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 46px; text-align:center"">
                            <asp:Label ID="Label14" runat="server" Text="Tên tài khoản" ></asp:Label>
                        </td>
                        <td style="height: 46px">
                            <asp:TextBox ID="txttentaikhoan" runat="server" placeholder="Nhập tên tài khoản" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 53px; text-align:center"">
                            <asp:Label ID="lblmatkhau" runat="server" Text="Mật khẩu" Height="25px" Width="200px"></asp:Label>
                        </td>
                        <td style="height: 53px">
                            <asp:TextBox ID="txtmatkhau" runat="server" Height="25px" Width="250px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 49px; width: 136px; text-align:center"">
                            <asp:Label ID="Label16" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
                        </td>
                        <td style="height: 49px">
                            <asp:TextBox ID="txtnhaplaipass" runat="server" Height="25px" Width="250px" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaipass" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red">Nhập lại mật khẩu không đúng</asp:CompareValidator>
                        </td>
                    </tr>                                        
                    <tr>
                        <td style="width: 136px; height: 46px; text-align:center"">
                            <asp:Label ID="Label19" runat="server" Text="Số điện thoại"></asp:Label>
                        </td>
                        <td style="height: 46px">
                            <asp:TextBox ID="txtsdt" runat="server" Height="25px" Width="250px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 48px; text-align:center"">
                            <asp:Label ID="Label18" runat="server" Text="Địa chỉ"></asp:Label>
                        </td>
                        <td style="height: 48px">
                            <asp:TextBox ID="txtdiachi" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 47px; text-align:center"">
                            <asp:Label ID="Label20" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td style="height: 47px">
                            <asp:TextBox ID="txtemail" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng ký" BackColor="#993333" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnquaylai" runat="server" Text="Quay lại" OnClick="btnquaylai_Click" CausesValidation="False" BackColor="#993333" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
</asp:Content>
