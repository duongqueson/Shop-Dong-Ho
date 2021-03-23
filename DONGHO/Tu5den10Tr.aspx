<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageItems.Master" AutoEventWireup="true" CodeBehind="Tu5den10Tr.aspx.cs" Inherits="DONGHO.Tu5den10Tr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="CSS/stylehome.css" type="text/css" />
    <style>
        #ContentPlaceHolder1 {
            height: 1000px;
        }
    </style>
    <div class="datalist">
        <asp:DataList ID="dtlDuoi2" runat="server" DataKeyField="ID" DataSourceID="SqlDsGiaDuoi2" RepeatColumns="3">
            <ItemTemplate>
                <div class="containerProduct">
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
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl='<%# Eval("ID", "~/ChiTietDongHo.aspx?ID={0}") %>'>Chi tiết đồng hồ</asp:HyperLink>
                            </p>
                        </div>
                    </a>
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDsGiaDuoi2" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE (([DonGia] &lt;= @DonGia2) AND ([DonGia] &gt;= @DonGia))">
        <SelectParameters>
            <asp:Parameter DefaultValue="10000000" Name="DonGia2" Type="Int32" />
            <asp:Parameter DefaultValue="5000000" Name="DonGia" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
