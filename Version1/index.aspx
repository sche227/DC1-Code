<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <script>
        $(document).ready(function () {
            $(".slider .flexslider").flexslider({
                animation: "slide"
            });
        });
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script>
        setInterval("document.getElementById('time1').innerHTML = new Date().toLocaleString();", 1000);
    </script>

    <title></title>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div id="wrapper">


        <div class="main">
            <div class="container">

                <!-- Header - weather
                ================================================== -->
                <div class="sixteen columns header">
                    
                </div>
                <div class="clear"></div>

                <!-- Header - Logo & Navigation
                ================================================== -->
                <div class="sixteen columns top">
                    <div class="logo four columns alpha"><a href="http://cyclingplusplus.azurewebsites.net/"><img src="images/logo1.png" alt="" /></a></div>
                    <div class="navigation twelve columns alpha omega">
                        <ul id="nav" class="sf-menu sf-shadow">
                            <li class="active"><a data-description="Welcome Page" href="index.aspx">Home</a></li>
                            <li><a data-description="Seek You Need" href="MyJourney.aspx">My Journey</a></li>
                            <li><a data-description="What You Need To Know" >About Melbourne</a>
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
                <div class="sixteen columns  slider clearfix">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <a href="#"><img src="images/Melborune/Meb_1.jpg" alt="" /></a>
                                <div class="flex-caption">Bicycle Lead Better Life</div>
                            </li>
                            <li>
                                <a href="#"><img src="images/Melborune/Meb_4.jpg" alt="" /></a>
                                <div class="flex-caption">Are You Looking for Water?</div>
                            </li>
                            <li>
                                <a href="#"><img src="images/Melborune/Meb_5.jpg" alt="" /></a>
                                <div class="flex-caption">Free and Drinks</div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>

                <!-- Slider
                ================================================== -->
                    <!-- Content - services & recent work
				================================================== -->
                      <div class="content ten columns row">
				<div class="ten columns home_services row alpha">
					<h2 class="separator_title"><span>Our</span> Services</h2>
					<div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="service five columns alpha space">
						<div class="icon left"><img src="images/webdesign_icon.png" alt="" /></div>
						<div class="title left">Find Point</div>
						<div class="description">The website will provide the information the drink fountains dataset, food & drinks venue dataset, Parking Pod dataset, Public Toilets and Blackspot area dataset.</div>
						<a class="more" href="#">Read more</a>  
					</div>
					<div class="service five columns row omega space">
						<div class="icon left"><img src="images/cms_icon.png" alt="" /></div>
						<div class="title left">About Melbourne</div>
						<div class="description">The website provide the five categories in this page – artwork, food and wine, nature and wildlife, shopping and history.</div>
						<a class="more" href="#">Read more</a>   
					</div>
					
					<div class="service five columns alpha">
						<div class="icon left"><img src="images/support_icon.png" alt="" /></div>
						<div class="title left">Support</div>
						<div class="description">The users can leave the feedback for us and contact detail.</div>
						<a class="more" href="#">Read more</a>    
					</div>	
				</div>

				<div class="clear"></div>
        		</div>

           <!-- END content -->
                <div class="sidebar six columns omega">
				
					<div id="news">
						<div id="heading">News & Events</div>
						<div id="content" class="six columns alpha">
							<div class="news_item">
								<div class="pic two columns">
									<img src="images/avatar1.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">August 25, 2015</div>
									<p>JETSTAR has delayed a flight from Melbourne after baggage handlers spotted residue in a plane’s cargo hold.  </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="news_item">
								<div class="pic two columns">
									<img src="images/avatar2.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">August 25, 2015</div>
									<p>A DRUNK who drove a father of three to his death following a bender on straight vodka is likely to walk free from jail in a little under two years.  </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="news_item">
								<div class="pic two columns">
									<img src="images/avatar3.png" alt="" />
								</div>
								<div class="details four columns alpha omega">
									<div class="date">August 25, 2015</div>
									<p>UNCERTAINTY remains for 100,000 tram commuters in the on-again, off-again strike that today headed to court.  </p>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="clear"></div>
							
						</div> 
					</div> 
				
				</div>
                </div>
        </div>
        <!-- END main -->

           
            <!--end-->

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
						<li><a href="http://www.melbourne.vic.gov.au">Shopping</a></li>
					</ul>
				</div>
				
				
				
				<div class="facebook_box seven columns omega">
					
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
