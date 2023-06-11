<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="TheVenue.User.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);

        };
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
                                <h1>Fatura</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
<section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="true"></asp:Label>
                </div>
            </div>
        </div>
    <div class="container">
        <asp:Repeater ID="rOrderItem" runat="server">
            <HeaderTemplate>
                <table class="table table-responsive-sm table-bordered table-hover" id="tblInvoice">
                    <thead class="bg-dark text-white">
                        <tr>
                            <th>Sr.No</th>
                            <th>Sipariş Numarası</th>
                            <th>Ürün İsmi</th>
                            <th>Birim Fiyat</th>
                            <th>Miktar</th>
                            <th>Toplam Tutar</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("Srno") %></td>
                    <td><%# Eval("OrderNo") %></td>
                    <td><%# Eval("Name") %></td>
                    <td><%# string.IsNullOrEmpty( Eval("Price").ToString() ) ? "" : "" + Eval("Price") %> TL</td>
                    <td><%# Eval("Quantity") %></td>
                    <td><%# Eval("TotalPrice") %> TL</td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <div class="text-center">
            <asp:LinkButton ID="lbDownloadInvoice" runat="server" CssClass="btn btn-info" OnClick="lbDownloadInvoice_Click">
                <i class="fa fa-file-pdf-o mr-2"></i> Faturayı İndir
            </asp:LinkButton>
        </div>
    </div>
    </section>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
