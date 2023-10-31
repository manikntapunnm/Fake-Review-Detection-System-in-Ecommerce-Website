<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>SnapKart | eCommerce Template</title>
	<meta charset="UTF-8">
	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon" />

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

	<link rel="stylesheet" href="css/admin-login.css">

	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
</head>

<body>
    
          <%
String adminusernotfound = (String) session.getAttribute("adminusernotfound");
if (adminusernotfound != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("adminusernotfound");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(adminusernotfound) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= adminusernotfound %>',
            timer: 1000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
            showConfirmButton: true, // Display the "OK" button
            confirmButtonText: 'OK',
        })
    </script>
<%
}
%>
          <%
String adminloginfailed = (String) session.getAttribute("adminloginfailed");
if (adminloginfailed != null) {
    // Clear the message attribute to prevent repeated display
    session.removeAttribute("adminloginfailed");
%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <script>
        Swal.fire({
            icon: '<%= "Success".equals(adminloginfailed) ? "success" : "error" %>',
            title: 'Login',
            text: '<%= adminloginfailed %>',
            timer: 4000, // Auto-close the dialog after 3 seconds
            //timerProgressBar: true,
            showConfirmButton: false
        })
    </script>
<%
}
%>
	<!-- Page Preloder -->
<!--	<div id="preloder">
		<div class="loader"></div>
	</div>-->

	<!-- Header section -->
	<header class="header-section">

		<nav class="main-navbar">
			<div class="container">
				<!-- menu -->
				<ul class="main-menu">
					<li><a href="" style="font-size:x-large;">SnapKart</a></li>
					<li><a href="index.jsp">Home</a></li>

					<li><a href="main-admin-login.jsp">Admin</a></li>

					<li><a href="main-customers-login.jsp">Customers</a></li>
					<li><a href="main-contact.jsp">Contact</a></li>
					<li><a href="main-about.jsp">About</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Header section end -->

	<section class="hero-section">
		<div class="banner set-bg" data-setbg="img/pexel10.jpeg">
			<h4 class="py-4 text-white">ADMIN</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">Admin</a>
			</div>
		</div>
	</section>

	<div class="container mt-5 mb-5">
		<!-- <section class=" gradient-form"> -->
		<div class="container">
			<div class="row d-flex justify-content-center align-items-center ">
				<div class="col-xl-10 p-3">
					<div class=" rounded-3 text-black ">
						<div class="row g-0">
							<div class="col-lg-6 contact-form bg-light">
								<div class="card-body  p-md-5 mx-md-4">

									<div class="text-center">
										<h3 class="mb-5 " style="color: Black; font-family: Calibri light;">Login</h3>

									
									</div>

									<form action="admin-login-action.jsp" class="contact-form" method="post">
                                                                            <input type="text" placeholder="Your User Name" name="user" required>
                                                                            <input type="password" placeholder="Your Password" name="pass" required>
										
										<button type="submit" class="site-btn text-white"> LOGIN
										</button>

									</form>
									

								</div>

							</div>
							<div class="col-lg-6 d-flex align-items-center gradient-custom-2 ">
								<div class="text-white p-3 ">
									<h3 style="color: white; font-family: Calibri light;">SnapKart</h3>
									<h4 class="mt-2 mb-4" style="color: white; font-family: Calibri light;">GET IN TOUCH
										WITH US:</h4>
									<p class="small mb-0" style="font-size: large; font-family: Calibri light;">
										If you have any queries regarding the product quality, delivery status,
										colors, sizes, models, new launhing products, anything you can contact to
										us.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</div>

	<br><br>
	<!-- Footer section -->
	<section class="footer-section mt-5">
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
						<img src="img/cards.png" alt="">
					</div>
				</div>
				<!-- <div class="col-lg-1  col-sm-6"></div> -->
				<div class="col-lg-3 col-sm-6" style="height: 320px;">
					<div class="footer-widget about-widget">

						<ul class="ml-5">
							<h2 class="" style="color:slateblue;">Dasboard</h2>
							<li class="">
								<a href="index.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Home</a>
							</li>
							<li class="">
								<a href="main-about.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">About</a>
							</li>
							<li class="">
								<a href="main-admin-login.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Admin</a>
							</li>

							<li class="">
								<a href="main-customers-login.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Customer</a>
							</li>
							<li class="">
								<a href="main-contact.jsp"
									style="color: white; font-family: sans-serif ; font-size: large;">Contact</a>
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
								<!-- <div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/1.jpg"></div> -->
								<div class="">
									<h6 style="color: yellowgreen; font-family:sans-serif ; font-size: large;"> Email:
										snapkart@gmail.com </h6>
									<span style="color: white; font-family: sans-serif ; font-size: large;">+91 - 6300
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
								<!-- <div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/2.jpg"></div> -->
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
