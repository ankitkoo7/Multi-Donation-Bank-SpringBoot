<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty auserid }">
	<!DOCTYPE html>
	<html>
<head>
<title>Admin Home Page</title>
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
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/icon/favicon.png">
<link rel="stylesheet" type="text/css" href="assets/css/ngoreg.css">
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
<link rel="stylesheet" type="text/css" href="assets/css/adminindex.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
											<li><i class="fab ">${auserid}</i></li>
											<li><a href="adminlogout"><i class="fab ">LogOut</i></a></li>
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
											<li><a href=" adminindex">Home</a></li>
											<li><a href="registerngo">Register NGO</a></li>
											<li><a href="viewngo">View NGOs</a></li>
											<li><a href="viewdonor">View Donors</a></li>
											<li><a href="viewalldonation">View All Donations</a></li>
											<li><a href="viewqueries">View All Queries</a></li>
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
<c:if test="${mode=='mode_home'}">
<div class="slider-area position-relative">
					<div class="slider-active dot-style">
						<div
							class="single-slider hero-overly slider-height slider-bg5 d-flex align-items-center">
							<div class="container">
								<div class="row">
									<div class="col-xxl-6 col-xl-7 col-lg-7 col-md-8 col-sm-10">
										<div class="hero-caption">
											<h1 data-animation="fadeInUp" data-delay=".2s">Support</h1>
											<P data-animation="fadeInUp" data-delay=".4s">Try to provide the
												needs of needy peoples</P>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
