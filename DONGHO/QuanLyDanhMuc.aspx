<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMuc.aspx.cs" Inherits="DONGHO.QuanLyDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý danh mục"></asp:Label>
    </h1>
    <p>
        <asp:GridView ID="grvDanhMuc" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDsDanhMucDongHo" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="658px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Mã danh mục" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TENDM" HeaderText="Tên danh mục" SortExpression="TENDM" />
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
        <asp:SqlDataSource ID="SqlDsDanhMucDongHo" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [DANHMUC] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DANHMUC] ([TENDM]) VALUES (@TENDM)"  SelectCommand="SELECT * FROM [DANHMUC]" UpdateCommand="UPDATE [DANHMUC] SET [TENDM] = @TENDM WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TENDM" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENDM" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table style="width: 78%">
        <tr>
            <td>
        <asp:Label ID="Label2" runat="server" Text="Thêm mới danh mục" Font-Bold="True" Font-Size="Large"></asp:Label>
        
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
        
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Tên danh mục"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTenDM" runat="server" Height="35px" Width="300px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdd" runat="server" Height="35px" OnClick="btnAdd_Click" Text="Thêm mới" Width="115px" BackColor="#009999" ForeColor="White" />
            </td>
        </tr>
        
        <tr>
            <td>
    <asp:Label ID="lbError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>

</asp:Content>
