<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DONGHO.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="CSS/stylehome.css"/>
    <div class="containt">
        <div class="slide">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="image/QCDH1.JPG" class="d-block w-100" alt="slide 1" width="500">
                    </div>
                    <div class="carousel-item">
                        <img src="image/QCDH2.JPG" class="d-block w-100" alt="slide 2" width="500" height="628">
                    </div>                                      
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div>
        </div>
        <br />
        <br />
        <div class="product">
            <h1>
                <asp:label id="lbTenDanhMuc" runat="server" text="Sản phẩm nổi bật" forecolor="White"></asp:label>
            </h1>
            <div>
                <div class="datalist">
                    <asp:datalist id="DataList1" runat="server" datakeyfield="ID" repeatcolumns="5" datasourceid="SqlDsSPNoiBat">
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
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' />VND
                                </p>
                                <div class="button">
                                    <p>
                                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl='<%# Eval("ID", "~/ChiTietDongHo.aspx?ID={0}") %>'>Chi tiết đồng hồ</asp:HyperLink>
                                    </p>
                                </div>
                                </a>
                                <br />
							</div>
                        </ItemTemplate>
                    </asp:datalist>
                </div>
                <div>
                    <asp:sqldatasource id="SqlDsSPNoiBat" runat="server" connectionstring="<%$ ConnectionStrings:DONGHOConnectionString %>" selectcommand="SELECT * FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="IDDANHMUC" QueryStringField="IDDANHMUC" Type="Int32" />
                        </SelectParameters>         
                    </asp:sqldatasource>
                </div>
            </div>
        </div>
        <div class="product">
            <h1>
                <asp:label id="Label3" runat="server" text="Đồng hồ cặp đôi" forecolor="White"></asp:label>
            </h1>
            <div>
                <div class="datalist">
                    <asp:datalist id="DataList2" runat="server" datakeyfield="ID" repeatcolumns="5" datasourceid="SqlDsDongHoCapDoi">
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
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' />VND
                                </p>
                                <div class="button">
                                    <p>
                                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl='<%# Eval("ID", "~/ChiTietDongHo.aspx?ID={0}") %>'>Chi tiết đồng hồ</asp:HyperLink>
                                    </p>
                                </div>
                                </a>
                                <br />
							</div>
                        </ItemTemplate>
                    </asp:datalist>
                </div>
                <div>
                    <asp:sqldatasource id="SqlDsDongHoCapDoi" runat="server" connectionstring="<%$ ConnectionStrings:DONGHOConnectionString %>" selectcommand="SELECT * FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="4" Name="IDDANHMUC" QueryStringField="IDDANHMUC" Type="Int32" />
            </SelectParameters>
           
        </asp:sqldatasource>
                </div>
            </div>
        </div>
        <div class="product">
            <h1>
                <asp:label id="Label4" runat="server" text="Unisex" forecolor="White"></asp:label>
            </h1>
            <div>
                <div class="datalist">
                    <asp:datalist id="DataList3" runat="server" datakeyfield="ID" repeatcolumns="5" datasourceid="SqlDsUnisex">
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
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>' />VND
                                </p>
                                <div class="button">
                                    <p>
                                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl='<%# Eval("ID", "~/ChiTietDongHo.aspx?ID={0}") %>'>Chi tiết đồng hồ</asp:HyperLink>
                                    </p>
                                </div>
                                </a>
                                <br />
							</div>
                        </ItemTemplate>
                    </asp:datalist>
                </div>
                <div>
                    <asp:sqldatasource id="SqlDsUnisex" runat="server" connectionstring="<%$ ConnectionStrings:DONGHOConnectionString %>" selectcommand="SELECT * FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="3" Name="IDDANHMUC" QueryStringField="IDDANHMUC" Type="Int32" />
            </SelectParameters>
           
        </asp:sqldatasource>
                </div>
            </div>
        </div>

        
        
    </div>
</asp:Content>
