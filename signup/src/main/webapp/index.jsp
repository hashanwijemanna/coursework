<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}

%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Fashion House</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<link href="css/button.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Fashion House</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
				<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp">Home</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#items">Items</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About Us</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact Us</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout">Logout</a></li>
					<li class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"><%=session.getAttribute("name") %>></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column" style="background-image:images/fashion.jpg;">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Fashion House</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Browse - Order - Enjoy</p>
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="items">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Items</h2>
			
			<div class="container1" style="max-width:100%;height:auto;">
			<div class="card-header my-3">All Products</div>
			
				<table style="max-width:100%;height:auto;">
				<tr><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product1.jpg" alt="Product1">
				  <div class="card-body">
				    <h5 class="card-title">Sport shoes</h5>
				    <h6 class="price">Price: Rs.6800</h6>
				    <h6 class="category">Category: shoes</h6>
				    <h7>Product ID: <font color=red><b> 01 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct1.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				  </div>
				</div>
				</td><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product2.jpg" alt="Product2">
				  <div class="card-body">
				    <h5 class="card-title">Wallet</h5>
				    <h6 class="price">Price: Rs.1500</h6>
				    <h6 class="category">Category: wallets: Lacoste</h6>
				    <h7>Product ID: <font color=red><b> 02 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct2.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</td></tr>
				<tr><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product3.jpg" alt="Product3">
				  <div class="card-body">
				    <h5 class="card-title">Digital Watch</h5>
				    <h6 class="price">Price: Rs.2500</h6>
				    <h6 class="category">Category: watches</h6>
				    <h7>Product ID: <font color=red><b> 03 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct3.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</td><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product4.jpg" alt="Product4">
				  <div class="card-body">
				    <h5 class="card-title">Stainless Steel Watch</h5>
				    <h6 class="price">Price: Rs.5900</h6>
				    <h6 class="category">Category: watches: Stainless Steel</h6>
				    <h7>Product ID: <font color=red><b> 04 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct3.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</td></tr>
				<tr><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product5.jpg" alt="Product5">
				  <div class="card-body">
				    <h5 class="card-title">T shirt for Men</h5>
				    <h6 class="price">Price: Rs.990</h6>
				    <h6 class="category">Category: T shirt: Collar less</h6>
				    <h7>Product ID: <font color=red><b> 05 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct3.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</td><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product6.jpg" alt="Product6">
				  <div class="card-body">
				    <h5 class="card-title">Long Sleeve T shirt</h5>
				    <h6 class="price">Price: Rs.1450</h6>
				    <h6 class="category">Category: T shirt: Collar less, long sleeve</h6>
				    <h7>Product ID: <font color=red><b> 06 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct3.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</td></tr>
				<tr><td>
				<div class="card" style="max-width:95%;height:50%;">
				  <img class="card-img-top" src="images/Product7.jpg" alt="Product7">
				  <div class="card-body">
				    <h5 class="card-title">Linen Short Sleeve Shirts</h5>
				    <h6 class="price">Price: Rs.1795</h6>
				    <h6 class="category">Category: Shirt: Short sleeve</h6>
				    <h7>Product ID: <font color=red><b> 07 </b></font></h7>
				    <div class="mt-3 d-flex justify-content-between">
				    <a href="orderProduct3.jsp" class="btn btn-primary">Buy Now</a>
				    </div>
				    </div>
				</div>
				</table>
			
			
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Welcome to Fashion House, your ultimate destination for all things fashion! At Fashion House, we are passionate about helping you express your unique style and make a bold fashion statement. Whether you're looking for the latest trends or timeless classics, we have an extensive collection of fashion items that cater to your individual taste and preferences. From chic clothing to stylish accessories, our curated selection is carefully chosen to ensure you stay ahead of the fashion curve. With a focus on quality, style, and affordability, Fashion House is here to redefine your shopping experience. Explore our website, discover your fashion favorites, and get ready to elevate your wardrobe to new heights.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">At Fashion House, we believe that fashion is an art form, a means of self-expression, and a reflection of individuality. That's why we strive to provide you with an unmatched selection of fashion items that embody creativity, elegance, and versatility. Our team of fashion enthusiasts constantly scours the fashion world to bring you the latest styles and trends, ensuring that you have access to the hottest runway looks and must-have pieces. With a user-friendly interface and a seamless shopping experience, Fashion House makes it easy for you to find your fashion inspiration and effortlessly transform your personal style. We are committed to delivering exceptional customer service and ensuring that you feel confident and empowered in your fashion choices. Step into Fashion House, where your fashion journey begins!</p>
				</div>
			</div>
			
			
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Us</h2><br><br><br>
			<div class="contactus">
			<center>
    
    <form action="contactus" method="post">
      <label for="name"><b><font size=5 family=cursive>Name: </font>&nbsp&nbsp</b></label>
      <font size=5><input type="text" id="name" name="cname" required><br><br></font>

      <label for="email"><b><font size=5 family=cursive>Email: </font>&nbsp&nbsp</b></label>
      <font size=5><input type="email" id="email" name="cemail" required><br><br></font>

		<label for="message"><b><font size=5 family=cursive>Message: </font>&nbsp&nbsp</b></label>
      <font size=4></font><textarea id="message" name="cmessage" required></textarea><br><br><br></font>

      <font size=8><input type="submit" value="Submit" class="Cbutton"></font>
    </form></center>
  </div>
			
			
				
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a>  <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Fashion House</h4>
					<p class="lead mb-0">
						Discover Fashion House: Your ultimate fashion destination for trendy, high-quality items. Shop with confidence and express your unique style today.
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Fashion House 2023</small>
		</div>
	</div>
	<!-- Portfolio Modals-->
	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Log
									Cabin</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cabin.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Tasty
									Cake</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/cake.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Circus
									Tent</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/circus.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 4-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Controller</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/game.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Locked
									Safe</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/safe.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Portfolio Modal 6-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0">Submarine</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="img-fluid rounded mb-5"
									src="assets/img/portfolio/submarine.png" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Mollitia neque assumenda ipsam nihil,
									molestias magnam, recusandae quos quis inventore quisquam velit
									asperiores, vitae? Reprehenderit soluta, eos quod consequuntur
									itaque. Nam.</p>
								<button class="btn btn-primary" href="#!"
									data-bs-dismiss="modal">
									<i class="fas fa-times fa-fw"></i> Close Window
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>




</html>
