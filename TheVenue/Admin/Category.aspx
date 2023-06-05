<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="TheVenue.Admin.Category" %>

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


    <script>

        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgCategory.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

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
                                        <div class="col-sm-6 col-md-4 col-lg-4">
                                            <h4 class="sub-title">Kategori</h4>
                                            <div>
                                                <div class="form-group">
                                                    <label>Kategori Adı</label>
                                                    <div>
                                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"
                                                            placeholder="Kategori Adı girin" required>
                                                        </asp:TextBox>
                                                        <asp:HiddenField ID="hdnId" runat="server" Value="0"></asp:HiddenField>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Kategori Fotoğrafı</label>
                                                    <div>
                                                        <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="form-control"
                                                            onchange="ImagePreview(this);"></asp:FileUpload>
                                                    </div>
                                                </div>
                                                <div class="form-check pl-4">
                                                    <asp:CheckBox ID="cbIsActive" runat="server" Text="Aktif"
                                                        CssClass="form-check-input"></asp:CheckBox>
                                                </div>
                                                <div class="pb-5">
                                                    <asp:Button ID="btnAddOrUpdate" runat="server" Text="Ekle" CssClass="btn btn-primary"
                                                        OnClick="btnAddOrUpdate_Click" />

                                                    <asp:Button ID="btnClear" runat="server" Text="Sil" CssClass="btn btn-primary"
                                                        CausesValidation="false" OnClick="btnClear_Click" />
                                                </div>
                                                <div>
                                                    <asp:Image ID="imgCategory" runat="server" CssClass="img-thumbnail"></asp:Image>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-8 col-lg-8 mobile-inputs">
                                            <h4 class="sub-title">Kategoriler</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <asp:Repeater ID="rCategory" runat="server" OnItemCommand="rCategory_ItemCommand"
                                                        OnItemDataBound="rCategory_ItemDataBound">
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">İsim</th>
                                                                        <th>Fotoğraf</th>
                                                                        <th>Aktiflik</th>
                                                                        <th>Oluşturulma Tarihi</th>
                                                                        <th class="datatable-nosort">Düzenle/Sil</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td class="table-plus"><%# Eval("Name") %> </td>
                                                                <td>
                                                                    <img alt="" width="40" src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblIsActive" runat="server" Text='<%# Eval("IsActive") %>'></asp:Label>
                                                                </td>
                                                                <td><%# Eval("CreatedDate") %> </td>
                                                                <td>
                                                                    <asp:LinkButton ID="lnkEdit" Text="Düzenle" runat="server" CssClass="badge badge-primary"
                                                                        CommandArgument='<%# Eval("CategoryId") %>' CommandName="edit">
                                                                            <i class="ti-pencil"></i>
                                                                    </asp:LinkButton>
                                                                    <asp:LinkButton ID="lnkDelete" Text="Sil" runat="server" CommandName="delete"
                                                                        CssClass="badge bg-danger" CommandArgument='<%# Eval("CategoryId") %>'
                                                                        OnClientClick="return confirm('Bu kategoriyi silmek istediğinize emin misiniz?');">
                                                                            <i class="ti-trash"></i>
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
