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
				<%@ page import="com.banking.*" %>
				<%@page import="com.banking.Model.*" %>
				<%TransactionModel tm = (TransactionModel)request.getAttribute("tm"); %>
					<b>UserName: </b>
					<%=tm.getUser()%>
					</p>
				<p class="mb-0">
					<b>Amount: </b>
					<%=tm.getAmount() %>
				</p><p class="mb-0">
					<b>Reciever AccNo: </b>
					<%=tm.getRAccount_no() %>
					<p class="mb-0">
					<b>Txn ID: </b>
					<%=tm.getTid() %>
				</p>
			
			</div><br><br>
		<div>
			<label><a href="Services.jsp">Go To Services Page</a></label>
		</div>
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