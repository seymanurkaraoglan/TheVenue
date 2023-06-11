<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="TheVenue.User.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .rounded {
            border-radius: 1rem
        }

        .nav-pills .nav-link {
            color: #555
        }

            .nav-pills .nav-link.active {
                color: white
            }

        .bold {
            font-weight: bold
        }

        .card {
            padding: 40px 50px;
            border-radius: 20px;
            border: none;
            box-shadow: 1px 5px 10px 1px rgba(0, 0, 0, 0.2)
        }
    </style>
    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
        /*For tooltip*/
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

    <%--Function for preventing back button--%>
    <script type="text/javascript">
        function DisableBackButton() {
            window.history.forward()
        }
        DisableBackButton();
        window.onload = DisableBackButton;
        window.onpageshow = function (evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function () { void (0) }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/reservations.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue</div>
                            <div class="home_title">
                                <h1>Ödeme</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class="book_section" style="background-image: url('../Images/payment-bg.png'); width: 100%; height: 100%; background-repeat: no-repeat; 
        background-size: auto; background-attachment: fixed; background-position: left;">

        <div class="container py-5">
            <div class="align-self-end">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <!-- For demo purpose -->
            <div class="row mb-4">
                <div class="col-lg-8 mx-auto text-center">
                    <h1 class="display-6">Sipariş Ödeme</h1>
                </div>
            </div>
            <!-- End -->
            <div class="row pb-5">
                <div class="col-lg-6 mx-auto">
                    <div class="card ">
                        <div class="card-header">
                            <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                                <!-- Payment type tabs -->
                                <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                                    <li class="nav-item"><a data-toggle="pill" href="#credit-card" class="nav-link active" style="background-color:#b07d62;border-color:#b07d62"><i class="fa fa-credit-card mr-2"></i> Kredi Kartı </a></li>
                                    <li class="nav-item"><a data-toggle="pill" href="#paypal" class="nav-link "><i class="fa fa-money mr-2"></i> Kapıda Ödeme </a></li>
                                    <%--<li class="nav-item"><a data-toggle="pill" href="#net-banking" class="nav-link "><i class="fa fa-mobile mr-2"></i>Net Banking </a></li>--%>
                                </ul>
                                <!-- End -->
                            </div>
                            <!-- Credit card form content -->
                            <div class="tab-content">
                                <!-- credit card info-->
                                <div id="credit-card" class="tab-pane fade show active pt-3">
                                    <div role="form">
                                        <div class="form-group">
                                            <label for="txtName">
                                                <h6>Kart Sahibi</h6>
                                            </label>
                                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="İsim gerekli"
                                                ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                ValidationGroup="card">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                ErrorMessage="İsim mutlaka karakter olmalıdır" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtName" ValidationGroup="card">*
                                            </asp:RegularExpressionValidator>
                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Kart Sahibinin İsmi" ForeColor="Black"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="txtCardNo">
                                                <h6>Kart Numarası</h6>
                                            </label>
                                            <asp:RequiredFieldValidator ID="rfvCardNo" runat="server" ErrorMessage="Kart numarası gerekli"
                                                ControlToValidate="txtCardNo" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                ValidationGroup="card">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                ErrorMessage="Kart numarası 16 rakamdan oluşmalı" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                ValidationExpression="[0-9]{16}" ControlToValidate="txtCardNo" ValidationGroup="card">*
                                            </asp:RegularExpressionValidator>
                                            <div class="input-group">
                                                <asp:TextBox ID="txtCardNo" runat="server" CssClass="form-control" placeholder="Geçerli kart numarası" ForeColor="Black"
                                                    TextMode="Number"></asp:TextBox>
                                                <div class="input-group-append">
                                                    <span class="input-group-text text-muted">
                                                        <i class="fa fa-cc-visa mx-1"></i>
                                                        <i class="fa fa-cc-mastercard mx-1"></i>
                                                        <i class="fa fa-cc-amex mx-1"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="form-group">
                                                    <label>
                                                        <span class="hidden-xs">
                                                            <h6>Son kullanma tarihi</h6>
                                                        </span>
                                                    </label>
                                                    <asp:RequiredFieldValidator ID="rfvExpMonth" runat="server" ErrorMessage="Son kullanma ayı gerekli"
                                                        ControlToValidate="txtExpMonth" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationGroup="card">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic"
                                                        ErrorMessage="Son kullanma ayı 2 rakamdan oluşmalı" ForeColor="Red" SetFocusOnError="true"
                                                        ValidationExpression="[0-9]{2}" ControlToValidate="txtExpMonth" ValidationGroup="card">*
                                                    </asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="rfvExpYear" runat="server" ErrorMessage="Son kullanma yılı yılı"
                                                        ControlToValidate="txtExpYear" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationGroup="card">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" Display="Dynamic"
                                                        ErrorMessage="Son kullanma yılı 4 rakamdan oluşmalıdır" ForeColor="Red" SetFocusOnError="true"
                                                        ValidationExpression="[0-9]{4}" ControlToValidate="txtExpYear" ValidationGroup="card">*
                                                    </asp:RegularExpressionValidator>
                                                    <div class="input-group">
                                                        <asp:TextBox ID="txtExpMonth" runat="server" CssClass="form-control" placeholder="MM" ForeColor="Black"
                                                            TextMode="Number"></asp:TextBox>
                                                        <asp:TextBox ID="txtExpYear" runat="server" CssClass="form-control" placeholder="YYYY" ForeColor="Black"
                                                            TextMode="Number"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-4">
                                                    <label data-toggle="tooltip" title="Kartınızın arka yüzündeki üç haneli CV kodu">
                                                        <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                                    </label>
                                                    <asp:RequiredFieldValidator ID="rfvCvv" runat="server" ErrorMessage="CVV no. gerekli"
                                                        ControlToValidate="txtCvv" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                                        ValidationGroup="card">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Display="Dynamic"
                                                        ErrorMessage="CVV no. 3 rakam olmalı" ForeColor="Red" SetFocusOnError="true"
                                                        ValidationExpression="[0-9]{3}" ControlToValidate="txtCvv" ValidationGroup="card">*
                                                    </asp:RegularExpressionValidator>
                                                    <asp:TextBox ID="txtCvv" runat="server" CssClass="form-control" placeholder="CVV No." ForeColor="Black"
                                                        TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="txtAddress">
                                                <h6>Teslimat adresi</h6>
                                            </label>
                                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Adres gerekli" ForeColor="Red"
                                                ControlToValidate="txtAddress" Display="Dynamic" SetFocusOnError="true" ValidationGroup="card">*
                                            </asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Teslimat adresi" ForeColor="Black"
                                                TextMode="MultiLine" ValidationGroup="card"></asp:TextBox>
                                        </div>
                                        <div class="card-footer">
                                            <asp:LinkButton ID="lbCardSubmit" runat="server" CssClass="subscribe btn btn-info btn-block shadow-sm"
                                               style="background-color:#deab90;border-color:#deab90" ValidationGroup="card" OnClick="lbCardSubmit_Click">Ödemeyi Onayla</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <!-- End -->
                                <!-- Cash On Delivery info -->
                                <div id="paypal" class="tab-pane fade show active  pt-3">
                                    <div class="form-group">
                                        <h6 style="font-size:40px; font-family:'Edwardian Script ITC';color:#774936">Kapıda Ödeme</h6>
                                        <label for="txtCODAddress">
                                            <h6>Teslimat Adresi</h6>
                                        </label>
                                        <asp:TextBox ID="txtCODAddress" runat="server" CssClass="form-control" placeholder="Teslimat Adresi" ForeColor="Black"
                                            TextMode="MultiLine"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvCODAddress" runat="server" ErrorMessage="Adres gerekli" ForeColor="Red"
                                            ControlToValidate="txtCODAddress" Display="Dynamic" SetFocusOnError="true" ValidationGroup="cod"
                                            Font-Names="Segoe Script"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <p>
                                        <asp:LinkButton ID="lbCodSubmit" runat="server" CssClass="btn btn-info" ValidationGroup="cod" OnClick="lbCodSubmit_Click"
                                            style="background-color:#deab90;border-color:#deab90">
                                            <i class="fa fa-cart-arrow-down mr-2"></i>Ödemeyi Onayla</asp:LinkButton>
                                    </p>
                                    <p class="text-muted">
                                        Not: Siparişinizi teslim alırken ödemenin tamamını yapmanız gerekmektedir. Ödeme işlemini tamamladıktan sonra güncel sipariş durumunuzu kontrol edebilirsiniz.
                                    </p>
                                </div>
                                <!-- End -->
                            </div>
                            <!-- End -->
                        </div>
                        <div class="card-footer">
                            <b class="badge badge-success badge-pill shadow-sm">Sipariş Tutarı: <% Response.Write(Session["grandTotalPrice"]); %>  TL</b>
                            <div class="pt-1">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="card"
                                    HeaderText="Fix the following errors" Font-Names="Segoe Script" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>



