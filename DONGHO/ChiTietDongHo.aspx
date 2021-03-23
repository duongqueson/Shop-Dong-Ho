<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageItems.Master" AutoEventWireup="true" CodeBehind="ChiTietDongHo.aspx.cs" Inherits="DONGHO.ChiTietDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="Sqlchitietdongho" Width="100%">
                    <EditItemTemplate>
                        MaSP:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        TENSP:
            <asp:TextBox ID="TenSPTextBox0" runat="server" Text='<%# Bind("TENSP") %>' />
                        <br />
                        SOLUONG:
            <asp:TextBox ID="SOLUONGTextBox0" runat="server" Text='<%# Bind("SOLUONG") %>' />
                        <br />
                        DONGIA:
            <asp:TextBox ID="DONGIATextBox0" runat="server" Text='<%# Bind("DONGIA") %>' />
                        <br />
                        XUATXU:
            <asp:TextBox ID="XUATXUTextBox0" runat="server" Text='<%# Bind("XUATXU") %>' />
                        <br />
                        BAOHANH:
            <asp:TextBox ID="BAOHANHTextBox0" runat="server" Text='<%# Bind("BAOHANH") %>' />
                        <br />
                        KIEUDANG:
            <asp:TextBox ID="KIEUDANGTextBox0" runat="server" Text='<%# Bind("KIEUDANG") %>' />
                        <br />
                        NANGLUONG:
            <asp:TextBox ID="NANGLUONGTextBox0" runat="server" Text='<%# Bind("NANGLUONG") %>' />
                        <br />
                        DUONGKINHMAT:
            <asp:TextBox ID="DUONGKINHMATTextBox0" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                        <br />
                        IDDANHMUC:
            <asp:TextBox ID="IDDANHMUCTextBox0" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        TENSP:
            <asp:TextBox ID="TenSPTextBox0" runat="server" Text='<%# Bind("TENSP") %>' />
                        <br />
                        SOLUONG:
            <asp:TextBox ID="SOLUONGTextBox0" runat="server" Text='<%# Bind("SOLUONG") %>' />
                        <br />
                        DONGIA:
            <asp:TextBox ID="DONGIATextBox0" runat="server" Text='<%# Bind("DONGIA") %>' />
                        <br />
                        XUATXU:
            <asp:TextBox ID="XUATXUTextBox0" runat="server" Text='<%# Bind("XUATXU") %>' />
                        <br />
                        BAOHANH:
            <asp:TextBox ID="BAOHANHTextBox0" runat="server" Text='<%# Bind("BAOHANH") %>' />
                        <br />
                        KIEUDANG:
            <asp:TextBox ID="KIEUDANGTextBox0" runat="server" Text='<%# Bind("KIEUDANG") %>' />
                        <br />
                        NANGLUONG:
            <asp:TextBox ID="NANGLUONGTextBox0" runat="server" Text='<%# Bind("NANGLUONG") %>' />
                        <br />
                        DUONGKINHMAT:
            <asp:TextBox ID="DUONGKINHMATTextBox0" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                        <br />
                        IDDANHMUC:
            <asp:TextBox ID="IDDANHMUCTextBox0" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <style>
                            .tdd {
                                position: relative;
                            }

                            #Image4 {
                                position: absolute;
                                top: 20px;
                            }

                            .btnt:hover {
                                background-color: burlywood;
                            }
                        </style>
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td rowspan="20" class="tdd">
                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("HINHANH", "~/image/{0}") %>' Width="250px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" CssClass="btnt" runat="server" BackColor="#996633" Font-Bold="True" ForeColor="White" Height="38px" OnClick="Button1_Click" Text="Thêm vào giỏ hàng" Width="220px" />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />                                    
                                    <br />
                                </td>

                            </tr>
                            <tr>
                                <td colspan="2" style="font-family: 'Bodoni MT Black'">
                                    <asp:Label ID="TenSPLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text='<%# Bind("TENSP") %>' />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; height: 30px;">Đơn giá</td>
                                <td style="height: 30px">
                                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DONGIA") %>' />
                                    VNĐ</td>
                            </tr>
                            <tr>
                                <td style="width: 174px; height: 30px;">Còn lại</td>
                                <td style="height: 30px">
                                    <asp:Label ID="NamRaMatLabel" runat="server" Text='<%# Bind("SOLUONG") %>' /> Chiếc
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Xuất xứ</td>
                                <td>
                                    <asp:Label ID="XUATXULabel" runat="server" Text='<%# Bind("XUATXU") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Bảo hành</td>
                                <td>
                                    <asp:Label ID="BAOHANHLabel" runat="server" Text='<%# Bind("BAOHANH") %>' />Năm
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Kiểu dáng</td>
                                <td>
                                    <asp:Label ID="KIEUDANGLabel" runat="server" Text='<%# Bind("KIEUDANG") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Năng lượng</td>
                                <td>
                                    <asp:Label ID="NANGLUONGLabel" runat="server" Text='<%# Bind("NANGLUONG") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Đường kính mặt</td>
                                <td>
                                    <asp:Label ID="NhaPhaCheLabel" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                                </td>
                            </tr>                                                                         
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Mã danh mục</td>
                                <td>
                                    <asp:Label ID="IDDANHMUCLabel" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 174px; list-style-type: circle; list-style-position: inside; height: 30px;">Mã danh mục</td>
                                <td>
                                    <asp:Label ID="IDHANGSXLabel" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />

                    </ItemTemplate>
                </asp:FormView>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="Sqlchitietdongho" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
