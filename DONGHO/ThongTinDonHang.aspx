<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageItems.Master" AutoEventWireup="true" CodeBehind="ThongTinDonHang.aspx.cs" Inherits="DONGHO.ThongTinDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="sqldsdonhang" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT [ID], [NGUOINHAN], [SDT], [DIACHI], [EMAIL], [TONGTIEN] FROM [DONHANG] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqldschitiet" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [CHITIETDONHANG] WHERE ([MaDH] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <table class="auto-style1">
            <tr>
                <td style=" height: 69px;">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" Text="THÔNG TIN ĐƠN HÀNG"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="sqldsdonhang" Height="245px" Width="355px" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="ID" HeaderText="Mã đơn hàng" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="NGUOINHAN" HeaderText="Người nhận" SortExpression="NGUOINHAN" />
                                <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" SortExpression="SDT" />
                                <asp:BoundField DataField="DIACHI" HeaderText="Địa chỉ" SortExpression="DIACHI" />
                                <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />                                
                                <asp:BoundField DataField="TONGTIEN" HeaderText="Tổng tiền" SortExpression="TONGTIEN" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />
                        </asp:DetailsView>
                    </div>

                </td>
            </tr>
            <tr>
                <td height: 37px;">
                    <br />
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Các mặt hàng đã đặt"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MaDH,MaSP" DataSourceID="sqldschitiet" Width="354px" Height="70px">
                            <Columns>
                                <asp:BoundField DataField="MaDH" HeaderText="Mã đơn hàng" ReadOnly="True" SortExpression="MaDH" />
                                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSP" />
                                <asp:BoundField DataField="SOLUONG" HeaderText="Số lượng" SortExpression="SOLUONG" />
                            </Columns>
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

                </td>
            </tr>
            <tr>
                <td style="height: 73px;">
                    <asp:Button ID="Button1" runat="server" BackColor="#006666" Font-Bold="True" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="Tiếp tục mua hàng" />
                </td>
            </tr>
        </table>
</asp:Content>
