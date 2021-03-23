<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="QuanLyDongHo.aspx.cs" Inherits="DONGHO.QuanLyDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Quản lý đồng hồ"></asp:Label>
    </h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [SANPHAM]"></asp:SqlDataSource>
    <table class="auto-style1" style="width: 68%">
        <tr>
            <td style="width: 263px"><h4>Chọn sản phẩm đồng hồ</h4> </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TENSP" DataValueField="ID"></asp:DropDownList>            
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="Sqldongho" OnItemCommand="FormView1_ItemCommand" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
        <EditItemTemplate>          
            <table class="auto-style1"style="border: 2px solid black">
                <tr>
                    <td style="width: 124px">Mã sản phẩm</td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TENSPTextBox" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="SOLUONGTextBox" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DONGIATextBox" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="XUATXUTextBox" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="BAOHANHTextBox" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="KIEUDANGTextBox" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="NANGLUONGTextBox" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="DUONGKINHMATTextBox" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="image" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="fileupload" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:TextBox ID="IDHANGSXTextBox" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="IDDANHMUC" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btncapnhat" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btnhuybo" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1"style="border: 2px solid black">                
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TENSPTextBox" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="SOLUONGTextBox1" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DONGIATextBox1" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="XUATXUTextBox1" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="BAOHANHTextBox1" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="KIEUDANGTextBox1" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="NANGLUONGTextBox1" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="DUONGKINHMATTextBox1" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="img" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="uploadfile" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                   
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="TENHSX" DataValueField="ID" SelectedValue='<%# Bind("IDHANGSX") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [HANGSX]"></asp:SqlDataSource>                       
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="TENDM" DataValueField="ID" SelectedValue='<%# Bind("IDDANHMUC") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" SelectCommand="SELECT * FROM [DANHMUC]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btnthem" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm mới" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btnhuybothem" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1" style="border: 2px solid black" >
                <tr>
                    <td style="width: 124px">Mã sản phẩm</td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TENSPTextBox" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="SOLUONGTextBox" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DONGIATextBox" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="XUATXUTextBox" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="BAOHANHTextBox" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="KIEUDANGTextBox" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="NANGLUONGTextBox" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="DUONGKINHMATTextBox" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="image" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="uploadfile" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:TextBox ID="IDHANGSXTextBox" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="IDDANHMUC" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btnsua" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" Font-Bold="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px"  />
            &nbsp;<asp:LinkButton ID="btnxoa" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btntaomoi" runat="server" CausesValidation="False" CommandName="New" Text="Tạo mới" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </ItemTemplate>
        
    </asp:FormView>
    <asp:SqlDataSource ID="Sqldongho" runat="server" ConnectionString="<%$ ConnectionStrings:DONGHOConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [ID] = @ID" InsertCommand="INSERT INTO [SANPHAM] ([TENSP], [SOLUONG], [DONGIA], [XUATXU], [BAOHANH], [KIEUDANG], [NANGLUONG], [DUONGKINHMAT], [HINHANH], [IDHANGSX], [IDDANHMUC]) VALUES (@TENSP, @SOLUONG, @DONGIA, @XUATXU, @BAOHANH, @KIEUDANG, @NANGLUONG, @DUONGKINHMAT, @HINHANH, @IDHANGSX, @IDDANHMUC)" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [SANPHAM] SET [TENSP] = @TENSP, [SOLUONG] = @SOLUONG, [DONGIA] = @DONGIA, [XUATXU] = @XUATXU, [BAOHANH] = @BAOHANH, [KIEUDANG] = @KIEUDANG, [NANGLUONG] = @NANGLUONG, [DUONGKINHMAT] = @DUONGKINHMAT, [HINHANH] = @HINHANH, [IDHANGSX] = @IDHANGSX, [IDDANHMUC] = @IDDANHMUC WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENSP" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="INT32" />
            <asp:Parameter Name="DONGIA" Type="INT32" />
            <asp:Parameter Name="XUATXU" Type="String" />
            <asp:Parameter Name="BAOHANH" Type="String" />
            <asp:Parameter Name="KIEUDANG" Type="String" />
            <asp:Parameter Name="NANGLUONG" Type="String" />
            <asp:Parameter Name="DUONGKINHMAT" Type="String" />
            <asp:Parameter Name="HINHANH" Type="String" />
            <asp:Parameter Name="IDHANGSX" Type="INT32" />
            <asp:Parameter Name="IDDANHMUC" Type="INT32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENSP" Type="String" />
            <asp:Parameter Name="SOLUONG" Type="INT32" />
            <asp:Parameter Name="DONGIA" Type="INT32" />
            <asp:Parameter Name="XUATXU" Type="String" />
            <asp:Parameter Name="BAOHANH" Type="String" />
            <asp:Parameter Name="KIEUDANG" Type="String" />
            <asp:Parameter Name="NANGLUONG" Type="String" />
            <asp:Parameter Name="DUONGKINHMAT" Type="String" />
            <asp:Parameter Name="HINHANH" Type="String" />
            <asp:Parameter Name="IDHANGSX" Type="INT32" />
            <asp:Parameter Name="IDDANHMUC" Type="INT32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="lbthongbao" runat="server" ForeColor="Red"></asp:Label>
    <br />
</asp:Content>



<%--<EditItemTemplate>          
            <table class="auto-style1"style="border: 2px solid black">
                <tr>
                    <td style="width: 124px">Mã sản phẩm</td>
                    <td>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TENSPTextBox" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="SOLUONGTextBox" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="DONGIATextBox" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="XUATXUTextBox" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="BAOHANHTextBox" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="KIEUDANGTextBox" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="NANGLUONGTextBox" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="DUONGKINHMATTextBox" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="image" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="fileupload" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:TextBox ID="IDHANGSXTextBox" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="IDDANHMUC" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btncapnhat" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btnhuybo" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1"style="border: 2px solid black">                
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="image1" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="fileupload1" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btnthem" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm mới" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btnhuybothem" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1" style="border: 2px solid black" >
                <tr>
                    <td style="width: 124px">Mã sản phẩm</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TENSP") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Số lượng</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("SOLUONG") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đơn giá</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("DONGIA") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("XUATXU") %>' />                     
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Bảo hành</td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("BAOHANH") %>' />                      
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("KIEUDANG") %>' />                        
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Năng lượng</td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("NANGLUONG") %>' />                 
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Đường kính mặt</td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("DUONGKINHMAT") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Hình ảnh</td>
                    <td>
                        <asp:Image ID="image2" runat="server" onchange="readURL(this);" Width="50px" />
                        <asp:FileUpload ID="fileupload2" FileName='<%# Bind("HINHANH") %>' runat="server" />
                    </td>
                </tr>                                
                <tr>
                    <td style="width: 124px">Mã hãng sx</td>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("IDHANGSX") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 124px">Mã danh mục</td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("IDDANHMUC") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="btnsua" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" Font-Bold="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px"  />
            &nbsp;<asp:LinkButton ID="btnxoa" runat="server" CausesValidation="False" CommandName="Delete" Text="Xóa" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
            &nbsp;<asp:LinkButton ID="btntaomoi" runat="server" CausesValidation="False" CommandName="New" Text="Tạo mới" BackColor="Maroon" ForeColor="White" Height="20px" Width="100px" />
        </ItemTemplate>--%>