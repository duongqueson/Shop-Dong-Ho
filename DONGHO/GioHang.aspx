<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="DONGHO.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <table class="auto-style1">
        <tr>
            <td style="width: 618px; padding-left:100px">
                <div style="text-align:center">
                    <asp:GridView ID="gvgiohang" runat="server" AutoGenerateColumns="False" OnRowCommand="gvgiohang_RowCommand" Width="981px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="80px" >
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                        <asp:TemplateField HeaderText="Tên sản phẩm">
                            <ItemTemplate>
                                <asp:Label ID="lbltenhang" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="DonGia" HeaderText="Giá" />
                        <asp:TemplateField HeaderText="Số lượng">
                            <ItemTemplate>
                                <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                        <asp:ButtonField Text="Cập nhật" ButtonType="Button" CausesValidation="True" >
                        <ControlStyle Height="35px" Width="75px" BackColor="#006666" ForeColor="White" />
                        </asp:ButtonField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        Không có trong giỏ hàng
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                </div>
                
                <br />
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Tổng tiền"></asp:Label>
                :
                <asp:Label ID="lblTongTien" runat="server"></asp:Label>
                VNĐ<br />
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="btntieptuc" runat="server" Text="Tiếp tục mua hàng" OnClick="btntieptuc_Click" Height="50px" BackColor="#993333" Font-Bold="True" ForeColor="White" Width="166px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnXoagiohang" runat="server" Text="Xóa giỏ hàng" OnClick="btnXoagiohang_Click" Height="50px" BackColor="#993333" Font-Bold="True" ForeColor="White" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnthanhtoan" runat="server" Text="Đặt mua" Height="50px" OnClick="btnthanhtoan_Click" BackColor="#993333" ForeColor="White" Width="130px" Font-Bold="True" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
