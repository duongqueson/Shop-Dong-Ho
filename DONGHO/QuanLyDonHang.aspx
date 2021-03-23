<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyDonHang.aspx.cs" Inherits="DONGHO.QuanLyDonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý đơn hàng"></asp:Label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDsdonhang" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NGUOINHAN" HeaderText="NGUOINHAN" SortExpression="NGUOINHAN" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:BoundField DataField="TONGTIEN" HeaderText="TONGTIEN" SortExpression="TONGTIEN" />
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

    <asp:SqlDataSource ID="SqlDsdonhang" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DONHANG] ([NGUOINHAN], [SDT], [DIACHI], [EMAIL], [TONGTIEN]) VALUES (@NGUOINHAN, @SDT, @DIACHI, @EMAIL, @TONGTIEN)" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [NGUOINHAN] = @NGUOINHAN, [SDT] = @SDT, [DIACHI] = @DIACHI, [EMAIL] = @EMAIL, [TONGTIEN] = @TONGTIEN WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NGUOINHAN" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TONGTIEN" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NGUOINHAN" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TONGTIEN" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
