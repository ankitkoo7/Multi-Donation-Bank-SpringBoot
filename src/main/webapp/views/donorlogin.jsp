<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Donor Login Form</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="assets/css/donorloginstyle.css">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
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
											<li><i class="fas fa-phone-alt"></i> +91 011 232355</li>
											<li><a href="#" class="__cf_email__"
												data-cfemail="ddb4b3bbb2f3e4ed9dbeb5bcafb4a9b8aff3beb2b0">multidonationbank@gmail.com</a></li>
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
									<a href="index"><img src="assets/img/logo/logo.png" alt=""></a>
								</div>
							</div>
							<div class="col-xl-10 col-lg-10">

								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="index">Home</a></li>
											<li><a href="cases">Cases</a></li>
											<li><a href="about">About</a></li>
											<li><a href="contact.html">ContactUs</a></li>
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
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>Sign In</h3>
				</div>
				<div class="card-body">
					<form action="dlogin" method="post">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username"
								name="adonorid">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="password" name="cpassword">
						</div>
						
						<div class="form-group">
							<input type="submit" value="Login"
								class="btnn float-right login_btn" data-animation="fadeInUp">
						</div>
					</form>
				</div>
				<c:if test="${not empty error }">
							<div class="alert alert-danger">
								<c:out value="${error }"></c:out>
							</div>
						</c:if>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Don't have an account?<a href="donorregistration">Sign Up</a>
					</div>
				</div>
			</div>
		</div>
	</div>
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
										Copyright ©2021 All rights reserved | by <a
											href="https://colorlib.com" target="_blank">Ankit Kumar</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>