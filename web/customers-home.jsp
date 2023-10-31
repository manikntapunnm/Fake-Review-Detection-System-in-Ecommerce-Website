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
	<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> -->

	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
    
     <%
       
        String userEmail = (String) session.getAttribute("userEmail");

        
    %>

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
				
						<form class="header-search-form">
					
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
					<!-- <li><a href="customers-mycart.jsp">My Cart</a></li>
				<li><a href="customers-mywishlist.jsp">My WishList</a></li> -->
					<li><a href="customers-myorders.jsp">My Order</a></li>
					<!-- <li><a href="customers-feedback.jsp">FeedBack</a></li> -->
					<!-- <li><a href="customers-contact.jsp">Contact</a></li> -->
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header section end -->

	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg " data-setbg="img2/about1.jpg">
				<div class="container mb-5">
					<div class="row mb-5">
						<div class="col-xl-6 col-lg-7 mt-2 text-white">
							<span class="text-white">New Arrivals</span><br>
							<h4>Latest Mobiles, Buds, Watches, Charges, USB cables, Adapters, lot more,. etc.</h4><br>

							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p> -->
							<a href="#" class="site-btn sb-line" style="color:black;">DISCOVER</a>
							<a href="#" class="site-btn sb-white" style="color:black;">ADD TO CART</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span style="font-size: 20px;">from</span>
						<h2 style="font-size: 20px;">26,999</h2>
						<p style="font-size: 20px;">SHOP NOW</p>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img2/px4.jpeg">
				<div class="container mb-5">
					<div class="row mb-5">
						<div class="col-xl-6 col-lg-7 mt-2 text-white">
							<span class="text-white">New Arrivals</span><br>
							<h4>Latest Mobiles, Buds, Watches, Charges, USB cables, Adapters, lot more,. etc.</h4><br>

							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p> -->
							<a href="#" class="site-btn sb-line" style="color:black;">DISCOVER</a>
							<a href="#" class="site-btn sb-white" style="color:black;">ADD TO CART</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span style="font-size: 20px;">from</span>
						<h2 style="font-size: 20px;">69,800</h2>
						<p style="font-size: 20px;">SHOP NOW</p>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img2/pexel10.jpeg">
				<div class="container mb-5">
					<div class="row mb-5">
						<div class="col-xl-6 col-lg-7 mt-2 text-white">
							<span class="text-white">New Arrivals</span><br>
							<h4>Latest Mobiles, Buds, Watches, Charges, USB cables, Adapters, lot more,. etc.</h4><br>

							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p> -->
							<a href="#" class="site-btn sb-line" style="color:black;">DISCOVER</a>
							<a href="#" class="site-btn sb-white" style="color:black;">ADD TO CART</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span style="font-size: 20px;">from</span>
						<h2 style="font-size: 20px;">36,900</h2>
						<p style="font-size: 20px;">SHOP NOW</p>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img2/watch.jpg" height="300px">
				<div class="container mb-5">
					<div class="row mb-5">
						<div class="col-xl-6 col-lg-7 mt-2 text-Black">
							<span class="text-Black">New Arrivals</span><br>
							<h4 class="text-Black">Latest Mobiles, Buds, Watches, Charges, USB cables, Adapters, lot
								more,. etc.</h4><br>

							<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p> -->
							<a href="#" class="site-btn sb-line" style="border-color: black; color: Black;">DISCOVER</a>
							<a href="#" class="site-btn sb-white" style="color: white; background: black;">ADD TO
								CART</a>
						</div>
					</div>
					<div class="offer-card text-white">
						<span style="font-size: 20px;">from</span>
						<h2 style="font-size: 20px;">29,999</h2>
						<p style="font-size: 20px;">SHOP NOW</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="slide-num-holder" id="snh-1"></div>
		</div>
	</section>
	<!-- Hero section end -->
	<br>
	<br>
        <style>
    .product-list-container {
        max-height: 500px; /* Set the desired height */
        overflow-y: auto;  /* Enable vertical scrollbar if content overflows */
    }
