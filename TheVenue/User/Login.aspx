<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TheVenue.User.Login" %>
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
    <!-- Home -->
        <div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="home_subtitle page_subtitle">The Venue</div>
							<div class="home_title"><h1>Olağanüstü bir deneyim</h1></div>
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
                <h2>Giriş Yap</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <img id="userLogin" src="../Images/login.jpg" alt="" class="img-thumbnail"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Kullanıcı adı zorunludur" ControlToValidate="txtUsername"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı adınız"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Şifre zorunludur" ControlToValidate="txtPassword"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                        </div>
                       <br>
                        <div class="btn_box">
                            <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                                OnClick="btnLogin_Click"/>
                            <span class="pl-3 text-info">   Hesabınız Yok Mu?<a href="Registration.aspx" <%--class="badge badge-info"--%>> Buradan kaydolun</a></span>
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
    <br />
    <br />
    <br />

</asp:Content>
