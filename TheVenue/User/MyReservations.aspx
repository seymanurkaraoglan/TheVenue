<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="MyReservations.aspx.cs" Inherits="TheVenue.User.MyReservations" %>
<%@ Import Namespace="TheVenue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script src="../TemplateFiles/js/profile.js"></script>
    <%
        string imageUrl = Session["imageUrl"].ToString();
    %>

    <!-- Home -->
    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/home.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content text-center">
                            <div class="home_subtitle page_subtitle">The Venue</div>
                            <div class="home_title">
                                <h1>Olağanüstü bir deneyim</h1>
                            </div>
                            <div class="home_text ml-auto mr-auto">
                                <p>Aradığınız lezzet ve keyifi bulacaksınız</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="scroll_icon"></div>
    </div>

    <br />
    <br />

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                <h2>Kullanıcı Bilgisi</h2>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title mb-4">
                                <div class="d-flex justify-content-start">
                                    <div class="image-container">
                                        <img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" style="width: 150px; height: 150px;"
                                            class="img-thumbnail" />
                                        <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<%Response.Write(Session["userId"]);%>" class="btn btn-warning" style="background-color: #C38370; border-color: #C38370;">
                                                <i class="fa fa-pencil">Düzenle</i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="userData ml-3">
                                        <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold">
                                            <a href="javascript:void(0);"><%Response.Write(Session["name"]); %></a>
                                        </h2>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblUsername" runat="server" ToolTip="Unique Username">
                                                    @<%Response.Write(Session["username"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblEmail" runat="server" ToolTip="Unique Username">
                                                    @<%Response.Write(Session["email"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>
                                        <h6 class="d-block">
                                            <a href="javascript:void(0)">
                                                <asp:Label ID="lblCreatedDate" runat="server" ToolTip="Unique Username">
                                                    @<%Response.Write(Session["createdDate"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>

                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="basicInfo-tab" data-toggle="tab" href="Profile.aspx" role="tab"
                                                aria-controls="" aria-selected="true"><i class="fa fa-id-badge mr-2"></i>Temel Bilgiler</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link  text-info" id="connectedServices-tab" data-toggle="tab" href="OrderHistory.aspx" role="tab"
                                                aria-controls="connectedServices" aria-selected="false"><i class="fa fa-clock-o mr-2"></i>Sipariş Geçmişi</a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link active text-info" id="reservation" data-toggle="tab" href="MyReservations.aspx" role="tab"
                                                aria-controls="connectedServices" aria-selected="false"><i class="fa fa-book mr-2"></i>Rezervasyonlarım</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content ml-1" id="myTabContent">

                                        <%--Order History Starts--%>
                                        <br />
                                        <br />
                                        <h6 style="font-size: 40px; font-family: 'Edwardian Script ITC'; color: #774936">Rezervasyon Geçmisim</h6>
                                        <br />
                                        <div class="tab-pane fade show active" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">

                                            <asp:Repeater ID="rReservationHistory" runat="server" OnItemDataBound="rReservationHistory_ItemDataBound">
                                                <ItemTemplate>
                                                    <div class="container">
                                                        <div class="row pt-1 pb-1" style="background-color: lightgray; font-size: 15px; color: #1D190A">
                                                            <div class="col-4">
                                                                <span class="badge badge-pill badge-danger text-white" style="background-color: #4f000b">
                                                                    <%# Eval("SrNo") %>
                                                                </span>
                                                                Kullanıcı adı: <%# Eval("Username").ToString().ToUpper() %>
                                                            </div>
                                                            <div class="col-6">
                                                                Kullanıcı adı: <%# Eval("Mobile").ToString().ToUpper() %>
                                                            </div>
                                                            <%--<div class="col-2">
                                                                <a href="Invoice.aspx?id=<%# Eval("PaymentId") %>" class="btn btn-info btn-sm"><i class="fa fa-download mr-2"></i>Invoice</a>
                                                            </div>--%>
                                                        </div>
                                                        <asp:HiddenField ID="hdnReservationId" runat="server" Value='<%# Eval("ReservationId") %>' />
                                                        <asp:Repeater ID="rReservations" runat="server">
                                                            <HeaderTemplate>
                                                                <table class="table data-table-export table-responsive-sm table-bordered table-hover">
                                                                    <thead class="bg-dark text-white">
                                                                        <tr>
                                                                            <th>Rezervasyon Tarihi</th>
                                                                            <th>Rezervasyon Saati</th>
                                                                            <th>Kişi Sayısı</th>
                                                                            <th>Şube</th>
                                                                            <%--<th>Rezervasyon ID</th>--%>
                                                                            <th>Durum</th>
                                                                        </tr>
                                                                    </thead>                                                                    </thead>
                                                                    <tbody>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ReservationDate") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("ReservationTime") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Person") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("Branch") %>'></asp:Label>
                                                                    </td>
                                                                    <%--<td>
                                                                        <asp:Label ID="lblOrderNo" runat="server" Text='<%# Eval("ReservationId") %>'></asp:Label>
                                                                    </td>--%>
                                                                    <td>
                                                                        <asp:Label class= ID="lblStatus"  runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                                                        
                                                                    </td> 

                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </tbody>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>

                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                        <%--Order History Ends--%>

                                        <%--Basic User Info Starts--%>
                                        <div class="tab-pane fade" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">İsim</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Name") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Kullanıcı Adı</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Username") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Telefon No</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Mobile") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Email Adr.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Email") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Posta Kodu</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("PostCode") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Adres</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--Basic User Info Ends--%>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
