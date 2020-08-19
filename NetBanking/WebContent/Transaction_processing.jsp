<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp" />

<body>

	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
	<div class="container-fullwidth">
		<div class="row" style="margin-top: 50px;">
			<div class="alert alert-success col-md-4 col-md-offset-4"
				role="alert">
				<h4 class="alert-heading">transaction is processed</h4>
				<p>
					<strong>Your transfer operation is yet to be checked.</strong>
				</p>
				<p class="mb-0">
				<%@ page import="com.banking.Model.*" %>
				<%TransactionModel tm = new TransactionModel(); %>
					<b>UserName: </b>
					<%System.out.println(tm.getUser()); %>
					</p>
				<p class="mb-0">
					<b>Amount: </b>
					<%System.out.println(tm.getAmount()); %>
				</p><p class="mb-0">
					<b>Reciever AccNo: </b>
					<%System.out.println(tm.getRAccount_no()); %>
					<p class="mb-0">
					<b>Txn ID: </b>
					<%System.out.println(tm.getTid()); %>
				</p>
				</p>
			</div>
			<label><a href="index.jsp">Go To Home Page</a></label>
		</div>
		<!-- Footer start here -->
		
	</div>
			</div>
		</div>

		<!-- Footer start here -->
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
</body>
</html>