</style>

	<!-- Product filter section -->
	<section class="product-filter-section mt-5">

                   <div class="container "> 
                       
                       
                       

    <div class="section-title">
        <h2 style="font-family: Calibri Light;">BROWSE TOP SELLING PRODUCTS</h2>
    </div>
    <ul class="product-filter-menu">
        <li><a href="#">MOBILES</a></li>
        <li><a href="#">EARPHONES</a></li>
        <li><a href="#">LAPTOPS</a></li>
        <li><a href="#">TABLETS</a></li>
        <li><a href="#">Fitness Bands</a></li>
        <li><a href="#">Smart Watches</a></li>
    </ul>



                    
                    
                    
                    
			<div class="row product-list-container">
                            
                            
                            
  <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
     double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
                            
                            
                            
                           

				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>"  style="width:350px; height:350px;" alt="hello.jpg"></a>
							<div class="pi-links">
								<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD
										TO
										CART</span></a>
								<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>

                                                                <a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a>
							</div>
						</div>
						<div class="pi-text">
                                                    <h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>          
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                      
			</div>



                </div>





		
	</section>
	<!-- Product filter section end -->

	<!-- letest phone covers -->
	<section class="top-letest-product-section mt-5">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST PHONES</h2>
			</div>

			<div class="product-slider owl-carousel">
                            
               <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='mobiles'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
             
                            
                            
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px" height="350px" alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
						<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>          
          
                            
                            
                            
			</div>
		</div>
	</section>
        
        
        
        	<section class="top-letest-product-section mt-5">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST TABLETS</h2>
			</div>

			<div class="product-slider owl-carousel">
                            
                            
                                                             <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='tablets'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
             
                            
                            
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px" height="350px" alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
						<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>                    
                            
                            
			
                            
                            
                            
                            
	
	
				
			</div>
		</div>
	</section>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
	<!-- letest phone covers end -->

	<!-- letest Mobiles -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST LAPTOPS</h2>
			</div>

			<div class="product-slider owl-carousel">
                            
 <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='laptops'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>    
                            
                            
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px" height="350px"
								alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
							<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>                    
    




<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/phone1.webp" width="250px" height="350px"
								alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹18,650.00</h6>
						<p>Redmi S7 Mobile</p>
					</div>
				</div>-->

<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/oppo1.jpeg" width="250px" height="350px"
								alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹24,950.00</h6>
						<p>Oppo X19S Mobile</p>
					</div>
				</div>-->
                                    
<!--                                   <div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/samsung2.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹21,990.00</h6>
						<p>Samsung J10 Mobile</p>
					</div>
				</div>-->
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/iphone4.jpg" width="250px" height="350px"
								alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹71,000.00</h6>
						<p>IPhone 14 Pro Cover</p>
					</div>
				</div>-->
			</div>
		</div>
	</section>
	<!-- letest mobiles end -->



	<h2 style="font-family: Calibri Light; text-align: center;" class="py-5 mt-5">CREATING A MILLION EXPERIENCES AND
		SMILES</h2>
	<section class="hero-section">
		<div class="banner set-bg" data-setbg="img2/pexel10.jpeg">
			<div class="row">
				<div class="col-3">
					<div class="">
						<h4 class="card-title text-center">
							<span class="text-warning" style="font-weight: 20px;">9 Years</span>
							<span class="text-white">of Excellence <br> in service</span> <br>
						</h4>
					</div>
				</div>

				<div class="col-3">
					<div class="">
						<h4 class="card-title text-center"> <br>
							<span class="text-warning">10+</span>
							<span class="text-white">States </span><br>
						</h4>
					</div>
				</div>
				<div class="col-3">
					<div class="">
						<h4 class="card-title text-center"> <br>
							<span class="text-warning">22+</span>
							<span class="text-white">Cities</span> <br>
						</h4>
					</div>
				</div>
				<div class="col-3">
					<div class="">
						<h4 class="card-title text-center">
							<span class="text-warning">2 Crore+</span>
							<span class="text-white">Satisfied <br> Customers</span>
						</h4>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<!-- letest Earphones -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST EARPHONES</h2>
			</div>

    
			<div class="product-slider owl-carousel">
                            
                              <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='audio'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
						<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/earphones.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,250.00</h6>
						<p>Iphone 13 Earphones</p>
					</div>
				</div>-->
				<!--div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/earphone5.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹950.00</h6>
						<p>Oppo J9 Earphones</p>
					</div>
				</div-->
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/earphone4.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,250.00</h6>
						<p>LG K10 Earphones</p>
					</div>
				</div>-->
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/earphone2.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,250.00</h6>
						<p>IPhone 13Max Pro Cover</p>
					</div>
				</div>-->
			</div>
		</div>
	</section>
	<!-- letest earphones end -->

	<!-- letest Earphones -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST FITNESS BANDS</h2>
			</div>

			<div class="product-slider owl-carousel">
                            
                                                          <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='fitness bands'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
                            
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px" height="350px"
								alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
						<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>               
                            
                            
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/oppo-cable2.jpg" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹450.00</h6>
						<p>Oppo Cable</p>
					</div>
				</div>-->
				<!--div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/charger3.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹950.00</h6>
						<p>Redmi Charger</p>
					</div>
				</div-->
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/charger2.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,250.00</h6>
						<p>LG charger</p>
					</div>
				</div>-->
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/charger1.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,250.00</h6>
						<p>Samsung Charger</p>
					</div>
				</div>-->
			</div>
		</div>
	</section>
	<!-- letest earphones end -->

	<!-- letest watches -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2 style="font-family: Calibri Light;">LATEST SMART WATCHES</h2>
			</div>

			<div class="product-slider owl-carousel">
                            
                           <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%


