<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="TheVenue.User.Menu" %>

<%@ Import Namespace="TheVenue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/menu.css">
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/menu_responsive.css">
        <script src="../TemplateFiles/js/menu.js"></script>
    </header>
    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/menu.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue</div>
                            <div class="home_title">
                                <h1>Menü</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- The Menu -->
    <div>
    </div>
        <div class="themenu">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container text-center">
                        <div class="section_subtitle page_subtitle" style="font-size: 80px;">___________</div>
                        <div class="section_title">
                            <div class="align-self-end">
                                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                            </div>
                            <h1>Menümüzü Keşfedin</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row themenu_text_row">
                <div class="col-lg-6">
                    <div class="themenu_text">
                        <p>Menüde bulununa ürünlerin tamamı el yapımıdır. Malzemeler şefler tarafından seçilmiş ve özenle muhafaza edilmiştir.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="themenu_text">
                        <p>Tüm ürünlerimiz günlük hatta kullanıcıya özel olarak çıkar. Ürünlerimizi istediğiniz gibi değiştirebilirsiniz. Hatta özel rezervasyon ile ürünü diyetinize uygun olarak değiştirtebilirsiniz.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- The Menu -->

    <div class="themenu">
        <div class="container">
            <div class="row themenu_row">

                <!-- Cookies -->
                <div class="col-lg-4 themenu_column">
                    <div class="themenu_image">
                        <img src="../TemplateFiles/images/startes.jpg" alt="">
                    </div>
                    <div class="themenu_col trans_400">
                        <div class="themenu_col_title">KURABİYELER</div>
                        <div class="dish_list">
                            <asp:DataList ID="rCookies" runat="server" RepeatDirection="Vertical" RepeatColumns="1" CellPadding="5" CellSpacing="10" OnItemCommand="rProducts_ItemCommand">
                                <ItemTemplate>
                                    <div class="col-10">
                                        <div class="img-box">
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="">
                                            <br />
                                        </div>
                                        <div class="sig_subtitle page_subtitle" style="font-size: 60px;"><%# Eval("CategoryName").ToString().ToLower() %></div>
                                        <div class="sig_title">
                                            <h1><%# Eval("Name") %></h1>
                                        </div>
                                        <div class="rating_r sig_rating rating_r_5"><i></i><i></i><i></i><i></i><i></i></div>
                                        <div class="sig_name_container d-flex flex-row align-items-start justify-content-start">
                                            <div class="sig_name"><%# Eval("Description") %></div>
                                        </div>
                                        <div class="sig_content_list">
                                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                               
                                            </ul>
                                        </div>
                                        <div class="sig_price">$<%# Eval("Price") %></div>
                                        <asp:LinkButton runat="server" ID="lbAddToCart" CommandName="addToCart" CommandArgument='<%# Eval("ProductId") %>'>
                                                        Şimdi Al
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
                
                <!-- Coffees -->
                <div class="col-lg-4 themenu_column">
                    <div class="themenu_image">
                        <img src="../TemplateFiles/images/mainn.jpg" alt="">
                    </div>
                    <div class="themenu_col trans_400">
                        <div class="themenu_col_title">KAHVELER</div>
                        <div class="dish_list">
                            <asp:DataList ID="rCoffees" runat="server" RepeatDirection="Vertical" RepeatColumns="1" CellPadding="5" CellSpacing="10" OnItemCommand="rProducts_ItemCommand">
                                <ItemTemplate>
                                    <div class="col-10">
                                        <div class="img-box">
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="">
                                            <br />
                                        </div>
                                        <div class="sig_subtitle page_subtitle" style="font-size: 60px;"><%# Eval("CategoryName").ToString().ToLower() %></div>
                                        <div class="sig_title">
                                            <h1><%# Eval("Name") %></h1>
                                        </div>
                                        <div class="rating_r sig_rating rating_r_5"><i></i><i></i><i></i><i></i><i></i></div>
                                        <div class="sig_name_container d-flex flex-row align-items-start justify-content-start">
                                            <div class="sig_name"><%# Eval("Description") %></div>
                                        </div>
                                        <div class="sig_content_list">
                                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                                
                                            </ul>
                                        </div>
                                        <div class="sig_price">$<%# Eval("Price") %></div>
                                        <asp:LinkButton runat="server" ID="lbAddToCart" CommandName="addToCart" CommandArgument='<%# Eval("ProductId") %>'>
                                                        Şimdi Al
                                        </asp:LinkButton>
                                    </div>
                                    <div>
                                        <br>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>

                <!-- Deserts -->
                <div class="col-lg-4 themenu_column">
                    <div class="themenu_image">
                        <img src="../TemplateFiles/images/tatlı.jpg" alt="">
                    </div>
                    <div class="themenu_col trans_400">
                        <div class="themenu_col_title">TATLILAR</div>
                        <div class="dish_list">
                            <asp:DataList ID="rDesserts" runat="server" RepeatDirection="Vertical" RepeatColumns="1" CellPadding="5" CellSpacing="10" OnItemCommand="rProducts_ItemCommand">
                                <ItemTemplate>
                                    <div class="col-10">
                                        <div class="img-box">
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="">
                                            <br />
                                        </div>
                                        <div class="sig_subtitle page_subtitle" style="font-size: 60px;"><%# Eval("CategoryName").ToString().ToLower() %></div>
                                        <div class="sig_title">
                                            <h1><%# Eval("Name") %></h1>
                                        </div>
                                        <div class="rating_r sig_rating rating_r_5"><i></i><i></i><i></i><i></i><i></i></div>
                                        <div class="sig_name_container d-flex flex-row align-items-start justify-content-start">
                                            <div class="sig_name"><%# Eval("Description") %></div>
                                        </div>
                                        <div class="sig_content_list">
                                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                            </ul>
                                        </div>
                                        <div class="sig_price">$<%# Eval("Price") %></div>
                                        <asp:LinkButton runat="server" ID="lbAddToCart" CommandName="addToCart" CommandArgument='<%# Eval("ProductId") %>'>
                                                        Şimdi Al
                                        </asp:LinkButton>
                                    </div>
                                    <div>
                                        <br>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



