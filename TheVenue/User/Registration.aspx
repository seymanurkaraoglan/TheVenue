<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TheVenue.User.Registration" %>
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
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

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
	<br />
	<br />
	<br />
        <section class="book-section layout_padding">
        <div class="container">
           <div class="heading_container">
               <div class="align-self-end">
                   <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
               </div>
               <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>Üye Ol</h2>"></asp:Label>
           </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="İsim zorunlu" ControlToValidate="txtName"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Ad yalnızca karakter olmalıdır"
                                 Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\s]+$"
                                ControlToValidate="txtName"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Tam isim"
                                Tooltip="Full Name"></asp:TextBox>
                        </div>

						<br />

						 <div>
                            
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Kullanıcı Adı zorunlu" ControlToValidate="txtUsername"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                             <asp:TextBox  ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı adı" 
                                Tooltip="Username" ></asp:TextBox>
                           
                        </div>
						<br />
						<div>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email zorunlu" ControlToValidate="txtEmail"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Mail Adresi"
                                Tooltip="Email" TextMode="Email"></asp:TextBox>
                        </div>
						<br />
						<div>
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Telefon No. zorunlu" ControlToValidate="txtMobile"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Telefon numarası yalnızca 10 rakam olmalıdır"
                                 Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                                ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                             <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Telefon numarası"
                                Tooltip="Mobile Number" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Adres zorunlu" ControlToValidate="txtAddress"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                           <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Adres"
                                Tooltip="Address" TextMode="MultiLine"></asp:TextBox>
                        </div>

						<br />

						 <div>
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Post/Zip Kod zorunlu" ControlToValidate="txtPostCode"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Post/Zip kod mutlaka 6 rakam olmalıdır"
                                 Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{6}$"
                                ControlToValidate="txtPostCode"></asp:RegularExpressionValidator>
                           <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Post/Zip Kod"
                                Tooltip="Post/Zip Code" TextMode="Number"></asp:TextBox>
                        </div>
						<br />
						<div>
                            <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="User Image" onchange="ImagePreview(this);"/>
                        </div>
						<br />
						<div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Şifre zorunlu" ControlToValidate="txtPassword"
                                 Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Şifre"
                                Tooltip="Password" TextMode="Password"></asp:TextBox>
                        </div>

                    </div>
                </div>
                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Kaydol" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" 
                            OnClick="btnRegister_Click"/>

                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100" 
                            Text="Hesabın Var mı? ? <a href='Login.aspx' <%--class='badge badge-info'--%>>  Buraya Tıklayın..</a>" Visible="true">
                           
                        </asp:Label>

                    </div>

                </div>
            <div class="row p-5">
                <div style="align-items:center">
                    <asp:Image  ID="imgUser" runat="server" CssClass="img-thumbnail"/>
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

    
