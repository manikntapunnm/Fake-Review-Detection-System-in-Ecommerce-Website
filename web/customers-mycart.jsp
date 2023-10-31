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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
			<h4 class="py-4 text-white">MY CART</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">My Cart</a>
			</div>
		</div>
	</section>
	<!-- Page info end -->


	<!-- cart section end -->
	<section class="cart-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="cart-table">
						<h3>Your Cart</h3>
						<div class="cart-table-warp">
							<table>
								<thead>
									<tr>
										<th class="product-th">Product</th>
										<th class="quy-th">Quantity</th>
										<!-- <th class="size-th">SizeSize</th> -->
										<th class="total-th">Price</th>
                                                                                <th class="total-th"></th>
									</tr>
								</thead>
								<tbody>
                                                                    
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
                                                                    
                                                                     <%
       
        String userEmail = (String) session.getAttribute("userEmail");

        
    %>
                                                                      <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%

double totalPrice = 0.0;
 //price = 0.0;
double discount = 0.0;

String cartid=null;
try {
    Connection connection = new Dbconn.dbconn().getConnection(); // Remove "dbconn." before "getConnection()"

    // Retrieve the image and user information from the appropriate table
    String sql = "SELECT c.product_id,c.quantity,c.cart_id,c.email,c.actualprice , p.* FROM cart c JOIN products p ON c.product_id = p.product_id WHERE c.email = ? and c.checkstatus='Pending'";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, userEmail);
        ResultSet resultSet = statement.executeQuery();

    while (resultSet.next()) {
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
        double price = resultSet.getDouble("price");
     
        
        discount = resultSet.getDouble("discount");
        int quantity = resultSet.getInt("quantity");
                double actualPrice = resultSet.getDouble("actualprice");
       
        totalPrice += actualPrice;
        cartid=resultSet.getString("cart_id"); 
        
%>
                                                                    
                                                                  
									<tr>
										<td class="product-col">
											<img src="data:image/jpeg;base64,<%= imageBase64%>"  height="100px" alt="">
											<div class="pc-title">
												<h4><%= resultSet.getString("product")%></h4>
												<!-- <p>800</p> -->
											</div>
										</td>
										<td class="quy-col">
											<div class="quantity">
                                                                                            
                                                                                    <form action="updatequantity.jsp?cartid=<%= resultSet.getString("cart_id")%>&price=<%=price%>&discount=<%=discount%>" method="post">
                                                                                        <div class="pro-qty">
                                                                                            <!-- Use "quantity" as the name attribute to capture user input -->
                                                                                            <input type="text" name="quantity" value="<%=quantity%>">
                                                                                        </div>
                                                                                        <input type="submit" class="small-round-button" value="Go">
                                                                                    </form>

											</div>
										</td>
										<!-- <td class="size-col"><h4>Size M</h4></td> -->
										<td class="total-col">
										<h4>  &#8377<span> <%=actualPrice%></span></h4>
										</td>
                                                                                
                                                                           
                                                                                
                                                                                
                                                                              <!--td class="shoping__cart__item__close">
                                                                            <a href="delete.jsp?cartid=<%= resultSet.getString("cart_id")%>">
                                                                                <span class="icon_close"></span>
                                                                                <i class="fas fa-window-close"></i>
                                                                            </a>
                                                                        </td-->
                                                                              
                                                                              <td class="shoping__cart__item__close">
    <a href="#" onclick="confirmDelete('<%= resultSet.getString("cart_id") %>')">
        <span class="icon_close"></span>
        <i class="fas fa-window-close"></i>
    </a>
</td>

<script>
    function confirmDelete(cartId) {
        var confirmDelete = confirm("Are you sure you want to delete this item from the cart?");
        if (confirmDelete) {
            // User clicked OK, redirect to delete.jsp with the cartid
            window.location.href = "delete.jsp?cartid=" + cartId;
        } else {
            
        }
    }
</script>


									</tr>
                                                                        
                                                                        
                                                                        
                                                                                                                                                                                                                                                              <%
    }
%>

								
								</tbody>
							</table>
						</div>
						<div class="total-cost">
							<h6>Total <span>&#8377 <%= totalPrice %></span></h6>
						</div>
					</div>
				</div>
				<div class="col-lg-4 card-right">
					
<!--					<a href="orderingaction.jsp?email=<%=userEmail%>&totalprice=<%= totalPrice %>" class="site-btn">Proceed to checkout</a>-->
                                    <a href="#" onclick="confirmCheckout('<%=userEmail%>', '<%=totalPrice %>');" class="site-btn">Proceed to checkout</a>

<script>
function confirmCheckout(userEmail, totalPrice) {
    // Display a confirmation dialog
    var confirmation = confirm("Are you sure you want to proceed to checkout?\nEmail: " + userEmail + "\nTotal Price: " + totalPrice);

    // If the user clicks OK, proceed to the checkout page
    if (confirmation) {
        window.location.href = "orderingaction.jsp?email=" + userEmail + "&totalprice=" + totalPrice;
    }
}
</script>

					<a href="customers-category.jsp" class="site-btn sb-dark">Continue shopping</a>
				</div>
			</div>
		</div>
                                        <%
    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (SQLException e) {
    e.printStackTrace();
}
%>
	</section>
	<!-- cart section end -->

        
             <style>
    .product-list-container {
        max-height: 500px; /* Set the desired height */
        overflow-y: auto;  /* Enable vertical scrollbar if content overflows */
    }
</style>
        
        
        
	<!-- Related product section -->
	<section class="related-product-section">
		<div class="container">
			<div class="section-title text-uppercase">
				<h2>Continue Shopping</h2>
			</div>
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
        byte[] imageBytes = resultSet.getBytes("image1");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
          double price = resultSet.getDouble("price");
%>
				<div class="col-lg-3 col-sm-6">
					<div class="product-item">
						<div class="pi-pic">
							<div class="tag-new">New</div>
							<img src="data:image/jpeg;base64,<%= imageBase64%>" width="250px" height="250px" alt="">
							<div class="pi-links">
								<a href="add-to-mycartcart.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>&price=<%=price%>&discount=<%=discount%>" class="add-card"><i class="flaticon-bag"></i><span>ADD
										TO
										CART</span></a>
								<a href="add-to-mywishlistcart.jsp?productid=<%= resultSet.getInt("product_id")%>&email=<%=userEmail%>" class="wishlist-btn"><i
										class="flaticon-heart"></i></a>
							</div>
						</div>
<!--						<div class="pi-text">
							<h6>$35,00</h6>
							<p>Black and White Stripes Dress</p>
						</div>-->
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
	<!-- Related product section end -->



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