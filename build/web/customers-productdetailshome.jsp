<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>SnapKart | eCommerce Template</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img2/favicon.ico" rel="shortcut icon" />

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/flaticon.css" />
	<link rel="stylesheet" href="css/slicknav.min.css" />
	<link rel="stylesheet" href="css/jquery-ui.min.css" />
	<link rel="stylesheet" href="css/owl.carousel.min.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/style.css" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<!--[if lt IE 9]>
			  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>
	<!-- Page Preloder -->


	<!-- Header section -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 text-center text-lg-left">
						<!-- logo -->
						<a href="customers-home.jsp" class="site-logo">
							<!-- <img src="img2/logo.png" alt=""> -->
							<p style="font-size: xx-large; font-weight: bold; color:deeppink;">SnapKart</p>

						</a>
					</div>
					<div class="col-xl-6 col-lg-5">
						<!-- <li><a href="customers-category.jsp">Products
							<span class="new">New</span>
						</a>
							 <ul class="sub-menu">
								<li><a href="customers-productgrid.jsp">Product Grid</a></li>
								<li><a href="customers-productdetails.jsp">Product Details</a></li>
								<li><a href="customers-category.jsp">Category Page</a></li>
								<li><a href="customers-checkout.jsp">Checkout Page</a></li>
							</ul>
						</li>-->
						<form class="header-search-form">
							<!-- <div class="dropdown">
								<button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
								  Dropdown button
								</button>
								<div class="dropdown-menu">
								  <a class="dropdown-item" href="#">Link 1</a>
								  <a class="dropdown-item" href="#">Link 2</a>
								  <a class="dropdown-item" href="#">Link 3</a>
								</div>
							  </div> -->
							<input type="text" placeholder="Search on SnapKart ....">
							<button><i class="flaticon-search"></i></button>
						</form>
					</div>
					<div class="col-xl-4 col-lg-5">
						<div class="user-panel">
							<div class="up-item">
								<i class="flaticon-heart"></i>
								<a href="customers-mywishlist.jsp">My WishList</a>

								<!-- <a href="customers-myprofile.jsp">My Profile</a> -->
								<!-- <a href="#">Sign</a> In or <a href="#">Create Account</a> -->
							</div>
							<div class="up-item">
								<div class="shopping-card">
									<i class="flaticon-bag"></i>
									<span>0</span>
								</div>
								<a href="customers-mycart.jsp">Shopping Cart</a>
							</div>&nbsp; &nbsp;
							<div class="up-item">
								<img src="img2/icon1.png" width="20px" height="20px" alt="">
								<!-- <i class="fa fa-power-off" style="font-family: calibri light;"></i> -->
								<a href="index.jsp" class="mt-1">Log Out</a>
								<!-- <a href="#">Sign</a> In or <a href="#">Create Account</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="main-navbar">
			<div class="container">
				<!-- menu -->
				<ul class="main-menu">
					<li><a href="customers-home.jsp">Home</a></li>

					<li><a href="customers-category.jsp">Products
							<span class="new">New</span>
						</a>
						<!-- <ul class="sub-menu">
							<li><a href="customers-productgrid.jsp">Product Grid</a></li>
							<li><a href="customers-productdetails.jsp">Product Details</a></li>
							<li><a href="customers-category.jsp">Category Page</a></li>
							<li><a href="customers-checkout.jsp">Checkout Page</a></li>
						</ul> -->
					</li>
					<li><a href="customers-myprofile.jsp">My Profile</a></li>
					<li><a href="customers-myorders.jsp">My Order</a></li>
					<!-- <li><a href="customers-mycart.jsp">My Cart</a></li>
					<li><a href="customers-mywishlist.jsp">My WishList</a></li> -->
					<!-- <li><a href="">My Orders</a>
						<ul class="sub-menu">
							<li><a href="customers-orderlist.jsp">Order List</a></li>
							<li><a href="customers-orderdetails.jsp">Order Details</a></li>
						</ul>
					</li> -->
					<!-- <li><a href="customers-feedback.jsp">FeedBack</a></li> -->
					<!-- <li><a href="customers-contact.jsp">Contact</a></li> -->
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header section end -->


	<!-- Page info -->
	<section class="hero-section">
		<div class="banner set-bg" data-setbg="img2/pexel10.jpeg">
			<h4 class="py-4 text-white">PRODUCT DETAILS</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">Shop</a>
			</div>
		</div>
	</section>
	<!-- Page info end -->



	<!-- product section -->
	<section class="product-section mb-5">
		<div class="container">
			
            <%
       
        String userEmail = (String) session.getAttribute("userEmail");
