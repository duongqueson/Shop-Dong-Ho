<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="GopY.aspx.cs" Inherits="DONGHO.GopY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Hỏi Đáp - Góp Ý"></asp:Label>
    </h1>
    <p>&nbsp;</p>
                <table class="auto-style1" style="border-style: dotted; border-color: #808080; width: 545px; margin-left:100px" >
                    <tr>
                        <td style="height: 51px; width: 136px; text-align:center">
                            <asp:Label ID="lblten" runat="server" Text="Họ Tên"></asp:Label>
                        </td>
                        <td style="height: 51px">
                            <br />
                            <asp:TextBox ID="txttennguoidung" runat="server" placeholder="Nhập họ tên" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 46px; text-align:center"">
                            <asp:Label ID="Label14" runat="server" Text="Số điện thoại" ></asp:Label>
                        </td>
                        <td style="height: 46px">
                            <asp:TextBox ID="txtsdt" runat="server" placeholder="Nhập số điện thoại" Height="25px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 136px; height: 53px; text-align:center"">
                            <asp:Label ID="lbldiachi" runat="server" Text="Địa chỉ" Height="25px" Width="200px"></asp:Label>
                        </td>
                        <td style="height: 53px">
                            <asp:TextBox ID="txtdiachi" runat="server" Height="25px" Width="250px" TextMode="Password"></asp:TextBox>
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
                    <tr>
                        <td style="width: 136px; height: 46px; text-align:center"">
                            <asp:Label ID="Label19" runat="server" Text="Nội dung"></asp:Label>
                        </td>
                        <td style="height: 46px">
                            <asp:TextBox ID="txtnoidung" runat="server" TextMode="MultiLine" Height="25px" Width="250px" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Gửi đi" BackColor="#993333" Font-Bold="True" ForeColor="White" Height="35px" Width="100px" />
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
