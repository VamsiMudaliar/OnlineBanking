<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.banking.Database.DbOperation"%>
<%@page import="com.banking.Model.CustomerModel"%>
<%@page import="java.sql.Connection"%>

		<jsp:include page="header.jsp" />
		<!-- //Top-Bar -->

	<%! CustomerModel ac; %>

	<%
		ac = (CustomerModel) session.getAttribute("userDetails");
		String account_no = ac.getAccount_number();
		int amount=ac.getAmount();
		
	%>
<!-- services -->
<section class="services" id="services">
	<div class="container">
		<div class="services-heading">
			<h3>services</h3>
		</div>
		<div class="service-grids">
			<div class="service-grid-top">
				<div class="col-md-4 service-grid-1" >
					<div class="service-grid-text" >
						<div class="icon">
							<i class="fa fa-usd" aria-hidden="true"></i>
						</div>
						<br>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary"  style="cursor: pointer" data-toggle="modal" data-target="#exampleModalCenter">
 						 Check Account Balance</button>
 						 <!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							       <h4 class="alert-heading">Success!</h4>
										<p>
											<strong>Here Is Your Account Balance!!</strong>
										</p>
										<p class="mb-0">
											<b>Account Number: </b>
											<%=account_no%>
										</p>
										<p class="mb-0">
											<b>Amount: </b>
											<%=amount%>
										</p>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
													<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-university" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service-grid-bottom">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-handshake-o" aria-hidden="true"></i></div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
						</div>
						<h4>lorem ipsum</h4>
						<p>Proin feugiat, lorem ut consequat pellentesque, dolor est consequat lorem, eu condimentum tortor justo id lectus.</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</section>
<!-- //services -->

<!-- clients -->
<section class="skills" id="skills">
	<div class="container">
		<div class="skills-heading">
			<h3>Our growth</h3>
		</div>
		<div class="col-md-2 career-growth">
			<h4>2017 :</h4>
			<h4>2015 :</h4>
			<h4>2011 :</h4>
			<h4>2006 :</h4>
			<h4>2001 :</h4>
		</div>
		<section class='col-md-10 bar'>
			  <div class='bar_group'>
				<div class='bar_group__bar thin' value='675'></div>
				<div class='bar_group__bar thin' value='500'></div>
				<div class='bar_group__bar thin' value='420'></div>
				<div class='bar_group__bar thin' value='343'></div>
				<div class='bar_group__bar thin' value='245'></div>
			  </div>
			<div class='clearfix'></div>
		</section>
			<div class='clearfix'></div>
	</div>
</section>
<!-- //clients -->

<!--team-->
<div class="team" id="team">
	<div class="container">
		<h4 class="title-w3">Team</h4>
		<div class="team-grids">
		<div class="col-md-3 team-gds wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t1.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>michael</h4>
			<p>CEO</p>
		</div>
		<div class="col-md-3 team-gds wow fadeInUp animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t2.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>johnson</h4>
			<p>Manager </p>
		</div>
		<div class="col-md-3 team-gds wow fadeInDown animated three" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t3.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>corbin</h4>
			<p>Director </p>
		</div>
		<div class="col-md-3 team-gds wow fadeInRight animated four" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="images/t4.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class="ico1 hvr-underline-from-center" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>ferdan</h4>
			<p>Chair man </p>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
</div>
<!--//team-->

<!-- payment -->
<section class="payment jarallax" id="payment">
	<div class="container">
		<div class="payments-heading">
			<h3>Our Payments</h3>
		</div>
		<div class="payment-grids">
		<div class="col-md-3 payment-grid">
			<i class="fa fa-cc-visa" aria-hidden="true"></i>
			<h5>visa card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa credit fa-credit-card-alt" aria-hidden="true"></i>
			<h5>credit card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa fa-cc-mastercard" aria-hidden="true"></i>
			<h5>master card</h5>
		</div>
		<div class="col-md-3 payment-grid">
			<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
			<h5>debit card</h5>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //payment -->

<!-- our blog -->
<section class="blog" id="blog">
	<div class="container">
		<div class="blog-heading">
			<h3>Our blog</h3>
		</div>
		<div class="blog-grids">
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b2.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 21/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">lorem ipsum</a></h4>
			<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet dictum libero.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b1.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 20/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">dolor sit</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b3.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 19/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">sit amet</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet.</p>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //our blog -->

<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="span1"aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title"> Corporate<span> Bank</span></h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/business.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //modal -->
	
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
