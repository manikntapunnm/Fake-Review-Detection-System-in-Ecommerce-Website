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




</head>

<body>
	<!-- Page Preloder -->
	<!--div id="preloder">
		<div class="loader"></div>
	</div-->

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
			<h4 class="py-4 text-white">CUSTOMER</h4>
			<div class="site-pagination">
				<a href="" class="text-white">Home /</a>
				<a href="" class="text-white">Customer</a>
			</div>
		</div>
	</section>
  

    

<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Random" %>

	<div class="container mt-5 mb-5 py-4">
		<!-- <section class=" gradient-form"> -->
		<div class="container  ">
			<div class="row d-flex justify-content-center align-items-center ">
				<div class="col-xl-10 p-3">
					<div class=" rounded-3 text-black ">
						<div class="row g-0">
							<div class="col-lg-12 contact-form bg-light">
								<div class="card-body  p-md-5 mx-md-4">
  
                                                                    
                                                                    
									<div class="text-center">
                                                                            
                                                                            
										<h3 class="mb-5 " style="color: Black; font-family: calibri light;">Register
										</h3>
									</div>
                                                                    <form action="customer-register-action.jsp" class="contact-form" method="post" enctype="multipart/form-data" >
                                                                        <div class="row">
											<div class="col-6">
												<input type="text" id="userid" name="userid" value="<%= generateUserID() %>" readonly>
											</div>
                                                                                    <div class="col-6">
												 <input type="text" id="password" name="password" value="<%= generatePassword() %>" readonly>
											</div>
											
										</div>
										<div class="row">
											<div class="col-6">
												<input type="text" placeholder="First Name" name="firstname" required pattern="[A-Za-z\s]+">
											</div>
                                                                                    <div class="col-6">
												<input type="text" placeholder="Last Name" name="lastname" required pattern="[A-Za-z\s]+">
											</div>
											
										</div>
										<div class="row">
											<div class="col-6">
												<input type="Email" placeholder="Email" name="email" required>

											</div>
                                                                                    <div class="col-6">
												<input type="tel" placeholder="Contact" name="phone" required pattern="[0-9-()+\s]+">
											</div>
				
										</div>
                                                                            	<div class="row">
											<div class="col-6">
												<input type="text" placeholder="Gender" name="gender" required>

											</div>
                                                                                    <div class="col-6">
                                                                                        <input type="number" id="age" name="age" placeholder="Age" required min="12" max="100">
                                                                                                
                                                                                                    
                                                                                    </div>
				
										</div>
                                                                                   <div class="row">
			                                                              	<div class="col-6">
												<input type="text" placeholder="City" name="city" required>

											</div>
                                                                                    <div class="col-6">
												<input type="text" placeholder="Door:No" name="door" required>
											</div>
				
										</div>
                                                                                     <div class="row">
			                                                              	<div class="col-6">
												<input type="number" placeholder="Pincode" name="pincode" required>

											</div>
                                                                                    <div class="col-6">
												<input type="text" placeholder="State" name="state" required>
											</div>
				
										</div>
             

	<div class="row">
    <div class="col-6">
        <input type="file" name="image" placeholder="Upload Photo" onchange="previewImage(this)">
    </div>
    <div class="col-6 d-flex justify-content-center align-items-center">
        <div id="imagePreview" style="max-height: 100px; max-width: 100px; border: 2px solid #ccc; padding: 20px; border-radius: 30px 30px 30px 30px; background-image: url('your-image-url.jpg'); background-size: contain; background-repeat: no-repeat; background-position: center;"></div>
    </div>
</div>

                                                                                                                 



										<button type="submit" class="site-btn text-white"> Register
										</button>

										<h6 class="mt-5" style="font-family: calibri light;">Already have an account?
											Click Here <a href="main-customers-login.jsp">Login</a> </h6>
                                                                                              
									</form>
                                                                                        <script>
