<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty ngoid }">
<!DOCTYPE html>
<html>
<head>
<title>NGO Home Page</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="assets/img/icon/favicon.png">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script  src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/icon/favicon.png">
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
											<li><i class="fas fa-phone-alt"></i> +91 011 232355</li>
											<li><a href="#" class="__cf_email__"
												data-cfemail="ddb4b3bbb2f3e4ed9dbeb5bcafb4a9b8aff3beb2b0">multidonationbank@gmail.com</a></li>

										</ul>
									</div>
									<div class="header-info-right">
										<ul class="header-social">
											<li><i class="fab ">${ngoid}</i></li>
											<li><a href="donorlogout"><i class="fab ">LogOut</i></a></li>
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
											<li><a href="ngoindex">Home</a></li>
											<li><a href="/showdonationrecive?ngoname=${nname}">Donations Received</a></li>
											<li><a href="/showdonordetails">View Donor Details</a></li>
											<li><a href="contactngo">ContactUs</a></li>
											<li>
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
		<c:choose>

			<c:when test="${nmode=='mode_home' }">
				<div class="slider-area position-relative">
					<div class="slider-active dot-style">


						<div
							class="single-slider hero-overly slider-height slider-bg2 d-flex align-items-center">
							<div class="container">
								<div class="row">
									<div class="col-xxl-6 col-xl-7 col-lg-7 col-md-8 col-sm-10">
										<div class="hero-caption">
											<h1 data-animation="fadeInUp" data-delay=".2s">No act of kindness, no matter how small, is ever wasted.</h1>
											<P data-animation="fadeInUp" data-delay=".4s">You have not lived until you have done something for someone who can never repay you.</P>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:when>

			<c:when test="${nmode=='mode_viewdonation'}">
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Donation Id</th>
								<th scope="col">Donor Id</th>
								<th scope="col">Ngo</th>
								<th scope="col">Donation Category</th>
								<th scope="col">Donation Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dlist}"  var="dl">
								<tr>
									<td>${dl.donationid}</td>
									<td>${dl.donorid }</td>
									<td>${dl.ngoid }</td>
									<td>${dl.donationcategory }</td>
									<td>${dl.donationdate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:when>
			
			<c:when test="${nmode=='mode_viewdonor'}">
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Donor Name</th>
								<th scope="col">Mobile</th>
								<th scope="col">Age</th>
								<th scope="col">Sex</th>
								<th scope="col">Email</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ddlist}"  var="dn">
								<tr>
									<td>${dn.bdonorname}</td>
									<td>${dn.emobile }</td>
									<td>${dn.hage }</td>
									<td>${dn.fsex }</td>
									<td>${dn.gemailid }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:when>
			
			<c:when test="${nmode=='mode_contactus'}">
			<section class="contact-section">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h2 class="contact-title">Get in Touch</h2>
					</div>
					<div class="col-lg-8">
						<form class="form-contact contact_form" action="contactngoform"
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
								<div class="col-sm-6">
									<div class="form-group">
										<input class="form-control valid" name="userid" id="email"
											type="text"  value="${ngoid }" readonly>
									</div>
								</div>
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
			</c:when>
		</c:choose>
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
										<a href="index.html"><img src="assets/img/logo/logo.png"
											alt=""></a>
									</div>
									<div class="footer-tittle">
										<div class="footer-pera">
											<p>A place for accepting multi type donations at one
												site.</p>
										</div>
									</div>

									<div class="footer-social">
										<a href="#"><i
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
										Copyright Â©2021 All rights reserved | by <a
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

	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
</body>
</html>
</c:if>
<c:if test="${empty ngoid }">
<script>
alert("You Have To Login First -_-");
window.location='index';
</script>
</c:if>