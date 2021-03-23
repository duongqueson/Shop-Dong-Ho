<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="DatMua.aspx.cs" Inherits="DONGHO.DatMua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style1" style="width: 100%">
            <tr>
                <td style="height: 50px; width: 35%; padding-left:80px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="THÔNG TIN THANH TOÁN"></asp:Label>
                </td>
                <td style="height: 50px; width: 65%; text-align: center">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="THÔNG TIN ĐƠN HÀNG"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="2">
                    <table class="auto-style1" style="width: 70%; border-style: double; margin-left: 20px">                  
                        <tr>
                            <td style=" padding-left:30px">
                                <asp:TextBox ID="txtnguoinhan" runat="server" Width="250px" Height="25px" placeholder="Nhập tên người nhận"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style=" padding-left:30px">
                                <asp:TextBox ID="txtsdt" runat="server" Width="250px" Height="25px" placeholder="Nhập số điện thoại"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style=" padding-left:30px">
                                <asp:TextBox ID="txtdiachi" runat="server" Width="250px" Height="55px" TextMode="MultiLine" placeholder="Nhập địa chỉ người nhận"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style=" padding-left:30px">
                                <asp:TextBox ID="txtemail" runat="server" Width="250px" Height="25px" placeholder="Nhập email người nhận"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <div style="text-align:center">
                        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="800px" Height="80px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                            <asp:TemplateField HeaderText="Tên sản phẩm">
                                <ItemTemplate>
                                    <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" />
                            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                            <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                        </Columns>
                        <EditRowStyle HorizontalAlign="Center" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    </div>
                    

                    <br />
                    <asp:Label ID="lblTongTien" runat="server" Font-Bold="True"></asp:Label>
                    VNĐ<br />
                    <br />
                    <asp:Label ID="Label21" runat="server" Text="Hình thức thanh toán:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td style="height: 36px">
                                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" Text="  Thanh toán bằng tiền mặt" OnCheckedChanged="RadioButton1_CheckedChanged" />
                            </td>
                            <td style="height: 36px">
                                <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="Thanh toán bằng tài khoản ngân hàng"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 45px"></td>
                            <td style="height: 45px">
                                <asp:Label ID="Label26" runat="server" Text="Ngân hàng"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlbank" runat="server" Height="30px" Width="200px" AutoPostBack="True">
                                    <asp:ListItem>Vietcombank</asp:ListItem>
                                    <asp:ListItem>Agribank</asp:ListItem>
                                    <asp:ListItem>Viettinbank</asp:ListItem>
                                    <asp:ListItem>Saccombank</asp:ListItem>
                                    <asp:ListItem>Techcombank</asp:ListItem>
                                    <asp:ListItem>BIDV</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="Số tài khoản"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="txtsotk" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="btnDatHang" runat="server" Text="Đặt hàng" BackColor="#006666" Font-Bold="True" ForeColor="White" Height="40px" Width="100px" OnClick="btnDatHang_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblThongBao" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 36px; width: 322px;">&nbsp;</td>
                <td style="height: 36px">

                    <br />
                    <asp:SqlDataSource ID="sqlDsDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [DONHANG] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DONHANG] ([NGUOINHAN], [DIACHI], [SDT], [EMAIL], [TONGTIEN], [IDTK]) VALUES (@NGUOINHAN, @DIACHI,  @SDT,@EMAIL, @TONGTIEN, @IDTK);SELECT @ID = SCOPE_IDENTITY()" SelectCommand="SELECT * FROM [DONHANG]" UpdateCommand="UPDATE [DONHANG] SET [NGUOINHAN] = @NGUOINHAN,  [SDT] = @SDT, [DIACHI] = @DIACHI, [EMAIL]=@EMAIL,[TONGTIEN] = @TONGTIEN, [IDTK] = @IDTK WHERE [ID] = @ID" OnInserted="sqlDsDonHang_Inserted">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Direction="Output" Type="Int32" DefaultValue="0" />
                            <asp:Parameter Name="NGUOINHAN" Type="String" />
                            <asp:Parameter Name="SDT" Type="Int32" />
                            <asp:Parameter Name="DIACHI" Type="String" />                                                 
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="TONGTIEN" Type="Int32" />
                            <asp:Parameter Name="IDTK" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NGUOINHAN" Type="String" />
                            <asp:Parameter Name="SDT" Type="Int32" />
                            <asp:Parameter Name="DIACHI" Type="String" />                           
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="TONGTIEN" Type="Int32" />
                            <asp:Parameter Name="IDTK" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sqlDsChiTietDH" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [CHITIETDONHANG] WHERE [IDDONHANG] = @IDDONHANG AND [IDSANPHAM] = @IDSANPHAM" InsertCommand="INSERT INTO [CHITIETDONHANG] ([MaDH], [MaSP], [SOLUONG]) VALUES (@MaDH, @MaSP, @SOLUONG)" SelectCommand="SELECT * FROM [CHITIETDONHANG]" UpdateCommand="UPDATE [CHITIETDONHANG] SET [SOLUONG] = @SOLUONG WHERE [IDDONHANG] = @IDDONHANG AND [IDSANPHAM] = @IDSANPHAM">
                        <DeleteParameters>
                            <asp:Parameter Name="MaDH" Type="Int32" />
                            <asp:Parameter Name="MaSP" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="MaDH" Type="Int32" />
                            <asp:Parameter Name="MaSP" Type="Int32" />
                            <asp:Parameter Name="SoLuong" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="MaDH" Type="Int32" />
                            <asp:Parameter Name="MaSP" Type="Int32" />
                            <asp:Parameter Name="SoLuong" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
        <br />
    <p>
    </p>
    <p>
    </p>
</asp:Content>