function previewImage(input) {
    const imagePreview = document.getElementById("imagePreview");
    imagePreview.innerHTML = ""; // Clear previous previews

    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            const img = document.createElement("img");
            img.setAttribute("src", e.target.result);
            img.setAttribute("style", "max-width: 100%; max-height: 100%;");
            imagePreview.appendChild(img);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
        <%!
            String generateUserID() {
            String prefix = "FTC";
            int currentYear = Calendar.getInstance().get(Calendar.YEAR) % 100;
            return prefix + String.format("%02d", currentYear) + new Random().nextInt(10000);
        }

        String generatePassword() {
            String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            int length = 8;
            StringBuilder passwordBuilder = new StringBuilder();

            Random random = new Random();
            for (int i = 0; i < length; i++) {
                int index = random.nextInt(characters.length());
                passwordBuilder.append(characters.charAt(index));
            }

            return passwordBuilder.toString();
        }
    %>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</div>
	<br><br><br>
	<!-- <div class="container">
		<section class="h-100 h-custom " >
			<div class="container py-5 h-100">
			  <div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-6">
					<img src="img/three3.jpg" alt="" width="450px" height="530px" style="border-radius: 5px;">
				</div>
				<div class="col-lg-8 col-xl-6 ">
				  <div class="card gradient-custom-2 rounded-3">
					
					<div class="card-body p-4 p-md-5">
					  <h4 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2 text-lg-left">Registration Info</h4>
		  
					  <form class="px-md-2">
						<div class="row">
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="text" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Full Name</label>
								  </div>
							</div>
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="text" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Seller ID</label>
								  </div>
							</div>
						</div>
						<div class="row">
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="tel" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Contact No</label>
								  </div>
							</div>
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="email" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Email</label>
								  </div>
							</div>
						</div>
		  
						<div class="row">
							<div class="col-6">
								<div class="form-outline mb-4">
									<select class="form-control btn-lg">
											<option value="" class="mb-2">Select Brand</option>
											<option value="0" style="color: black;">MICROMAX</option>
											<option value="1" style="color: black;">VIVO</option>
											<option value="2" style="color: black;">APPLE</option>
											<option value="3" style="color: black;">OPPO</option>
											<option value="4" style="color: black;">SAMSUNG</option>
											<option value="5" style="color: black;">REDMi</option>
											<option value="6" style="color: black;">SONY</option>
											<option value="7" style="color: black;">LG</option>
											<option value="8" style="color: black;">ONE PLUS</option>
											<option value="9" style="color: black;">LAVA</option>
									  </select>
									<label class="form-label" for="form3Example1q">Brand</label>
								  </div>
							</div>
							<div class="col-6">
								<div class="form-outline mb-4">
									<select class="form-control btn-lg">
										<option value="" class="mb-2">Select Category</option>
										<option value="0" style="color: black;">MOBILE</option>
										<option value="1" style="color: black;">CHARGE</option>
										<option value="2" style="color: black;">ADAPTER</option>
										<option value="3" style="color: black;">USB CABLE</option>
										<option value="4" style="color: black;">WATCHES</option>
										<option value="5" style="color: black;">PHONE COVER</option>
										<option value="6" style="color: black;">SONY</option>
										<option value="7" style="color: black;">LG</option>
										<option value="8" style="color: black;">ONE PLUS</option>
										<option value="9" style="color: black;">LAVA</option>
								  </select>
									<label class="form-label" for="form3Example1q">Category</label>
								  </div>
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="text" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Upload Image</label>
								  </div>
							</div>
							<div class="col-6">
								<div class="form-outline mb-4">
									<input type="text" id="form3Example1q" class="form-control" />
									<label class="form-label" for="form3Example1q">Address</label>
								  </div>
							</div>
						</div>
						
						<button type="submit" class="btn mb-2" style="color:black; background-color: white;">
							<a href="main-seller-register.jsp" style="color: black; font-weight: bolder;">Register</a>
						</button>
						<h5 class="text-lg-left mt-3">
							If you have account, Login Now &nbsp; <br>
							<a href="main-sellers-login.jsp" Style="color:blue; font-family:cursive;">  Login </a>
						</h5>
						

		  
					  </form>
		  
					</div>
				  </div>
				</div>
				
			  </div>
			</div>
		  </section>
	</div>
	<br><br><br> -->
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