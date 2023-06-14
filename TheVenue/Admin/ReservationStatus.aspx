<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ReservationStatus.aspx.cs" Inherits="TheVenue.Admin.ReservationStatus" %>

<%@ Import Namespace="TheVenue" %>
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
    <div class="pcoded-inner-content pt-0">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-8 col-lg-8">
                                            <h4 class="sub-title">Rezervasyon Listesi</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <asp:Repeater ID="rReservationStatus" runat="server" OnItemCommand="rReservationStatus_ItemCommand">
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Kullanıcı Adı</th>
                                                                        <th>Tel No.</th>
                                                                        <th class="table-plus">Rezervasyon Tarihi</th>
                                                                        <th>Rezervasyon Saati</th>
                                                                        <th>Kişi Sayısı</th>
                                                                        <th>Şube</th>
                                                                        <th>Rezervasyon Durumu</th>
                                                                        <th class="datatable-nosort">Düzenle</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%# Eval("Username") %> </td>
                                                                <td><%# Eval("Mobile") %></td>
                                                                <td class="table-plus"><%# Eval("ReservationDate") %> </td>
                                                                <td><%# Eval("ReservationTime") %></td>

                                                                <td><%# Eval("Person") %> </td>
                                                                <td><%# Eval("Branch") %> </td>
                                                                <td>
                                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'
                                                                        CssClass='<%# Eval("Status").ToString() == "Aktif" ? "badge badge-success" : "badge badge-warning" %>'></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CssClass="badge badge-primary"
                                                                        CommandArgument='<%# Eval("ReservationId") %>' CommandName="edit">
                                                                        <i class="ti-pencil"></i>
                                                                    </asp:LinkButton>
                                                                </td>

                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-sm-6 col-md-4 col-lg-4 mobile-inputs">
                                            <asp:Panel ID="pUpdateReservationStatus" runat="server">
                                                <h4 class="sub-title">Durumu Güncelle</h4>
                                                <div>
                                                    <div class="form-group">
                                                        <label>Rezervasyon Durumu</label>
                                                        <div>
                                                            <asp:DropDownList ID="ddlReservationStatus" runat="server" CssClass="form-control">
                                                                <asp:ListItem Value="0">Durum Seç</asp:ListItem>
                                                                <asp:ListItem>Aktif</asp:ListItem>
                                                                <asp:ListItem>Pasif</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="rfvDdlReservationStatus" runat="server" ForeColor="Red" ControlToValidate="ddlReservationStatus"
                                                                ErrorMessage="Rezervasyon durumu zorunludur" SetFocusOnError="true" Display="Dynamic" InitialValue="0">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:HiddenField ID="hdnId" runat="server" Value="0"></asp:HiddenField>
                                                        </div>
                                                    </div>
                                                    <div class="pb-5">
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />

                                                        <asp:Button ID="btnCansel" runat="server" Text="İptal" CssClass="btn btn-primary"
                                                            OnClick="btnCansel_Click" />
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
