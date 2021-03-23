<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageItems.Master" AutoEventWireup="true" CodeBehind="TimKiemDongHo.aspx.cs" Inherits="DONGHO.TimKiemDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="CSS/stylehome.css" type="text/css" />
    <h3>Kết quả tìm kiếm</h3>
    <p>&nbsp;</p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatColumns="5">
            <ItemTemplate>
                <div class="containerProduct">
                    <figure>
                    <a href='<%#String.Format("ChiTietDongHo.aspx?ID={0}",Eval("ID")) %>'>
                        <asp:Image ID="Image2" runat="server" Height="209px" ImageUrl='<%# Eval("HINHANH", "~/image/{0}") %>' Width="216px" />
                        <b>
                            <p>
                                <asp:Label ID="Label1" runat="server" Height="50px" Text='<%# Eval("TENSP") %>' Width="200px" />
                            </p>
                        </b>
                        <p>
                            <b>Giá: </b>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' />
                            VND
                        </p>
                        <br />
                        <div class="button">
                            <p>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ID", "~/ChiTietDongHo.aspx?ID={0}") %>' ForeColor="White">Chi tiết đồng hồ</asp:HyperLink>
                            </p>
                        </div>
                    </a>
                        <br />
                        </figure>
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT ID, TENSP, SOLUONG, DONGIA, XUATXU, BAOHANH, KIEUDANG, NANGLUONG, DUONGKINHMAT, HINHANH, IDHANGSX, IDDANHMUC FROM SANPHAM WHERE (TENSP LIKE '%' + @Param1 + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="Param1" QueryStringField="TENSP" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
