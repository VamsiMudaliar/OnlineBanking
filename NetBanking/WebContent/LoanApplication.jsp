<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/create_account.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/passwordChecker.js"></script>


<script type="javascript/text">




</script>

</head>
<body>
<div class="col-lg-6 col-lg-offset-3">

	<h1 class="text-center text-primary"><strong>Apply for Loan</strong></h1>

<form action="/loan_apply" method="POST" class="form-group">

<br><br>
<label for=" Type of Loan "><strong>Type of Loan</strong> </label>
<select id="loantype" class="form-control">

<option value="Personal_Loan"><strong>Personal Loan</strong></option>
<option value="Car_Loan"><strong>Car Loan</strong></option>
<option value="Mortages"><strong>Home Loan</strong> </option>
<option value="Student Loan"> <strong>Student Loan</strong></option>

</select>

<br>

<label for="Loan Amount"> Enter the Loan Amount :</label>
<input type="text" class="form-control" placeholder="Enter your loan Amount">

<br>

<label for=" Choose your Loan Duration"><strong>Choose Your Loan Duration :</strong></label>
<select id="interest_rate" class="form-control">
<option value=3 class="form-control">3 months</option>
<option value=6 class="form-control">6 months</option>
<option value=9 class="form-control">9 months</option>
<option value=12 class="form-control">12 months</option>
</select>

<br>

<label for=" Choose your interest rate "><strong> Choose your interest rate :</strong></label>
<select id="interest_rate" class="form-control">
<option value="Option 1" class="form-control">Option 1</option>
<option value="Option 2">Option 2</option>
<option value="Option 3">Option 3</option>
</select>

<br>

<label><strong>Your interest rate appears here..</strong></label>

<input type="text" value="0" class="form-control" disabled>

<br>
<input type="submit" class="btn btn-block btn-success form-control" value="Process Your Loan" >

</form>
</div>
</body>
</html>

