<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="TheVenue.User.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/blog.css">
        <link rel="stylesheet" type="text/css" href="../TemplateFiles/styles/blog_responsive.css">
        <script src="../TemplateFiles/js/blog.js"></script>
    </header>
    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/blog.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue</div>
                            <div class="home_title">
                                <h1>Blogumuz</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog -->

    <div class="blog">
        <div class="container">
            <div class="row">

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/blog_1.jpg" alt="https://unsplash.com/@patrick_schneider">
                            </div>
                            <div class="blog_post_date"><a href="#">Haziran 18, 2023</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">Restoranlar Ödüllerinde Adayımız</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#" style="font-size:35px;">George Smith</a></li>
<%--                                    <li>in <a href="#">Lifestyle</a></li>
                                    <li><a href="#">2 Comments</a></li>--%>
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    George Smith,15 yaşından beri mutfak eğitimi almış bir chef adayıdır. Bizim restoranımızda da şeflerimiz sayesinde staj yapmış ve kendini geliştirmiş.Şu an 22 yaşında olan Smith,
                                    sayısız gastronomi yarışmasına katılmış ve hepsinde de derece almıştır. Bu yıl da Dünya tatlı şampiyonasında bizi temsil edecektir.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/bowl.jpg" alt="https://unsplash.com/@tashytown">
                            </div>
                            <div class="blog_post_date"><a href="#">Nisan, 2023</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">Haftanın tarifi</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#" style="font-size:35px;">Tofu Buda Kasesi</a></li>
                                    <%--<li>in <a href="#">Tarif</a></li>--%>
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    Fırını önceden 180 dereceye ısıtın. Tofuyu süzün ve küçük parçalar halinde doğrayın. Ayrı bir kapta tofu, soya sosu, akçaağaç şurubu ve susam tohumlarını ekleyin. Karıştırıp tepsiye yayın ve fırında 20 dakika üzeri kızarana kadar pişirin.
Brokolinizi, çiçeklerini ve saplarını küçük ısırık büyüklüğünde parçalar halinde keserek hazırlayın.Bir kapta miso ezmesi, hafif soya sosu, sarımsak, zencefil ve bir tutam pul biber ekleyin. Marine edip karıştırın ve brokoliye ekleyin. Tepsiye dökün ve 15 dakika fırında pişirin.
Bir kapta tahin, pirinç sirkesi, akçaağaç şurubu ve misoyu çırpın. Gevşetmek için biraz su ekleyin.İnşa etme zamanı! Pişmiş tahıllarınızı, üzerine lezzetli kavrulmuş brokoli, yapışkan tofu ve taze kişniş ekleyin. Kremalı susamlı sosu cömertçe gezdirin.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/chiabowl.jpg" alt="https://unsplash.com/@stefanjonhson">
                            </div>
                            <div class="blog_post_date"><a href="#">Mayıs 11, 2023</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">Haftanın Tarifi</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#" style="font-size:35px;">Yabanmersinli chia puding</a></li>
                                    <%--<li>in <a href="#">Lifestyle</a></li>
                                    <li><a href="#">2 Comments</a></li>--%>
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    Öncelikle malzemeler 3 kaşık chia,4 kaşık yulaf,1 su bardağı süt ve dilediğiniz meyveler. Eğer hemen yemek istiyorsanız sütü bir tencerede kaynatıyorsunuz.Kaynamış süte yulafı ekleyip yulaflar yumuşayıncaya kadar karıştırıyorsunuz.
                                    Daha sonra yulafın altını kapatıp chiayı katıp 10 dk bekliyorsunuz. Bu süreçte chia, pudinge kıvam kazandıracaktır.Dilerseniz bu karışıma şeker,agave şurubu ekleyebilirsiniz.En son meyvelerle sevis edebilirsiniz.
                                    Soğuk olarak servis etmek isterseniz de sütü yulafı chiayı karıştırıp buz dolabında bir gece veya bir gün bekletin. Bu süre boyunca puding kıvam almış olacak.Meyvelerle süsledikten sonra yiyebilirsiniz.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/salad.jpg" alt="Jackelin Slack">
                            </div>
                            <div class="blog_post_date"><a href="#">Kasım 05, 2012</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">İlk Michelin yıldızımız</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#" style="font-size:35px;">Yaz Kabak Salatası</a></li>
                                    <li><a href="#" style="font-size:35px;">Amaury James</a></li>
                                   
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    İlk Michelin yıldızımızı Amaury James'in hazırladığı Yaz Kabak Salatası ile aldık. O gün elimizde kalan taze ürünlerle bir salata ortaya çıkaran James'in başına geleceklerden haberi yoktu.
                                    Bilindiği üzere bu tür ziyaretlerin tarihi bellidir ama saatini kestiremezsiniz. O gün James ve takım arkadaşları jüriye sunacakları yemeği hazırladılar.Fakat ekip mutfağı kontrol ederken bu salatayı gördüler ve denemek istediler.
                                    Salatayı çok beğenen ekip bu yaklaşıma bayıldı ve ilk yıldız alınmış oldu.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/ricebowl.jpg" />
                            </div>
                            <div class="blog_post_date"><a href="#">Temmuz 18, 2022</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">En sevdiklerinizden</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#"   style="font-size:35px;">Rice Bowl</a></li>
                                    <li><a href="#"   style="font-size:35px;">Maria Smith</a></li>
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    Tatlı patateslerinizi ve nohutlarınızı baharatlayın. Bir fırın tepsisine yayın ve yaklaşık 30 dakika pişirin. Bu sırada ocak gözlerinden birinde pirinci pişirin. Pirinç pişince susam yağı ekleyin. Başka bir ocakta ıspanakları pişirin (kasede birleştirmeden sadece 5 dakika önce). tahin, limon suyu ve akçaağaç şurubunu karıştırarak bir sos hazırlayın.
                                    Tüm malzemeleri kasede birleştirin.Ta da!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Blog Post -->
                <div class="col-lg-6 blog_col">
                    <div class="blog_post">
                        <div class="blog_post_image_container">
                            <div class="blog_post_image">
                                <img src="../TemplateFiles/images/spicysalad.jpg" alt="https://unsplash.com/@brookelark">
                            </div>
                            <div class="blog_post_date"><a href="#">Mayıs 11, 2023</a></div>
                        </div>
                        <div class="blog_post_content">
                            <div class="blog_post_title"><a href="#">3. Michelin Yıldızımız</a></div>
                            <div class="blog_post_info">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#"   style="font-size:35px;">Jalapeño Baharatlı karides salatası</a></li>
                                    <li><a href="#"   style="font-size:20px;">Maria Smith</a></li>
<%--                                    <li><a href="#">2 Comments</a></li>--%>
                                </ul>
                            </div>
                            <div class="blog_post_text">
                                <p>
                                    Aradan geçen 5 yılın ardından 3. yıldızımızı da bu tarifle almış bulunmaktayız. Jürilerin genel olarak dikkat ettikleri şey onlara servis yapılırken müşteriye olan tutumumuzdu.
                                    Herkese jüriye sunum yapar gibi sunum yapmamız yıldızı garantiledi. Ayrıca jalapeno ve bahartın uyumunu,karidesle birleşimini çok beğendiler. Bu tabağı şeflerimizden Maria Smith hazırladı.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
           <%-- <div class="row load_more_row">
                <div class="col">
                    <div class="button load_more_button ml-auto mr-auto trans_200"><a href="#">Load More</a></div>
                </div>
            </div>--%>
        </div>
    </div>
</asp:Content>
