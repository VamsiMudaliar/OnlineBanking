<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:include page="header.jsp" />
<body>
<%@ page import = "java.sql.*"%>
<%@ page import="com.banking.Model.*" %>
<%Class.forName("com.mysql.cj.jdbc.Driver");
 %>
 <% %>
 <H1 align="center">Transaction History</H1>
 <%HttpSession ses = request.getSession();
 	CustomerModel cm = null;
	cm = (CustomerModel)session.getAttribute("userDetails");
	String username = (String)cm.getUsername();
	System.out.println("  " + username);
 %>
 <%
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
 PreparedStatement st = conn.prepareStatement("select * from transactions where username='"+username+"'");
	ResultSet rs = st.executeQuery();
	
 %>
 <br><br><br>
 <table border="1" align="center" bgcolor="blue">
 <tr>
 <th>Reciever Acc NO</th>
 <th>Amount Transfered </th>
 <th>Date</th>
 <th>Transaction ID</th>
 <th>Transaction Type</th>
 <th>Transaction Status*</th>
 </tr>
 <%while(rs.next()){ %>
 <tr>
 <td><%=rs.getString(4) %></td>
  <td><%=rs.getString(3) %></td>
   <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
     <td><%=rs.getString(6) %></td>
 </tr>
 
 <%} %>
 </table>
 <div>
 	<h5 align="center">*transaction status "0" means not yet conformed by bank "1" indicates Txn Success</h5> 
 	
 </div><br><br><br><br>
 <div>
	<label align="right"><a href="Services.jsp">Go Back To Services</a></label>
 </div>
 <!-- Footer start here -->
		<jsp:include page="footer.jsp"></jsp:include>
 
 

 
</body>
</html>