//out.println(userEmail);
        
    %>              
                                                    
            <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%

String productid = request.getParameter("productid");
//out.println(productid);
session.setAttribute("productid", productid);
            

try {
    Connection connection = new Dbconn.dbconn().getConnection();

    // Retrieve the image and user information from the appropriate table
    String sql = "SELECT * FROM products where product_id=?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, productid);
    ResultSet resultSet = statement.executeQuery();

    // Initialize variables to store image base64 strings
    String[] imageBase64Array = new String[5]; // Assuming there are 5 images
    

    while (resultSet.next()) {
        // Fetch image data for each image
        for (int i = 1; i <= 5; i++) {
            byte[] imageBytes = resultSet.getBytes("image" + i);
            imageBase64Array[i - 1] = Base64.encodeBase64String(imageBytes);
        }
        
        String model= resultSet.getString("model");
        String quantity= resultSet.getString("quanity");
        //out.println(model);

    
%>
                        
                            
                        
                        
			<div class="row">
                            
                            
                                                                                        
              

 <div class="col-lg-6">
        <div class="product-pic-zoom">
            <!-- Display the first image -->
            <img class="product-big-img" src="data:image/jpeg;base64,<%=imageBase64Array[0]%>" alt="">
        </div>
        <div class="product-thumbs" tabindex="1" style="overflow: hidden; outline: none;">
            <div class="product-thumbs-track">
                <!-- Display thumbnails for all images -->
                <% for (int i = 1; i <= 5; i++) { %>
                    <div class="pt" data-imgbigurl="data:image/jpeg;base64,<%=imageBase64Array[i - 1]%>">
                        <img src="data:image/jpeg;base64,<%=imageBase64Array[i - 1]%>" alt="">
                    </div>
                <% } %>
            </div>
        </div>
    </div>
                 
        <%
// Assuming resultSet is your ResultSet object containing price and discount columns   
double originalPrice = Double.parseDouble(resultSet.getString("price"));
double discountPercentage = Double.parseDouble(resultSet.getString("discount"));
double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");

// Calculate discounted price and saving amount
double discountedPrice = originalPrice - (originalPrice * (discountPercentage / 100));
double savingAmount = originalPrice - discountedPrice;
%>                    
                            
                            
				<div class="col-lg-6 product-details">
					<h2 class="p-title"><%=model%> (<%= resultSet.getString("ram")%> RAM, <%= resultSet.getString("storage")%> ROM) with <%= resultSet.getString("os")%>
						</h2>
					<p style="font-size: 12px;">M.R.P:&#8377 <span style="color:darkorange;"> <%= originalPrice %></span> <br> Deal Price:&#8377
						<span style="color: blue;"><%= discountedPrice %></span> <br> You Save:&#8377 <span style="color: blue;"><%= savingAmount %></span>
					</p>
					
					<h4 class="p-stock" style="font-size: 13px;">Available: <span
							style="font-size: 13px; color:rgb(112, 212, 12);"><%= resultSet.getString("availability")%></span></h4>
					<div class="p-rating">
						<i class="fa fa-star-o"></i>
						<i class="fa fa-star-o"></i>
						<i class="fa fa-star-o"></i>
						<i class="fa fa-star-o"></i>
						<i class="fa fa-star-o fa-fade"></i>
					</div>
					<div class="p-review">
						<a href="">3 reviews</a>|<a href="customers-feedback.jsp?&email=<%=userEmail%>&productid=<%=productid%>&category=Unorder">Add your review</a>
					</div>
                                         <style>
    .small-round-button {
        display: inline-block;
        padding: 3px 7px; /* Adjust padding to make the button smaller or larger */
        border: 1px solid #ccc; /* Thin border */
        border-radius: 30%; /* Make it round */
        background-color: #f0f0f0; /* Background color */
        cursor: pointer;
        text-decoration: none; /* Remove default underline */
        
        
        
        
        .quantity .pro-qty {
	width: 94px;
	height: 36px;
	border: 1px solid #ddd;
	padding: 0 15px;
	border-radius: 40px;
	float: left;
}
    }
</style>  
					<div class="quantity">
						<p>Quantity</p>
<!--						<div class="pro-qty"><input type="text" value="1"></div>-->
                                                        <div >
                                           
<!--                                                  <form action="updatequantity2.jsp?price=<%=price%>&discount=<%=discount%>&productid=<%= resultSet.getInt("product_id")%>" method="post">
                                                        <div class="pro-qty">
                                                                                        
                                                       <input type="text" name="quantity" value="<%=quantity%>">
                                                              </div>
                                                        <input type="submit" class="small-round-button" value="Go">
                                                      </form> -->
                                                            
                                        </div>
						
						<a href="add-to-mycartprodetails.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>">
							<button class="btn btn-primary ml-3 flaticon-bag"
								style="border-radius: 40px; height: 35px;">Add to cart</button>
						</a>
                                            
						<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>">
							<button class="btn btn-secondary ml-3 flaticon-heart"
								style="border-radius: 40px; height: 35px; color: white; border-color: rgb(227, 228, 230);">&nbsp;
								Add to Wishlist</button>
						</a>
          

						<!-- <div class="pro-qty"><input type="text" value="1"></div> -->
					</div>
					<a href="add-to-mycartprodetails_1.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="site-btn"><i class="fa-solid fa-cart-shopping"></i>Check Out</a>
					<div id="accordion" class="accordion-area">
						<div class="panel">
							<div class="panel-header" id="headingOne">
								<button class="panel-link active" data-toggle="collapse" data-target="#collapse1"
									aria-expanded="true" aria-controls="collapse1">About this Product:</button>
							</div>
							<div id="collapse1" class="collapse show" aria-labelledby="headingOne"
								data-parent="#accordion">
								<div class="panel-body">
									<ul>
										<li>
											Product : <%= resultSet.getString("product")%>
										</li>
										<li>
											Brand : <%= resultSet.getString("brand")%>
										</li>
										<li>
											Model : <%= resultSet.getString("model")%>
										</li>
										<li>
											Memory Storage : <%= resultSet.getString("storage")%>
										</li>
										<li>
											Dimensions : <%= resultSet.getString("dimensions")%>
										</li>
										<li>
											Wireless Charging : <%= resultSet.getString("wirelesscharging")%>
										</li>
										<li>
											Processor : <%= resultSet.getString("processor")%>
										</li>
										<li>
											RAM : <%= resultSet.getString("ram")%>
										</li>
										<li>
											Display :  <%= resultSet.getString("display")%>
										</li>
										<li>
											Quantity : <%= resultSet.getString("quanity")%>
										</li>
										<li>
											Shipping : <%= resultSet.getString("shipping")%>
										</li>
									</ul>
									<!-- <h6 class="text-primary"> <a href="">See more details:</a> </h6> -->
								</div>
							</div>
						</div>

						<div class="panel">
							<div class="panel-header" id="headingThree">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse3"
									aria-expanded="false" aria-controls="collapse3">shipping & Returns</button>
							</div>
							<div id="collapse3" class="collapse" aria-labelledby="headingThree"
								data-parent="#accordion">
								<div class="panel-body">
									<h4>7 Days Returns</h4>
									<p>Cash on Delivery Available<br>Free Home Delivery <span>3 - 4 days</span></p>
									<p>Cash on Delivery Available<br>Immediate Home Delivery <span>1 day </span><span
											style="font-size: 20px;">₹120</span></p>


									<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so
										dales. Phasellus sagittis auctor gravida. Integer bibendum sodales arcu id te
										mpus. Ut consectetur lacus leo, non scelerisque nulla euismod nec.</p> -->
								</div>
							</div>
						</div>
					</div>
					<div class="social-sharing">
						<a href=""><i class="fa fa-google-plus"></i></a>
						<a href=""><i class="fa fa-pinterest"></i></a>
						<a href=""><i class="fa fa-facebook"></i></a>
						<a href=""><i class="fa fa-twitter"></i></a>
						<a href=""><i class="fa fa-youtube"></i></a>
					</div>
				</div>
			</div>
<%
    }
    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (SQLException e) {
    e.printStackTrace();
out.println(e);
}
%>          
    
		</div>
	</section>
	<!-- product section end -->

	<!-- Footer section -->
	<section class="footer-section">
		<div class="container">
			<h2
				style="color: yellowgreen; text-align: center; font-family:sans-serif; font-size: xx-large; margin-bottom: 30px;">
				SNAPKART</h2>

			<div class="row">
				<div class="col-lg-3 col-sm-6" style="height: 320px;">
					<div class="footer-widget about-widget">
						<h2 style="color:slateblue;">About</h2>
						<p style="color: white; font-family: sans-serif ; font-size: large;">Our's Business is
							completely based on mobile's, headsets, earphones, buds, watches, charges, adapters, USB
							cables, mobile back covers.</p>
						<img src="img2/cards.png" alt="">
					</div>
				</div>
				<!-- <div class="col-lg-1  col-sm-6"></div> -->
				<div class="col-lg-3 col-sm-6" style="height: 320px;">
					<div class="footer-widget about-widget">

						<ul class="ml-5">
							<h2 class="" style="color:slateblue;">Dasboard</h2>
							<li class="">
								<a href="customers-home.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Home</a>
							</li>
							<li class="">
								<a href="customers-category.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Product</a>
							</li>
							<li class="">
								<a href="customers-myprofile.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">My Profile</a>
							</li>
							<li class="">
								<a href="customers-orderlist.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">My Order</a>
							</li>
							<li class="">
								<a href="customers-feedback.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Feedback</a>
							</li>
							<!-- <li class="ml-5"><a href="customers-contact.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">Contact</a></li> -->
						</ul>

					</div>
				</div>
				<div class="col-lg-3 col-sm-6" style="height: 320px;">
					<div class="footer-widget about-widget">
						<h2 style="color:slateblue;">Get In Touch</h2>
						<div class="fw-latest-post-widget">
							<div class="lp-item">
								<!-- <div class="lp-thumb set-bg" data-setbg="img2/blog-thumbs/1.jpg"></div> -->
								<div class="">
									<h6 style="color: yellowgreen; font-family:sans-serif ; font-size: large;"> Email:
										snapkart@gmail.com </h6>
									<span style="color: white; font-family: sans-serif ; font-size: large;">+91 -6300
										568 265</span>
									<!-- <a href="#" class="readmore">Read More</a> -->
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6" style="height: 320px;">
					<div class="footer-widget about-widget">
						<h2 style="color:slateblue;">Address</h2>
						<div class="fw-latest-post-widget">

							<div class="lp-item">
								<!-- <div class="lp-thumb set-bg" data-setbg="img2/blog-thumbs/2.jpg"></div> -->
								<div class="lp-content">
									<!-- <span style="font-size: 15px;">Address</span> -->
									<p style="color: white; font-family: sans-serif ; font-size: large;">Address: Head
										Office: Patna Colony, Hariyan Street, Bhopal Road, Mumbai - 500078</p>
									<p style="color: white; font-family: sans-serif ; font-size: large;">Branches:
										Hyderbad, Mumbai, Bangalore, Delhi, Kerala, Uttarpradesh.</p>
									<!-- <span>Oct 21, 2018</span> -->
									<!-- <a href="#" class="readmore">Read More</a> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<p class="text-white text-center mt-5" style="font-size: 15px;">Copyright &copy;
						<script>document.write(new Date().getFullYear());</script> <a class="border-bottom text-primary"
							href="#">Fake Reviews Detection in eCommerce Websites</a>, All rights reserved | <br> This
						template is made with by <a class="border-bottom text-primary"
							href="https://codebook.in/">Codebook</a>
					</p>
				</div>
				<!-- <div class="col-lg-4 col-sm-6">
					<div class="footer-widget contact-widget">
						<h2>Questions</h2>
						<div class="con-info">
							<span>C.</span>
							<p>Your Company Ltd </p>
						</div>
						<div class="con-info">
							<span>B.</span>
							<p>1481 Creekside Lane  Avila Beach, CA 93424, P.O. BOX 68 </p>
						</div>
						<div class="con-info">
							<span>T.</span>
							<p>+53 345 7953 32453</p>
						</div>
						<div class="con-info">
							<span>E.</span>
							<p>office@youremail.com</p>
						</div>
					</div>
				</div> -->
			</div>

		</div>

	</section>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>