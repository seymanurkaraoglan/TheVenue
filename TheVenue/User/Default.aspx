<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheVenue.User.WDefault" %>

<%@ Import Namespace="TheVenue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hamburger -->

    <div class="hamburger_bar trans_400 d-flex flex-row align-items-center justify-content-start">
        <div class="hamburger">
            <div class="menu_toggle d-flex flex-row align-items-center justify-content-start">
                <span>menu</span>
                <div class="hamburger_container">
                    <div class="menu_hamburger">
                        <div class="line_1 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                        <div class="line_2 hamburger_lines" style="visibility: inherit; opacity: 1;"></div>
                        <div class="line_3 hamburger_lines" style="transform: matrix(1, 0, 0, 1, 0, 0);"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Home -->
    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/home.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue </div>
                            <div class="home_title">
                                <h1>Olağanüstü bir deneyim</h1>
                            </div>
                            <div class="home_text ml-auto mr-auto">
                                <p style="text-align: center">Aradığınız lezzet ve keyifi bulacaksınız</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scroll_icon"></div>
    </div>


    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="align-self-end">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="row">
                <div class="col">
                    <div class="intro_content">
                        <div class="intro_subtitle page_subtitle">Yeni Seyler</div>
                        <div class="intro_title">
                            <h2>Özen Gösteriyoruz</h2>
                        </div>
                        <div class="intro_text">
                            <p>Şeflerimiz menümüzdeki tüm ürünlerin malzemelerini tek tek ve özenle seçmekte ve aynı hassasiyette işlemektedir.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4 col-md-6 intro_col">
                            <div class="intro_image">
                                <img src="../TemplateFiles/images/intro_1.jpg" alt="https://unsplash.com/@quanle2819">
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 intro_col">
                            <div class="intro_image">
                                <img src="../TemplateFiles/images/intro_2.jpg" alt="https://unsplash.com/@fabmag">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Video -->

    <div class="video_section">
        <div class="background_image" style="background-image: url(../TemplateFiles/images/video.jpg)"></div>
        <div class="video_section_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="video_section_title">Ruhunuz için gıda</div>
            <div class="video_section_icon"><a class="vimeo video_button" href="https://player.vimeo.com/video/99340873?autoplay=1&loop=1&title=0&autopause=0"><i class="fa fa-play" aria-hidden="true"></i></a></div>
        </div>
    </div>


    <!-- Signature Dish -->

    <div class="sig">
        <div class="sig_content_container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="sig_content">
                            <div class="sig_subtitle page_subtitle">Imza Tatlımız</div>
                            <div class="sig_title">
                                <h1></h1>
                            </div>
                            <div class="rating_r sig_rating rating_r_5"><i></i><i></i><i></i><i></i><i></i></div>
                            <div class="sig_name_container d-flex flex-row align-items-start justify-content-start">
                                <div class="sig_name">Pavlova</div>
                                &nbsp;
                                <div class="sig_price ml-auto">70TL</div>
                            </div>
                            <div class="sig_content_list">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li>Tatlılar</li>
                                    <li>Çilek</li>
                                </ul>
                            </div>
                            <%-- onitemcommand ekleyip dbye insert edip sayfa carta yönlendirilmeli. --%>
                            <asp:LinkButton runat="server" ID="lbAddToCart" href="Menu.aspx" CommandName="addToCart" CommandArgument='<%# Eval("ProductId") %>'>
                                                       Şimdi Al
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sig_image_container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 offset-lg-5">
                        <div class="sig_image">
                            <div class="background_image" style="background-image: url(../TemplateFiles/images/pavlova.jpg)"></div>
                            <img src="../TemplateFiles/images/pavlova.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-2">
                <div class="sig_content" style="width: 850px;">
                    <%-- Kategoriler arasına boşluk eklenecek --%>
                    <asp:DataList ID="rCategory" runat="server" RepeatDirection="Vertical" RepeatColumns="3" CellPadding="5" CellSpacing="10">
                        <ItemTemplate>
                            <div class="col-5">
                                <div class="img-box">
                                    <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="" width="250" height="250">
                                    <br />
                                </div>

                                <div class="col-10">
                                    <br />
                                    <div class="sig_subtitle page_subtitle">Ürünler</div>
                                    <div class="sig_title">
                                        <h1><%# Eval("Name") %></h1>
                                    </div>
                                    <%--<div class="rating_r sig_rating rating_r_5"><i></i><i></i><i></i><i></i><i></i></div>--%>
                                    <%-- Kategori açıklaması yapılacak. --%>
                                    <%--<div class="sig_name_container d-flex flex-row align-items-start justify-content-start">
                                        <div class="sig_name">Pork Tenderloin marinated in Green Pepper</div>
                                        <div class="sig_price ml-auto">$20</div>
                                    </div>--%>
                                    <div class="button sig_button trans_200"><a href="Menu.aspx">Şimdi Al</a></div>
                                </div>

                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>


