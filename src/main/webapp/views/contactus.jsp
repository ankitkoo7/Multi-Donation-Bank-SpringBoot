<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Contact Us</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/icon/favicon.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
<script type="text/javascript">
if([[${send}]]=="true")
	{
	alert("Query Successfully Submited");
	}
</script>
</head>
<body>
	<header>
		<div class="header-area">
			<div class="main-header ">
				<div class="header-top d-none d-sm-block">
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div
									class="d-flex justify-content-between flex-wrap align-items-center">
									<div class="header-info-left">
										<ul>
											<li><i class="fas fa-phone-alt"></i> c</li>
											<li><a href="/cdn-cgi/l/email-protection"
												class="__cf_email__"
												data-cfemail="721b1c141d5c4b4232111a13001b0617005c111d1f">multidonationbank@gmail.com</a></li>
										</ul>
									</div>
									<div class="header-info-right">
										<ul class="header-social">
											<li><a href="#"><i class="fab fa-facebook"></i></a></li>
											<li><a href="#"><i class="fab fa-twitter"></i></a></li>
											<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
											<li><a href="#"><i class="fab fa-instagram"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">

							<div class="col-xl-2 col-lg-2">
								<div class="logo">
									<a href="index.html"><img src="assets/img/logo/logo.png"
										alt=""></a>
								</div>
							</div>
							<div class="col-xl-10 col-lg-10">

								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href=" index">Home</a></li>
											<li><a href="cases">Cases</a></li>
											<li><a href="#">Login</a>
												<ul class="submenu">
													<li><a href="donorlogin">Donor</a></li>
													<li><a href="ngologin">NGOs</a></li>
													<li><a href="adminlogin">Admin</a></li>
												</ul></li>
											<li><a href="index">About</a></li>
											<li><a href="contactus">ContactUs</a></li>
											<li>
												<div class="header-right-btn f-right  ml-15">
													<a href="login.html" class="header-btn">Donate Now</a>
												</div>
											</li>
										</ul>
									</nav>
								</div>
							</div>

							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<main>

		<div class="slider-area">
			<div
				class="slider-height2 slider-bg4 hero-overly d-flex align-items-center">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-5 col-lg-6 col-md-6">
							<div class="hero-caption hero-caption2">
								<h2>If you have any queries don't hesitate to ask</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="contact-section">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2 class="contact-title">Get in Touch</h2>
					</div>
					<div class="col-lg-8">
						<form class="form-contact contact_form" action="contactgenform"
							method="post" >
							<div class="row">
								<div class="col-12">
									<div class="form-group">
										<textarea class="form-control w-100" name="description"
											id="message" cols="30" rows="5"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter Message'"
											placeholder=" Enter Message"></textarea>
									</div>
								</div>
								<div class="col-sm-12">               
									<div class="form-group">
										<input class="form-control valid" name="raisedby" id="name"
											type="text" onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter your name'"
											placeholder="Enter your name">
									</div>
								</div>
<!-- 								<div class="col-sm-6"> -->
<!-- 									<div class="form-group"> -->
<!-- 										<input class="form-control valid" name="userid" id="email" -->
<!-- 											type="text" onfocus="this.placeholder = ''" -->
<!-- 											onblur="this.placeholder = 'Enter UserID" -->
<!-- 											placeholder="userid"> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="col-12">
									<div class="form-group">
										<input class="form-control" name="emailid" id="subject"
											type="text" onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter EmailId'"
											placeholder="Enter Emailid">
									</div>
								</div>
							</div>
							<div class="form-group mt-3">
								<input type="submit" value="send"
									class="button button-contactForm boxed-btn">
							</div>
						</form>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-home"></i></span>
							<div class="media-body">
								<h3>Connaught Place.</h3>
								<p>New Delhi, India 110002</p>
							</div>
						</div>
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-tablet"></i></span>
							<div class="media-body">
								<h3>+91 011 232355</h3>
								<p>Mon to Fri 9am to 7pm</p>
							</div>
						</div>
						<div class="media contact-info">
							<span class="contact-info__icon"><i class="ti-email"></i></span>
							<div class="media-body">
								<h3>
									<a href="/cdn-cgi/l/email-protection" class="__cf_email__"
										data-cfemail="a0d3d5d0d0cfd2d4e0c3cfcccfd2ccc9c28ec3cfcd">multidonationbank@gmail.com</a>
								</h3>
								<p>Send us your query anytime!</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<footer>
		<div class="footer-wrapper">
			<div class="footer-area footer-padding">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-xl-3 col-lg-3 col-md-6 col-sm-8">
							<div class="single-footer-caption mb-50">
								<div class="single-footer-caption mb-20">

									<div class="footer-logo mb-35">
										<a href="index.html"><img
											src="assets/img/logo/logo2_footer.png" alt=""></a>
									</div>
									<div class="footer-tittle">
										<div class="footer-pera">
											<p>A place for accepting multi type donations at one
												site.</p>
										</div>
									</div>

									<div class="footer-social">
										<a href="https://bit.ly/sai4ull"><i
											class="fab fa-facebook"></i></a> <a href="#"><i
											class="fab fa-instagram"></i></a> <a href="#"><i
											class="fab fa-linkedin-in"></i></a> <a href="#"><i
											class="fab fa-youtube"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="offset-xl-1 col-xl-2 col-lg-2 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Navigation</h4>
									<ul>
										<li><a href="index">Home</a></li>
										<li><a href="cases">Cases</a></li>
										<li><a href="#">Login</a></li>
										<li><a href="#">About</a></li>
										<li><a href="#">ContactUs</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Services</h4>
									<ul>
										<li><a href="#">Medicine Donation</a></li>
										<li><a href="#">Book Donation</a></li>
										<li><a href="#">Money Donation</a></li>
										<li><a href="#">Food Donation</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-8">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle mb-10">
									<h4>Subscribe newsletter</h4>
									<p>Subscribe our newsletter to get updates about our
										services and offers.</p>
								</div>

								<div class="footer-form mb-20">
									<div id="mc_embed_signup">
										<form target="_blank"
											action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
											method="get" class="subscribe_form relative mail_part">
											<input type="email" name="email" id="newsletter-form-email"
												placeholder="Enter your email"
												class="placeholder hide-on-focus">
											<div class="form-icon">
												<button type="submit" name="submit" id="newsletter-submit"
													class="email_icon newsletter-submit button-contactForm">
													<i class="fas fa-arrow-right"></i>
												</button>
											</div>
											<div class="mt-10 info"></div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row">
							<div class="col-xl-12 ">
								<div class="footer-copy-right text-center">
									<p>
										Copyright ©2020 All rights reserved | This template is made
										with <i class="fa fa-heart" aria-hidden="true"></i> by <a
											href="https://colorlib.com" target="_blank">Colorlib</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>


	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>

	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/barfiller.js"></script>

	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>