<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="DONGHO.QuanLyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý tài khoản"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TAIKHOAN" HeaderText="TAIKHOAN" SortExpression="TAIKHOAN" />
                <asp:BoundField DataField="MATKHAU" HeaderText="MATKHAU" SortExpression="MATKHAU" />
                <asp:BoundField DataField="HOTEN" HeaderText="HOTEN" SortExpression="HOTEN" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                <asp:BoundField DataField="GMAIL" HeaderText="GMAIL" SortExpression="GMAIL" />
                <asp:BoundField DataField="QUYEN" HeaderText="QUYEN" SortExpression="QUYEN" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [TAIKHOAN] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TAIKHOAN] ([TAIKHOAN], [MATKHAU], [HOTEN], [SDT], [DIACHI], [GMAIL], [QUYEN]) VALUES (@TAIKHOAN, @MATKHAU, @HOTEN, @SDT, @DIACHI, @GMAIL, @QUYEN)" SelectCommand="SELECT * FROM [TAIKHOAN]" UpdateCommand="UPDATE [TAIKHOAN] SET [TAIKHOAN] = @TAIKHOAN, [MATKHAU] = @MATKHAU, [HOTEN] = @HOTEN, [SDT] = @SDT, [DIACHI] = @DIACHI, [GMAIL] = @GMAIL, [QUYEN] = @QUYEN WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TAIKHOAN" Type="String" />
                <asp:Parameter Name="MATKHAU" Type="String" />
                <asp:Parameter Name="HOTEN" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="GMAIL" Type="String" />
                <asp:Parameter Name="QUYEN" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TAIKHOAN" Type="String" />
                <asp:Parameter Name="MATKHAU" Type="String" />
                <asp:Parameter Name="HOTEN" Type="String" />
                <asp:Parameter Name="SDT" Type="Int32" />
                <asp:Parameter Name="DIACHI" Type="String" />
                <asp:Parameter Name="GMAIL" Type="String" />
                <asp:Parameter Name="QUYEN" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDstaikhoan" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [TAIKHOAN]"></asp:SqlDataSource>
    </h1>
</asp:Content>
