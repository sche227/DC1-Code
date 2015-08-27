<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyJourney.aspx.cs" Inherits="MyJourney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self"/>
    <link rel="stylesheet" href="css/style.css" />
    <!-- Favicons
     ================================================== -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png" />
    <!-- JS
    ================================================== -->
    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/jquery.tweet.js"></script>
    <script src="js/selectnav.js"></script>
    <script src="js/jquery.fancybox.js"></script>
    <script src="js/functions.js"></script>
    <script type="text/javascript" src="jquery.js"></script> 
    

    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        $(document).ready(function () {
            $(".slider .flexslider").flexslider({
                animation: "slide"
            });
        });
    </script>
   <script>
  $("button").click(function(){
    $("#"+$(this).data('ts')).prop("checked", true);
  }); 
 </script>

   <script type="text/javascript">
       $(document).ready(init);

       function init() {
           addMarker();
           var latlng = new google.maps.LatLng(-37.8149819, 144.9644588);
           var myOptions = {
               zoom: 12,
               center: latlng,
               mapTypeId: google.maps.MapTypeId.ROADMAP
           };
           map = new google.maps.Map(document.getElementById("div_showMap"), myOptions);
       }
       function addMarker() {
           $.ajax(
           {
               type: "GET",
               url: "JsonText.txt",
               dataType: "json",
               success: function (data) {

                   var first = true;
                   var map;
                   for (var index in data) {

                       if (first == true) {
                           /*center*/
                           var latlng = new google.maps.LatLng(-37.8149819, 144.9644588);
                           var myOptions = {
                               zoom: 12,
                               center: latlng,
                               mapTypeId: google.maps.MapTypeId.ROADMAP 
                         
                           };
                           /*create map*/
                           map = new google.maps.Map(document.getElementById("div_showMap"), myOptions);
                           first = false;
                       } //End if (first == true) 


                       //create latlng
                       
                       var myLatlng = new google.maps.LatLng(data[index].Latitude, data[index].Longitude);
                       //add maker
                       var marker = new google.maps.Marker({
                           position: myLatlng,
                           map: map,
                           icon: 'images/marker1.png',
                           animation: google.maps.Animation.G


                       });
                   } //End for (var index in data) 
               }     //End success: function (data) 
           });       //End jQuery Ajax
       }             //End function addMarker() 

    </script>
    <title></title>
</head>
<body >
    <form id="form1" runat="server">
     <div id="wrapper">

            <div class="main">
                <div class="container">

                    <!-- Header - weather
                ================================================== -->
                    <div class="sixteen columns header">
                        <div class="phone"></div>
                        <div class="social">
                        </div>
                    </div>
                    <div class="clear"></div>

                    <!-- Header - Logo & Navigation
                ================================================== -->
                    <div class="sixteen columns top">
                        <div class="logo four columns alpha"><a href="http://cyclingplusplus.azurewebsites.net/"><img src="images/logo1.png" alt="" /></a></div>
                        <div class="navigation twelve columns alpha omega">
                            <ul id="nav" class="sf-menu sf-shadow">
                                <li><a data-description="Welcome Page" href="index.aspx">Home</a></li>
                                <li class="active"><a data-description="Seek You Need" href="MyJourney.aspx">My Journey</a></li>
                                <li><a data-description="What You Need To Know">About Melbourne</a>
                                      <ul>
									    <li><a href="Art.aspx">Art,Theatre&Culture</a></li>
                                        <li><a href="Food.aspx">Food and Wine</a></li>
									    <li><a href="Shopping.aspx">Shopping</a></li>
									    <li><a href="Nature.aspx">Nature and Wildlife</a></li>
                                        <li><a href="History.aspx">History and Heritage</a></li>	    
								 </ul>
                                </li>
                                <li><a data-description="Get In Touch" href="contact.aspx">About US</a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div id="separator"><span></span></div>

                    </div>
                    <div class="clear"></div>

                    <!-- Slider
                ================================================== -->
                    <div class="contact sixteen columns row">
                        <h2 class="separator_title"><span>Select Category</span> </h2>              
                            <asp:DropDownList ID="DropDownList1"  CssClass="select"  width="100%" runat="server" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="47px"> 
                                <asp:ListItem Value="MyJounery">My Jounery</asp:ListItem>  
                                <asp:ListItem Value="Drink Fountain">Drink Fountains</asp:ListItem>  
                                <asp:ListItem Value="Nournishment Hub">Food & Drinks venue</asp:ListItem>
                                <asp:ListItem Value="Parking Pod">Parking Pod</asp:ListItem>
                                <asp:ListItem Value="Public Commode">Public Toilets</asp:ListItem>
                                <asp:ListItem Value="Blackspot">Blackspot Area</asp:ListItem>          
                            </asp:DropDownList>   
		               </div>    
                            <div id="div_showMap" style="width:100%;height:500px"></div>
                    </div>
                <!-- END main -->
            </div>   
        </div>
         <div id="footer">
		<div id="f_line"></div>
		<div class="container">
			<div class="footer sixteen columns">
				<div class="three columns alpha">
					<h3>NAVIGATE</h3>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">MyJourney</a></li>
						<li><a href="#">About Melbourne</a></li>
						<li><a href="#">Contacts</a></li>
					</ul>
				</div>
				<div class="three columns">
					<h3>About Melbourne</h3>
					<ul>
						<li><a href="#">Art,Theatre&Culture</a></li>
						<li><a href="#">Food and Wine</a></li>
						<li><a href="#">Shopping</a></li>
						<li><a href="#">Nature and Wildlife</a></li>
						<li><a href="#">History and Heritage</a></li>
					</ul>
				</div>
				
				  <div class="three columns">
					<h3>Helpful Link</h3>
					<ul>
						<li><a href="http://www.melbournebikeshare.com.au/">Melbourne Bike Share</a></li>
						<li><a href="http://www.visitmelbourne.com/">Visit Melbourne</a></li>
						<li><a href="http://www.melbourne.vic.gov.au">City of Melbourne</a></li>
					</ul>
				</div>

				
			</div>
		</div>		
	</div>
           <div id="footer_bottom">
		<div class="container">
			<div class="sixteen columns">
				<div class="copyright ten columns alpha">Copyright &copy; 2015 JSK Technology. All Rights Reserved</div>
			</div>
		</div>
	</div>
        
     
    </form>
</body>
</html>
