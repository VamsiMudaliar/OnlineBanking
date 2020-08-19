<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Money Transfer</title>
<!-- .css files -->
	<link href="css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Ropa+Sans:400,400i&amp;subset=latin-ext" rel="stylesheet">
<!-- //fonts -->
<!-- scrolling script -->

</head>

<body>
<div class="top-bar">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#index.html" class="scroll">home</a></li>
							<li><a href="#about" class="scroll">about</a></li>
							<li><a href="#services" class="scroll">services</a></li>
							<li><a href="#skills" class="scroll">skills</a></li>
							<li><a href="#team" class="scroll">team</a></li>
							<li><a href="#payment" class="scroll">payment</a></li>
							<li><a href="#blog" class="scroll">blog</a></li>
							<li><a href="#contact" class="scroll">contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">Transfer Money</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="TransactionServlet" method="post">
							<div class="col-sm-12">
								<div class="row">
									
									<div class="col-sm-6 form-group">
										<label class="required">Enter Amount</label> <input type="text"
											placeholder="Enter amount Here.." class="form-control"
											name="Amount" required>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Enter Accno of Reciever</label> <input type="text"
											placeholder="Enter accno" class="form-control"
											name="rAccNo" required>
									</div>
									<div class="col-sm-4 form-group">
										<label class="required">Transaction Type</label>
										<div class="input-group-btn">
											<select class="form-control btn btn-default" name="Ttype" required>
												<option>to bank acc</option>
												<option>bill payment</option>
												<option>mobile recharge</option>
												
											</select>
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								
								<input type="submit" class="btn btn-lg btn-info">
								</input>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer start here -->
		
	</div>
</body>
</html>