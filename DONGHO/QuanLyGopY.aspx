<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyGopY.aspx.cs" Inherits="DONGHO.QuanLyGopY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý góp ý"></asp:Label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="HOTEN" HeaderText="HOTEN" SortExpression="HOTEN" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
            <asp:BoundField DataField="GMAIL" HeaderText="GMAIL" SortExpression="GMAIL" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="IDTK" HeaderText="IDTK" SortExpression="IDTK" />
            <asp:CommandField ShowDeleteButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [GOPYHOIDAP] WHERE [ID] = @ID" InsertCommand="INSERT INTO [GOPYHOIDAP] ([HOTEN], [SDT], [DIACHI], [GMAIL], [NOIDUNG], [IDTK]) VALUES (@HOTEN, @SDT, @DIACHI, @GMAIL, @NOIDUNG, @IDTK)" SelectCommand="SELECT * FROM [GOPYHOIDAP]" UpdateCommand="UPDATE [GOPYHOIDAP] SET [HOTEN] = @HOTEN, [SDT] = @SDT, [DIACHI] = @DIACHI, [GMAIL] = @GMAIL, [NOIDUNG] = @NOIDUNG, [IDTK] = @IDTK WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HOTEN" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="GMAIL" Type="String" />
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter Name="IDTK" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HOTEN" Type="String" />
            <asp:Parameter Name="SDT" Type="Int32" />
            <asp:Parameter Name="DIACHI" Type="String" />
            <asp:Parameter Name="GMAIL" Type="String" />
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter Name="IDTK" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDsgopy" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [GOPYHOIDAP]"></asp:SqlDataSource>
</asp:Content>
