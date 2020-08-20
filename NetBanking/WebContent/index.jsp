<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


		<jsp:include page="header.jsp" />
		<!-- //Top-Bar -->
		<div class="banner-main jarallax">
			<div class="container">
				<div class="banner-inner">
					<div class="col-md-5 banner-left">
						<form action="Register" method="post">
						<h3>Start savings account</h3>
							<input type="text" placeholder="Account Number" name="accno" required=""/>
							<input type="email" placeholder="username" name="uname" required=""/>
							<input type="text" placeholder="Password" name="pass" required=""/>
							<div class="submit">
								<input type="submit" value="get started">
							</div>
						</form>
					</div>
					<div class="col-md-7 banner-right">
						<h1>Account Processing Steps !</h1>
						<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquet venenatis vehicula. Etiam malesuada arcu metus, sollicitudin ullamcorper leo lobortis ut.</h4>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>	
							<div class="clearfix"></div>
							</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
<!-- about -->
<section class="about" id="about">
	<div class="container">
	<div class="about-heading">
		<h2>About</h2>
	</div>
		<div class="about-grids">
		<div class="col-md-6 about-left">
			<img src="images/1.jpg" alt="" />
		</div>
		<div class="col-md-6 about-right">
			<h3>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</h3>
			<p>Phasellus lorem enim, aliquet vitae pharetra a, vehicula sed risus. Suspendisse rhoncus, ligula ut bibendum imperdiet, nibh lectus gravida lorem, at tristique eros turpis in tortor.</p>
			<p>Phasellus lorem enim, aliquet vitae pharetra a, vehicula sed risus. Suspendisse rhoncus, ligula ut bibendum imperdiet, nibh lectus gravida lorem, at tristique eros turpis in tortor.</p>
			<div class="more">
				<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>
		</div>
</section>
<!-- //about -->


	
<!-- contact -->
<section class="contact" id="contact">
	<div class="container">
		<div class="contact-heading">
			<h3>Contact us</h3>
		</div>
		<div class="contact-grids">
			<div class=" col-md-6 contact-form">
				<form action="#" method="post">
						<input type="text" placeholder="Subject" required=""/>
						<input type="text" placeholder="Your name" required=""/>
						<input type="email" placeholder="Your mail" required=""/>
						<textarea placeholder="Message" required=""></textarea>
						<div class="submit1">
							<input type="submit" value="submit">
						</div>
				</form>
			</div>
			<div class=" col-md-6 map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d167998.10803373056!2d2.2074740643680624!3d48.85877410312378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1f06e2b70f%3A0x40b82c3688c9460!2sParis%2C+France!5e0!3m2!1sen!2sin!4v1488168816174"></iframe>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
			<jsp:include page="footer.jsp"></jsp:include>
