<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp" />

<body>

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
										<label class="required">Enter Amount<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label> <input type="text"
											placeholder="Enter amount Here.." class="form-control"
											name="Amount" required>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Enter Accno of Reciever<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label> <input type="text"
											placeholder="Enter accno" class="form-control"
											name="rAccNo" required>
									</div>
									<div class="col-sm-4 form-group">
										<label class="required">Transaction Type<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label>
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
								 <% if((String)request.getAttribute("txnS")=="false") {%>
								 alert("Acc no doesn't exist");
								 <%} %>
								  <% if((String)request.getAttribute("txnS")=="false1") {%>
								 alert("Amount not acceptable");
								 <%} %>
								<% if((String)request.getAttribute("output") == "false"){
									%>
									alert("transaction failed!!! please do it again");
									<%} %>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer start here -->
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
</body>
</html>