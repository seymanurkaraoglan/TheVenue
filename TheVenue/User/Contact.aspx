<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TheVenue.User.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/contact.css">
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/contact_responsive.css">
        <script src="../TemplateFiles/js/contact.js"></script>
    </header>
    <%--Hamburger--%>

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

    <%--Home--%>

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/contact.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue</div>
                            <div class="home_title">
                                <h1>İletişim</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />

    <%-- Contact --%>

    <div class="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact_title">İletişim Bilgisi</div>
                    <div class="contact_text">
                        <p>Sayfasının sağ tarafında açık adresimizi,mail adresimizive telefon numaramızı bulabilirsiniz.</p>
                    </div>
                    <div class="contact_logo_container">
                        <div class="contact_logo_title">The Venue</div>
                        <div class="contact_logo_subtitle">restaurant</div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6">
                    <div class="contact_list_container d-flex flex-column align-items-lg-center justify-content-start">
                        <div class="contact_list_content">
                            <ul class="contact_list">
                                <li class="d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div>Address</div>
                                    </div>
                                    <div>1481 Lale Sokak , Kadıköy No 5-A </div>
                                </li>
                                <li class="d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div>Telefon</div>
                                    </div>
                                    <div>+53 345 7953 324</div>
                                </li>
                                <li class="d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div>E-mail</div>
                                    </div>
                                    <div>mailiniz@gmail.com</div>
                                </li>
                            </ul>
                            <div class="contact_social">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row google_map_row">
                <div class="col">

                    <!-- Contact Map -->

                    <div class="contact_map">

                        <!-- Google Map -->

                        <%--<div class="map">
								<div id="google_map" class="google_map">
									<div class="map_container">
										<div id="map"></div>
									</div>
								</div>
							</div>--%>
                        <div class="google-map" style="left: 5px;width:800px;">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.212280250873!2d2.330415915056694!3d48.85416230895944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e671d781fb9dab%3A0x18bba6dd45e173ff!2sCaf%C3%A9%20de%20Flore!5e0!3m2!1str!2str!4v1675964548595!5m2!1str!2str" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    <br />

</asp:Content>
