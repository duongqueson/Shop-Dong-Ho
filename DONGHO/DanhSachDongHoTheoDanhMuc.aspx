<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageItems.Master" AutoEventWireup="true" CodeBehind="DanhSachDongHoTheoDanhMuc.aspx.cs" Inherits="DONGHO.DanhSachDongHoTheoDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:SqlDataSource ID="sqlsp" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT [ID], [TENSP], [HINHANH], [DONGIA] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
            <SelectParameters>
                <asp:QueryStringParameter Name="IDDANHMUC" QueryStringField="IDDANHMUC" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
<p>&nbsp;</p>

<div>

    <asp:DataList ID="dlSanPham" runat="server" DataKeyField="ID" DataSourceID="sqlsp" HorizontalAlign="Justify" RepeatDirection="Horizontal" Width="100%" RepeatColumns="3">
        <ItemTemplate>
             <style>
                    .table-item {
                        width: 200px;
                        height:300px;
                        text-align:center;
                        border-radius:15px;
                       
                    }
                    .table-item:hover {
                        transition: 0.3s;
                        border:1px groove #DDDDDD;
                        box-shadow: 3px 5px 2px #BDBDBD;
                    }
                </style>
            <table class="table-item">
                <tr>
                    <td class="auto-style13">
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ID","~/ChiTietDongHo.aspx?ID={0}") %>'>
                           <asp:ImageButton ID="ImageButton2" runat="server" Height="150px" ImageUrl='<%# Eval("HINHANH", "~/image/{0}") %>' Width="150px" />
                       </asp:HyperLink>                      
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TENSP") %>' Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        Gía:
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Eval("DONGIA") %>' />
                        VNĐ</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                         <button class="btnchitiet" style="border-style: groove; background-color: #006666; color: #FFFFFF; height: 40px; width: 100px;"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ID","~/ChiTietDongHo.aspx?ID={0}") %>' ForeColor="White">Xem chi tiết</asp:HyperLink> </button>
                    </td>
                </tr>
            </table>
<br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    
</div>
<p>&nbsp;</p>
<p>
    &nbsp;</p>


</asp:Content>
