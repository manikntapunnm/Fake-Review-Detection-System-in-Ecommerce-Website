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
			<h4 class="py-4 text-white">ORDER LIST</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">Order List</a>
			</div>
		</div>
	</section>
	<!-- Page info end -->

	<section class="cart-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cart-table card-body">
						<h3>Orders List History</h3>
						<div class="table-responsive text-nowrap">
							<table class="table table-bordered">
								<thead>
									<tr>
										<!-- <th class="product-th">Product</th> -->
										<!-- <th class="Profile">profile</th> -->
										<th style="font-size:larger;">Order ID</th>
										<th style="font-size:larger;">Date</th>
										<th style="font-size:larger;">Ship To</th>
										<th style="font-size:larger;">Review</th>
										<th style="font-size:larger;">Status</th>
										<td style="font-size:larger;">View</td>
										<th style="font-size:larger;">Price</th>

										<!-- <th class=""></th> -->
									</tr>
								</thead>
								<tbody>

									<tr>

										<td>
											<!-- <input type="checkbox"> -->
											#2400
										</td>
										<td>20/05/2022</td>
										<td>Ricky Street, <br> Avenue Colony, <br> Pandiya Road, <br>
											Gujarat - 500043 </td>
										<td> <textarea name="" id="" rows="2"></textarea> </td>
										<td class="mr-5 ml-5">
											<label class="form-label badge" for="form3Example1q"
												style="height: 20px; border-radius: 5px;  background-color:rgb(186, 186, 240);"><a
													href="" style="color:midnightblue;">Processing</a></label>
										</td>
										<td class="mr-5 ml-5">
											<label class="form-label badge" for="form3Example1q"
												style="height: 20px; border-radius: 5px;  background-color: rgb(255, 191, 225);"><a
													href="customers-orderdetails.jsp"
													style="color:rgba(214, 16, 122, 0.938);">View</a></label>
										</td>
										<td class="total-col">
											<h4>11,999</h4>
										</td>
									</tr>
									<tr>
										<td>
											<!-- <input type="checkbox"> -->
											#2401
										</td>
										<td>21/05/2022</td>
										<td>Gandhi Street, <br> Bhavan Colony, <br> Nampally Road, <br>

											Hyd,erabad - 500074 </td>
										<td> <textarea name="" id="" rows="2"></textarea> </td>

										<td class="mr-5 ml-5">
											<label class="form-label badge " for="form3Example1q"
												style="height: 20px; border-radius: 5px; background-color: rgb(164, 240, 164);"><a
													href="" style="color:darkgreen;">Completed</a></label>
										</td>
										<td class="mr-5 ml-5">
											<label class="form-label badge" for="form3Example1q"
												style="height: 20px; border-radius: 5px;  background-color: rgb(255, 191, 225);"><a
													href="customers-orderdetails.jsp"
													style="color:rgba(214, 16, 122, 0.938);">View</a></label>
										</td>
										<td class="total-col">
											<h4>6,950</h4>
										</td>
									</tr>
									<tr>
										<td>
											<!-- <input type="checkbox"> -->
											#2402
										</td>
										<td>22/05/2022</td>
										<td>Anand Street, <br> Press Colony, <br> Bandlaguda Road, <br>
											Hyderabad - 500052 </td>
										<td> <textarea name="" id="" rows="2"></textarea> </td>

										<td class="mr-5 ml-5">
											<label class="form-label badge  " for="form3Example1q"
												style="height: 20px; background-color: rgb(202, 201, 201);"><a href=""
													style="color:gray;">On Hold</a></label>
										</td>
										<td class="mr-5 ml-5">
											<label class="form-label badge" for="form3Example1q"
												style="height: 20px; border-radius: 5px;  background-color: rgb(255, 191, 225);"><a
													href="customers-orderdetails.jsp"
													style="color:rgba(214, 16, 122, 0.938);">View</a></label>
										</td>
										<td class="total-col">
											<h4>19,800</h4>
										</td>
									</tr>
									<tr>
										<td>
											<!-- <input type="checkbox"> -->
											#2403
										</td>
										<td>26/05/2022</td>
										<td>Balaji Street, <br> Rushi Colony, <br>
											RTC Cross Road, <br>

											Hyderabad - 500036 </td>
										<td> <textarea name="" id="" rows="2"></textarea> </td>

										<td class="mr-5 ml-5">
											<label class="form-label badge badge-primary " for="form3Example1q"
												style="height: 20px; background-color: rgb(252, 203, 112)"><a href=""
													style="color:darkred;">Pending</a></label>
										</td>
										<td class="mr-5 ml-5">
											<label class="form-label badge" for="form3Example1q"
												style="height: 20px; border-radius: 5px;  background-color: rgb(255, 191, 225);"><a
													href="customers-orderdetails.jsp"
													style="color:rgba(214, 16, 122, 0.938);">View</a></label>
										</td>
										<td class="total-col">
											<h4>21,000</h4>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="total-cost">
							<h6>Total <span>59,749</span></h6>
						</div>
					</div>
					<!-- <div class="row" style="justify-content: center;">
							<div class="col-3">
								<a href="customers-checkout.jsp">
									<button class="site-btn mt-3" >Place Order</button>
								</a>
							</div>
						</div> -->


				</div>
			</div>
		</div>
	</section>

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