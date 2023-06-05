<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="TheVenue.User.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <script src="../TemplateFiles/js/jquery-3.2.1.min.js"></script>
        <script src="../TemplateFiles/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="../TemplateFiles/js/about.js"></script>
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/about.css">
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/about_responsive.css">
    </header>
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
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/about.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue </div>
                            <div class="home_title">
                                <h1>Hakkımızda</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="intro_content">
                        <div class="intro_subtitle page_subtitle">Hakkımızda</div>
                        <div class="intro_title">
                            <h2>Tarihçe</h2>
                        </div>
                        <div class="intro_text">
                            <p>1960'dan beri sürdürdüğümüz aile geleneğini daha üst seviyelere taşıyarak modernleştirdik ve günümüze uyarladık.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="intro_image">
                                <img src="../TemplateFiles/images/about_intro.jpg" alt="https://unsplash.com/@quanle2819">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Chefs -->

    <div class="chefs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container">
                        <div class="section_subtitle page_subtitle">The Venue</div>
                        <div class="section_title">
                            <h1>Şeflerimizle Tanışın</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row chefs_text_row">
                <div class="col-lg-6">
                    <div class="chefs_text">
                        <p>
                            Şeflerimiz dünyanın şeçili şefleridir. İşlerini tutkuyla yapan kişiler seçilmiştir. Maria Smith,singapurlu bir sanatçı, çikolatacı, şef ve girişimcidir. Restoranlara, tatlı barlarına ve perakende girişimlerine ek olarak, yenilebilir sanat enstalasyonlarıyla tanınır.S.Pellegrino sponsorluğunda Dünyanın en iyi 50 Restoranı ödülü ile iki yıl üst üste "Asya'nın en iyi Pasta Şefi" seçilmek de dahil olmak üzere birçok ödül kazanmıştır.
                            William Jones,2014 yılında Restaurant magazine'den "Dünyanın en iyi Pasta Şefi" ödülünü kazanmıştır.
                        </p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="chefs_text">
                        <p>
                            Julien Williams,Haziran 2019'da,Dünyanın en iyi 50 Restoranı sıralamasında "Dünyanın en iyi Pasta Şefi 2019" unvanını alan ilk kadındır. Aynı yılın Kasım ayında Gault & Millau3'ün 50. baskısında "yılın pasta şefi" ödülüne layık görüldü.
                            Amaury James,Guichon , 2013'te Bir sonraki harika pasta şefi kim olacak? serisinde yarışmacıydı  Guichon yarışmada üçüncü oldu. Daha sonra Amerika'da bir pastacılık okulu kurup eğitim vermeye başladı.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row chefs_row row-eq-height">

                <!-- Chef -->
                <div class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
                    <div class="chef">
                        <div class="chef_image">
                            <img src="../TemplateFiles/images/chef1.jpg" alt="">
                        </div>
                        <div class="chef_content text-center">
                            <div class="chef_name">Maria Smith</div>
                            <div class="chef_subtitle">Baş Şef</div>
                            <div class="chef_button ml-auto mr-auto trans_400"><a href="#">daha fazlası</a></div>
                        </div>
                    </div>
                </div>
                
                <!-- Chef -->
                <div class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
                    <div class="chef">
                        <div class="chef_image">
                            <img src="../TemplateFiles/images/chef2.jpg" alt="">
                        </div>
                        <div class="chef_content text-center">
                            <div class="chef_name">William Jones</div>
                            <div class="chef_subtitle">Tatlı Şefi</div>
                            <div class="chef_button ml-auto mr-auto trans_400"><a href="#">daha fazlası</a></div>
                        </div>
                    </div>
                </div>

                <!-- Chef -->
                <div class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
                    <div class="chef">
                        <div class="chef_image">
                            <img src="../TemplateFiles/images/chef3.jpg" alt="">
                        </div>
                        <div class="chef_content text-center">
                            <div class="chef_name">Julien Williams</div>
                            <div class="chef_subtitle">İkinci Tatlı Şefi</div>
                            <div class="chef_button ml-auto mr-auto trans_400"><a href="#">daha fazlası</a></div>
                        </div>
                    </div>
                </div>
                
                <!-- Chef -->
                <div class="col-xl-3 col-md-6 chef_col d-flex flex-column align-items-center justify-content-end">
                    <div class="chef">
                        <div class="chef_image">
                            <img src="../TemplateFiles/images/chef4.jpg" alt="">
                        </div>
                        <div class="chef_content text-center">
                            <div class="chef_name">Amaury James</div>
                            <div class="chef_subtitle">Kahve Ustası</div>
                            <div class="chef_button ml-auto mr-auto trans_400"><a href="#">daha fazlası</a></div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <div class="testimonials">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/testimonials.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title_container">
						<div class="section_subtitle page_subtitle" style="font-size:50px;">Hakkımızda Söylenenler</div>
						<div class="section_title"><h1>Düşünceleriniz</h1></div>
					</div>
				</div>
			</div>
			<div class="row testimonials_row">
				<div class="col-lg-10 offset-lg-1">
					
					<!-- Testimonials Slider -->
					<div class="test_slider_container">
						<div class="owl-carousel owl-theme test_slider">
							
							<!-- Slide -->
							<div class="owl-item text-center">
								<div class="quote ml-auto mr-auto"><img src="../TemplateFiles/images/quote.png" alt=""></div>
								<div class="test_text">
                                    <p style="font-size:30px;">Kahveler harika</p>
								</div>
								<div class="test_info">Seyma, <span>Müşteri</span></div>
							</div>
                            <div class="owl-item text-center">
								<div class="quote ml-auto mr-auto"><img src="../TemplateFiles/images/quote.png" alt=""></div>
								<div class="test_text">
                                    <p style="font-size:30px;">Tatlılar müthiş</p>
								</div>
								<div class="test_info">Sudemnaz, <span>Müşteri</span></div>
							</div>
                            <div class="owl-item text-center">
								<div class="quote ml-auto mr-auto"><img src="../TemplateFiles/images/quote.png" alt=""></div>
								<div class="test_text">
                                    <p style="font-size:30px;">Yediğim en güzel tiramisu buradaydı!</p>
								</div>
								<div class="test_info">Sudemnaz, <span>Müşteri</span></div>
							</div>
                            <div class="owl-item text-center">
								<div class="quote ml-auto mr-auto"><img src="images/quote.png" alt=""></div>
								<div class="test_text">
                                    <p style="font-size:30px;">Latte inanılmaz yumuşaktı</p>
								</div>
								<div class="test_info">Seyma, <span>Müşteri</span></div>
							</div>
                            <div class="owl-item text-center">
								<div class="quote ml-auto mr-auto"><img src="images/quote.png" alt=""></div>
								<div class="test_text">
                                    <p style="font-size:30px;">Beyaz çikolatalı kurabiye enfesti</p>
								</div>
								<div class="test_info">Seyma, <span>Client</span></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Testimonials Slider -->
                       <%-- <div class="test_slider_container">
                            <div class="owl-carousel owl-theme test_slider">

                                <!-- Slide -->
                                <div class="owl-item text-center">
                                    <div class="quote ml-auto mr-auto">
                                        <img src="../TemplateFiles/images/quote.png" alt=""></div>
                                    <div class="test_text">
                                        <asp:DataList ID="comments" runat="server" RepeatDirection="Vertical"   RepeatColumns ="7" CellPadding="10" CellSpacing="10">
                                            <ItemTemplate>
                                                <div class="sig_name_container d-flex flex-row align-items-start justify-content-start" >
                                                    <div class="sig_name"><%# Eval("Comment") %></div>

                                                </div>
                                                <div class="test_info""><%# Eval("Username") %>, <span>Müşteri</span></div>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>--%>
</asp:Content>
