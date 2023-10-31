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
	<link rel="stylesheet" href="css/feedback.css">

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>

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
			<h4 class="py-4 text-white">FEEDBACK</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">Feedback</a>
			</div>
		</div>
	</section>
	<!-- Page info end -->
    <%
                        String email= request.getParameter("email");
                        String productid= request.getParameter("productid");
                        String cartid= request.getParameter("cartid");
                        String orderid= request.getParameter("orderid");
                        String category= request.getParameter("category");
                        out.println(category);
                        %>
	<div class="container d-flex justify-content-center mt-5">

		<div class="card text-center mb-5">
                
                    
                                   <%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, org.apache.commons.codec.binary.Base64" %>
<%

try {
    Connection connection = new Dbconn.dbconn().getConnection();

    String sql = "SELECT * FROM customers  where email=?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, email);
    ResultSet resultSet = statement.executeQuery();
%>
 <%
                     while (resultSet.next()) {
        byte[] imageBytes = resultSet.getBytes("image");
        String imageBase64 = Base64.encodeBase64String(imageBytes);
                   %>
                    
                    

			<div class="circle-image">
				<img src="data:image/jpeg;base64,<%= imageBase64%>" width="50">
			</div>

			<span class="dot"></span>

			<span class="name mb-1  fw-500 mb-2" style="font-family: calibri; font-size: 25px;"><%= resultSet.getString("firstname")%></span>
			<span class="name mb-1  fw-500" style="font-family: calibri; font-size: 25px;"><%= resultSet.getString("userid")%></span>

             <%
    }


%>

                        <%
                            
    // Close resources
    resultSet.close();
    statement.close();
    connection.close();
} catch (SQLException e) {
    e.printStackTrace();
}
                            %>


			<div class="rate  py-3 text-white mt-3" style="background-color:rgb(75, 134, 211)">

				<h6 class="mb-0">Please share your opinion about the product and services, so that we can update
					anything depends on your opinion.</h6>
                            <br>
                            
                            
                            
                            
                            
                            
                                  <style>
                .star {
    font-size: 24px; /* Adjust the font-size to change the star size */
    color: grey; /* Inactive stars color */
    cursor: pointer;
}

.star.active {
    color: orange; /* Active stars color */
}

            </style>
                            
                            <form action="feedback-action.jsp" method="post">

				 <input type="hidden" name="email" value="<%=email%>" required >
                                <input type="hidden" name="productid" value="<%=productid%>" required>
                                <input type="hidden" name="cartid" value="<%=cartid%>" required>
                                  <input type="hidden" name="orderid" value="<%=orderid%>" required>
                                   <input type="hidden" name="category" value="<%=category%>" required>
                                <input type="hidden" name="rating" value="0" required>
                                <div class="product__details__rating"  >
                                    <i class="fa fa-star star" data-value="1"></i>
                                    <i class="fa fa-star star" data-value="2"></i>
                                    <i class="fa fa-star star" data-value="3"></i>
                                    <i class="fa fa-star star" data-value="4"></i>
                                    <i class="fa fa-star star" data-value="5"></i>

                                    <span>Ratings</span>
                                </div><br>

                            
                            
                            
                            
			<textarea name="message" placeholder="Your message" required ></textarea>



				<div class="buttons px-4 mt-0">

					<button type="submit" class="btn btn-block rating-submit" style="background-color:rgb(250, 62, 150)">Submit
						FeedBack</button>

				</div>

                            </form>
                            
                            
                            <script>
    const stars = document.querySelectorAll('.star');
    const ratingContainer = document.querySelector('.product__details__rating');
    const ratingSpan = ratingContainer.querySelector('span');
    const ratingInput = document.querySelector('input[name="rating"]');

    stars.forEach(star => {
        star.addEventListener('click', () => {
            const value = parseFloat(star.getAttribute('data-value'));

            // Update the hidden input with the selected value
            ratingInput.value = value;

            // Toggle active (warning color) and inactive (grey) stars
            stars.forEach(s => {
                const sValue = parseFloat(s.getAttribute('data-value'));
                s.classList.toggle('active', sValue <= value);
            });
        });
    });
