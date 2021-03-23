<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyHangSX.aspx.cs" Inherits="DONGHO.QuanLyHangSX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý hãng sản xuất"></asp:Label>
    </h1>
    <asp:GridView ID="grvHangSX" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDsHangSX" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TENHSX" HeaderText="TENHSX" SortExpression="TENHSX" />
            <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
            <asp:BoundField DataField="THONGTIN" HeaderText="THONGTIN" SortExpression="THONGTIN" />
            <asp:BoundField DataField="WEBSITE" HeaderText="WEBSITE" SortExpression="WEBSITE" />
             <asp:CommandField ButtonType="Button" CancelText="Bỏ qua" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Tạo mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" CausesValidation="False">
                <ControlStyle BackColor="#0066CC" ForeColor="White" Height="30px" Width="100px" />
             </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDsHangSX" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [HANGSX] WHERE [ID] = @original_ID AND (([TENHSX] = @original_TENHSX) OR ([TENHSX] IS NULL AND @original_TENHSX IS NULL)) AND (([DIACHI] = @original_DIACHI) OR ([DIACHI] IS NULL AND @original_DIACHI IS NULL)) AND (([THONGTIN] = @original_THONGTIN) OR ([THONGTIN] IS NULL AND @original_THONGTIN IS NULL)) AND (([WEBSITE] = @original_WEBSITE) OR ([WEBSITE] IS NULL AND @original_WEBSITE IS NULL))" InsertCommand="INSERT INTO [HANGSX] ([TENHSX], [DIACHI], [THONGTIN], [WEBSITE]) VALUES (@TENHSX, @DIACHI, @THONGTIN, @WEBSITE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HANGSX]" UpdateCommand="UPDATE [HANGSX] SET [TENHSX] = @TENHSX, [DIACHI] = @DIACHI, [THONGTIN] = @THONGTIN, [WEBSITE] = @WEBSITE WHERE [ID] = @original_ID AND (([TENHSX] = @original_TENHSX) OR ([TENHSX] IS NULL AND @original_TENHSX IS NULL)) AND (([DIACHI] = @original_DIACHI) OR ([DIACHI] IS NULL AND @original_DIACHI IS NULL)) AND (([THONGTIN] = @original_THONGTIN) OR ([THONGTIN] IS NULL AND @original_THONGTIN IS NULL)) AND (([WEBSITE] = @original_WEBSITE) OR ([WEBSITE] IS NULL AND @original_WEBSITE IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_TENHSX" Type="String" />
            <asp:Parameter Name="original_DIACHI" Type="String" />
            <asp:Parameter Name="original_THONGTIN" Type="String" />
            <asp:Parameter Name="original_WEBSITE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENHSX" Type="String" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="THONGTIN" Type="String" />
            <asp:Parameter Name="WEBSITE" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENHSX" Type="String" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="THONGTIN" Type="String" />
            <asp:Parameter Name="WEBSITE" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_TENHSX" Type="String" />
            <asp:Parameter Name="original_DIACHI" Type="String" />
            <asp:Parameter Name="original_THONGTIN" Type="String" />
            <asp:Parameter Name="original_WEBSITE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <table style="border-style: double; border-color: inherit; border-width: medium; width: 500px;">
        <tr>
            <td>
                <asp:TextBox ID="txtTENHSX" runat="server" placeholder="Nhập tên hãng sản xuất"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtDIACHI" runat="server" placeholder="Nhập địa chỉ"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtTHONGTIN" runat="server" placeholder="Nhập thông tin"></asp:TextBox>
                <br />            
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtWEBSITE" runat="server" placeholder="Nhập website"></asp:TextBox>
                <br />                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" BackColor="#993333" Font-Bold="True" ForeColor="White" Height="35px" OnClick="btnthem_Click" Text="Thêm hãng sx" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