</c:if>
		<c:choose>
	
			<c:when test="${mode=='mode_registerngo'}">
				<div class="container">
					<h1 class="well">Ngo Registration Form</h1>
					<div class="col-lg-12 well">
						<div class="row">
							<form action="ngoregis" method="post">
								<div class="col-sm-12">

									<div class="form-group">
										<label>Enter NGO Id</label> <input type="text"
											placeholder="Enter ID Here.." class="form-control"
											name="ngoid">
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Enter OrgName</label> <input type="text"
												placeholder="Enter Name Here.." class="form-control"
												name="orgname">
										</div>

										<div class="col-sm-6 form-group">
											<label>Enter Password</label> <input type="password"
												placeholder="Enter Password Here.." class="form-control"
												name="password">
										</div>
									</div>
									<div class="form-group">
										<label>Enter OwnerName</label> <input type="text"
											placeholder="Enter ID Here.." class="form-control"
											name="ownername">
									</div>
									<div class="row">
										<h3>NGO Details</h3>
										<div class="col-sm-6 form-group">
											<label>Enter N_Mobile Number</label> <input type="text"
												class="form-control" name="n_mobile">
										</div>
										<div class="col-sm-6 form-group">
											<label>Enter N_email</label> <input type="text"
												placeholder="Enter Mobile Number Here.."
												class="form-control" name="n_emailid">
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Enter N_Address</label><br> <input type="text"
												placeholder="Enter Address Here.." class="form-control"
												name="n_address">
										</div>

										<div class="col-sm-6 form-group">
											<label>Enter n_State</label> <input type="text"
												placeholder="Enter State Here.." class="form-control"
												name="n_state">
										</div>
									</div>
									<div class="row">
										<h3>Owner Details</h3>
										<div class="col-sm-4 form-group">
											<label>O_Mobile</label> <input type="text"
												placeholder="Enter Mobile Here.." class="form-control"
												name="o_mobile">
										</div>
										<div class="col-sm-4 form-group">
											<label>O_Email</label> <input type="text"
												placeholder="Enter Email Here.." class="form-control"
												name="o_emailid">
										</div>
									</div>
									<div class="form-group">
										<label>Enter O_Address</label> <input type="text"
											placeholder="Enter Address Here.." class="form-control"
											name="o_address">
									</div>
									<div class="row">
										<div class="col-sm-4 form-group">
											<label>O_State</label> <input type="text"
												placeholder="Enter State Here.." class="form-control"
												name="o_state">
										</div>
										<div class="col-sm-4 form-group">
											<label>Enter Gender</label><br> <input type="radio"
												id="male" name="o_gender" value="M"> <label
												for="male">Male</label><br> <input type="radio"
												id="female" name="O_Gender" value="F"> <label
												for="female">Female</label>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Creation Date</label><br> <input type="date"
												placeholder="Choose Date.." class="form-control"
												name="creationdate">
										</div>
										<div class="col-sm-6 form-group">
											<label>Status</label><br> <input type="text"
												placeholder="Enter Status Here.." class="form-control"
												name="status">
										</div>

										<div class="col-sm-6 form-group">
											<label for="donationcate">Choose Donation Type:</label> <select
												name="donationcateg" id="donationcate">
												<option value="Money Donation">Money Donation</option>
												<option value="Medicine Donation">Medicine Donation</option>
												<option value="Clothes Donation">Clothes Donation</option>
												<option value="Food Donation">Food Donation</option>
												<option value="Book Donation">Book Donation</option>
											</select>

										</div>
									</div>
									<input type="submit" value="Register"
										class="btn btn-lg btn-info">
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:when>

			<c:when test="${mode=='mode_viewngo'}">
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">NGO Id</th>
								<th scope="col">Org Name</th>
								<th scope="col">Password</th>
								<th scope="col">OwnerName</th>
								<th scope="col">N_Mobile</th>
								<th scope="col">N_Email</th>
								<th scope="col">N_Address</th>
								<th scope="col">N_State</th>
								<th scope="col">O_Mobile</th>
								<th scope="col">O_EmailId</th>
								<th scope="col">O_gender</th>
								<th scope="col">O_Address</th>
								<th scope="col">O_State</th>
								<th scope="col">CreationDate</th>
								<th scope="col">Status</th>
								<th scope="col">Donation Category</th>
								<th scope="col">Delete</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listngo}" var="p">
								<tr>
									<td>${p.ngoid}</td>
									<td>${p.orgname }</td>
									<td>${p.password }</td>
									<td>${p.ownername }</td>
									<td>${p.n_mobile }</td>
									<td>${p.n_emailid }</td>
									<td>${p.n_address }</td>
									<td>${p.n_state }</td>
									<td>${p.o_mobile }</td>
									<td>${p.o_emailid }</td>
									<td>${p.o_gender }</td>
									<td>${p.o_address }</td>
									<td>${p.o_state }</td>
									<td>${p.creationdate }</td>
									<td>${p.status }</td>
									<td>${p.donationcateg }</td>
									<td><a href="/deletengo?ngoid=${p.ngoid}"> <span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/editngo?ngoid=${p.ngoid}"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<span>${finderror}</span>
				</div>
			</c:when>

			<c:when test="${mode=='mode_editngo'}">
				<div class="container">
					<h1 class="well">Ngo Edit Registration Form</h1>
					<div class="col-lg-12 well">
						<div class="row">
							<form action="ngoregis" method="post">
								<div class="col-sm-12">

									<div class="form-group">
										<label>Enter NGO Id</label> <input type="text"
											class="form-control" name="ngoid" value="${nlist.ngoid }"
											readonly>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Enter OrgName</label> <input type="text"
												class="form-control" name="orgname"
												value="${nlist.orgname }">
										</div>

										<div class="col-sm-6 form-group">
											<label>Enter Password</label> <input type="password"
												class="form-control" name="password"
												value="${nlist.password }">
										</div>
									</div>
									<div class="form-group">
										<label>Enter OwnerName</label> <input type="text"
											class="form-control" name="ownername"
											value="${nlist.ownername }">
									</div>
									<div class="row">
										<h3>NGO Details</h3>
										<div class="col-sm-6 form-group">
											<label>Enter N_Mobile Number</label> <input type="text"
												class="form-control" name="n_mobile"
												value="${nlist.n_mobile }">
										</div>
										<div class="col-sm-6 form-group">
											<label>Enter N_email</label> <input type="text"
												class="form-control" name="n_emailid"
												value="${nlist.n_emailid }">
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Enter N_Address</label><br> <input type="text"
												class="form-control" name="n_address"
												value="${nlist.n_address }">
										</div>

										<div class="col-sm-6 form-group">
											<label>Enter n_State</label> <input type="text"
												class="form-control" name="n_state"
												value="${nlist.n_state }">
										</div>
									</div>
									<div class="row">
										<h3>Owner Details</h3>
										<div class="col-sm-4 form-group">
											<label>O_Mobile</label> <input type="text"
												class="form-control" name="o_mobile"
												value="${nlist.o_mobile }">
										</div>
										<div class="col-sm-4 form-group">
											<label>O_Email</label> <input type="text"
												class="form-control" name="o_emailid"
												value="${nlist.o_emailid }">
										</div>
									</div>
									<div class="form-group">
										<label>Enter O_Address</label> <input type="text"
											class="form-control" name="o_address"
											value="${nlist.o_address }">
									</div>
									<div class="row">
										<div class="col-sm-4 form-group">
											<label>O_State</label> <input type="text"
												class="form-control" name="o_state"
												value="${nlist.o_state }">
										</div>
										<div class="col-sm-4 form-group">
											<label> Gender</label><br> <input type="radio" id="male"
												name="o_gender" value="M" checked> <label for="male">Male</label><br>
											<input type="radio" id="female" name="O_Gender" value="F">
											<label for="female">Female</label>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Creation Date</label><br> <input type="text"
												class="form-control" name="Status"
												value="${nlist.creationdate }" readonly> <input
												type="date" class="form-control" name="creationdate">
										</div>
										<div class="col-sm-6 form-group">
											<label>Status</label><br> <input type="text"
												class="form-control" name="status" value="${nlist.status }">
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6 form-group">
											<label>Donation Type</label><br> <input type="text"
												class="form-control" value="${nlist.donationcateg }"
												readonly>
										</div>
										<div class="col-sm-6 form-group">
											<label for="donationcate">Choose Donation Type:</label> <select
												name="donationcateg" id="donationcate">
												<option value="Money Donation">Money Donation</option>
												<option value="Medicine Donation">Medicine Donation</option>
												<option value="Clothes Donation">Clothes Donation</option>
												<option value="Food Donation">Food Donation</option>
												<option value="Book Donation">Book Donation</option>
											</select>

										</div>
									</div>
									<input type="submit" value="Update" class="btn btn-lg btn-info">
								</div>
							</form>
						</div>
					</div>
				</div>
			</c:when>

			<c:when test="${mode=='mode_viewdonor'}">
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">DonorId</th>
								<th scope="col">DonorName</th>
								<th scope="col">Password</th>
								<th scope="col">DateOfBirth</th>
								<th scope="col">Mobile</th>
								<th scope="col">Sex</th>
								<th scope="col">EmailId</th>
								<th scope="col">Age</th>
								<th scope="col">Building</th>
								<th scope="col">Block</th>
								<th scope="col">Area</th>
								<th scope="col">City</th>
								<th scope="col">PIN</th>
								<th scope="col">State</th>
								<th scope="col">CreationDate</th>
								<th scope="col">Status</th>
								<th scope="col">Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listdonor}" var="d">
								<tr>
									<td>${d.adonorid}</td>
									<td>${d.bdonorname }</td>
									<td>${d.cpassword }</td>
									<td>${d.ddateofbirth }</td>
									<td>${d.emobile }</td>
									<td>${d.fsex }</td>
									<td>${d.gemailid }</td>
									<td>${d.hage }</td>
									<td>${d.ibuilding }</td>
									<td>${d.jblock }</td>
									<td>${d.karea }</td>
									<td>${d.lcity }</td>
									<td>${d.mpin }</td>
									<td>${d.nstate }</td>
									<td>${d.pcreationdate }</td>
									<td>${d.qstatus }</td>
									<td><a href="/deletedonor?adonorid=${d.adonorid }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:when>

			<c:when test="${mode=='mode_viewdonations'}">
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
							<c:forEach items="${listdonations}" var="d">
								<tr>
									<td>${d.donationid}</td>
									<td>${d.donorid }</td>
									<td>${d.ngoid }</td>
									<td>${d.donationcategory }</td>
									<td>${d.donationdate }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:when>

			<c:when test="${mode=='mode_viewqueries'}">
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Query Id</th>
								<th scope="col">Description Id</th>
								<th scope="col">Response</th>
								<th scope="col">Raised By</th>
								<th scope="col">User Id</th>
								<th scope="col">EmailId</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${qlist}" var="q">
								<tr>
									<td>${q.queryid}</td>
									<td>${q.description }</td>
									<td>${q.response }</td>
									<td>${q.raisedby }</td>
									<td>${q.userid }</td>
									<td>${q.emailid }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
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
										<a href="index"><img src="assets/img/logo/logo.png" alt=""></a>
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
<c:if test="${empty auserid }">
	<script>
		alert("You Have To Login First -_-");
		window.location = 'index';
	</script>

</c:if>