try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
   String sql = "SELECT * FROM products where category='Smart Watches'";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
      double price = resultSet.getDouble("price");
        double discount = resultSet.getDouble("discount");
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
%>
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="add-to-mycarthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
												<a href="add-to-mywishlisthome.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
										<a href="customers-productdetailshome.jsp?productid=<%= resultSet.getString("product_id")%>" class="wishlist-btn"><i
										class="fa fa-eye"></i></a></div>
					</div>
					<div class="pi-text">
						<h6>&#8377<span><%= resultSet.getString("price")%></span></h6>
							<p><%= resultSet.getString("category")%></p>
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
}
%>  
<!--				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/watch-s2.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,850.00</h6>
						<p>Smart Watch</p>
					</div>
				</div>
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/watch-s3.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,950.00</h6>
						<p>Smart Watch</p>
					</div>
				</div>
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/watch-s4.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,550.00</h6>
						<p>Smart Watch</p>
					</div>
				</div>
				<div class="product-item">
					<div class="pi-pic">
						<a href="customers-productdetails.jsp"><img src="img2/watch-s5.webp" width="250px"
								height="350px" alt=""></a>
						<div class="pi-links">
							<a href="customers-mycart.jsp" class="add-card"><i class="flaticon-bag"></i><span>ADD TO
									CART</span></a>
							<a href="customers-mywishlist.jsp" class="wishlist-btn"><i class="flaticon-heart"></i></a>

							<a href="customers-productdetails.jsp" class="wishlist-btn"><i class="fa fa-eye"></i></a>
						</div>
					</div>
					<div class="pi-text">
						<h6>₹1,950.00</h6>
						<p>Smart Watch</p>
					</div>
				</div>-->
			</div>
		</div>
	</section>
	<!-- letest watches end -->


	<div class="text-center pt-5 mb-5">
		<button class="site-btn sb-line sb-dark mb-5">LOAD MORE</button>
	</div>


	<!-- Banner section -->
	<section class="banner-section mt-5">
		<div class="container">
			<div class="banner set-bg" data-setbg="img2/foldable5.png" style="height: 200px;">
				<div class="tag-new mt-5">NEW</div>
				<span class="text-white">New Arrivals</span>
				<h3 STYLE="color: white;">FOLDABLE MOBILES</h3>
				<a href="#" class="site-btn">SHOP NOW</a>
			</div>
		</div>
	</section>
	<!-- Banner section end  -->

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