</script>
			</div>






		</div>



	</div>
	<br><br>
	<!-- Footer section -->
	<section class="footer-section mt-5 py-5">
		<div class="container">
			<div class="footer-logo text-center">
				<a href="index.jsp" style="font-size: 30px; color: yellowgreen">SNAPKART</a>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="footer-widget about-widget">
						<h2 style="color:slateblue;">About</h2>
						<p style="color: white; font-family: Corbel Light ; font-size: large;">Our's Business is
							completely based on mobile's, headsets, earphones, buds, watches, charges, adapters, USB
							cables, mobile back covers.</p>
						<img src="img2/cards.png" alt="">
					</div>
				</div>
				<!-- <div class="col-lg-1  col-sm-6"></div> -->
				<div class="col-lg-4 col-sm-6">
					<div class="footer-widget about-widget">

						<ul class="ml-5">
							<h2 class="ml-5" style="color:slateblue;">Dasboard</h2>
							<li class="ml-5"><a href="customers-home.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">Home</a></li>
							<li class="ml-5"><a href="customers-productlist.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">Product</a></li>
							<li class="ml-5"><a href="customers-mycart.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">My Cart</a></li>
							<li class="ml-5"><a href="customers-mywishlist.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">My WishList</a>
							</li>
							<li class="ml-5"><a href="customers-orderlist.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">My Order</a></li>
							<li class="ml-5"><a href="customers-feedback.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">Feedback</a></li>
							<li class="ml-5"><a href="customers-contact.jsp"
									style="color: white; font-family: Corbel Light; font-size: large;">Contact</a></li>
						</ul>

					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="footer-widget about-widget">
						<h2 style="color:slateblue;">Get In Touch</h2>
						<div class="fw-latest-post-widget">
							<div class="lp-item">
								<!-- <div class="lp-thumb set-bg" data-setbg="img2/blog-thumbs/1.jpg"></div> -->
								<div class="">
									<h6 style="color: yellowgreen; font-family:Corbel Light; font-size: large;"> Email:
										snapkart@gmail.com </h6>
									<span style="color: white; font-family: Corbel Light; font-size: large;">+91 -6300
										568 265</span>
									<!-- <a href="#" class="readmore">Read More</a> -->
								</div>
							</div>
							<div class="lp-item">
								<!-- <div class="lp-thumb set-bg" data-setbg="img2/blog-thumbs/2.jpg"></div> -->
								<div class="lp-content">
									<!-- <span style="font-size: 15px;">Address</span> -->
									<p style="color: white; font-family: Corbel Light; font-size: large;">Address: Head
										Office: Patna Colony, Hariyan Street, Bhopal Road, Mumbai - 500078</p>
									<p style="color: white; font-family: Corbel Light; font-size: large;">Branches:
										Hyderbad, Mumbai, Bangalore, Delhi, Kerala, Uttarpradesh.</p>
									<!-- <span>Oct 21, 2018</span> -->
									<!-- <a href="#" class="readmore">Read More</a> -->
								</div>
							</div>
						</div>
					</div>
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
		<div class="social-links-warp">
			<div class="container">
				<div class="social-links">
					<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
					<a href="" class="google-plus"><i class="fa fa-google-plus"></i><span>g+plus</span></a>
					<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
					<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
					<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>
					<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>
					<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>
				</div>

				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				<p class="text-white text-center mt-5" style="font-size: 20px;">Copyright &copy;
					<script>document.write(new Date().getFullYear());</script> <a class="border-bottom text-primary"
						href="#">Fake Reviews Detection in eCommerce Websites</a>, All rights reserved | <br> This
					template is made with by <a class="border-bottom text-primary"
						href="https://codebook.in/">Codebook</a>
				</p>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

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