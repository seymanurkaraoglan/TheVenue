<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="TheVenue.User.Reservation" EnableEventValidation="false" %>

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
                                <div class="align-self-end">
                                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                                </div>
                                 <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>Rezervasyonların</h2>"></asp:Label>
                                <h1>Rezervasyon</h1>
                            </div>

                        </div>
                        <br />
                        <div class="reservations_content d-flex flex-column align-items-center justify-content-center">
                            <div class="res_stars page_subtitle">5 Yıldız</div>
                            <div class="res_title"></div>
                            <%--<div class="res_form_container">
                                <form action="#" id="res_form" class="res_form">
                                    <div class="d-flex flex-sm-row flex-column align-items-center justify-content-start">
                                        <input type="text" id="datepicker" class="res_input" aria-required="true" required title="Tarih girmek zorunludur"
                                            style="color:white">
                                        <input ID="txtDate" type="text" class="res_input timepicker" required="required">
                                        <select ID="person"  class="res_select" aria-required="true">
                                            <option disabled="" selected="">2 kişi</option>
                                            <option>3 kişi</option>
                                            <option>4 kişi</option>
                                            <option>5 kişi</option>
                                            <option>6 kişi</option>
                                        </select>
                                        <select ID="brach"  class="res_select">
                                            <option disabled="" selected="">Kadıköy</option>
                                            <option>Üsküdar</option>
                                            <option>Beyoğlu</option>
                                        </select>
                                    </div>
                                    <button class="res_button">Rezervasyon Yap</button>
                                    <asp:Button ID="btnReservation" runat="server" Text="Rezervasyon Yap" OnClick="btnReservation_Click" />
                                </form>
                            </div>--%>
                            <div class="container" style="display: flex; justify-content: space-around;">
                                <div style="width: 200px;">

                                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Tarih zorunlu" ControlToValidate="txtDate"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" placeholder="Tarih"
                                        ToolTip="Tarih" TextMode="Date" Style="color: black"></asp:TextBox>

                                </div>
                                <div style="width: 200px;">
                                    <asp:RequiredFieldValidator ID="rfvTime" runat="server" ErrorMessage="Saat zorunlu" ControlToValidate="txtTime"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtTime" runat="server" CssClass="form-control" placeholder="Saat"
                                        ToolTip="Saat" TextMode="Time" Style="color: black"></asp:TextBox>
                                </div>
                                <div style="width: 200px;">
                                    <asp:RequiredFieldValidator ID="rfvPerson" runat="server" ErrorMessage="Kişi sayısı giriniz" ControlToValidate="txtPerson"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="txtPerson" runat="server" CssClass="form-control" placeholder="Kişi Sayısı" Rows="5" SelectionMode="Multiple"
                                        ToolTip="Kişi" Style="color: black">
                                        <asp:ListItem Selected="True">Kişi Sayısı</asp:ListItem>
                                        <asp:ListItem>2 Kişi</asp:ListItem>
                                        <asp:ListItem>3 Kişi</asp:ListItem>
                                        <asp:ListItem>4 Kişi</asp:ListItem>
                                        <asp:ListItem>5 Kişi</asp:ListItem>
                                        <asp:ListItem>6 Kişi</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div style="width: 200px;">
                                    <asp:RequiredFieldValidator ID="rfvBranch" runat="server" ErrorMessage="Şube Seçiniz" ControlToValidate="txtBranch"
                                        ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="txtBranch" runat="server" CssClass="form-control" placeholder="Şube" Rows="3" SelectionMode="Multiple"
                                        ToolTip="Kişi" Style="color: black">
                                        <asp:ListItem Selected="True">Şubeler</asp:ListItem>
                                        <asp:ListItem>Kadıköy</asp:ListItem>
                                        <asp:ListItem>Üsküdar</asp:ListItem>
                                        <asp:ListItem>Beyoğlu</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                
                            </div>
                        </div>
                        <br />
                        <br />
                        <div class="row pl-4">
                                    <div class="btn_box" style="text-align:center">
                                        <asp:Button ID="btnReservation" runat="server" Text="Rezervasyon Yap" CssClass="btn rounded-pill pl-4 pr-4 text-white" Style="background-color:#deab90;"
                                            OnClick="btnReservation_Click" />
                                    </div>
                            <asp:Label ID="lblUpdateRes" runat="server" CssClass="pl-3 text-black-100" 
                            Text="Rezervasyonun var mı? <a href='MyReservations.aspx' <%--class='badge badge-info'--%>> Görüntüle </a>" Visible="true">
                           
                        </asp:Label>

                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- <div class="reservations text-center">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="../TemplateFiles/images/reservations.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					
				</div>
			</div>
		</div>		
	</div>--%>
    <%--<br />
	<br />
	<br />
	<br />
	<br />--%>
</asp:Content>
