<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.banking.Database.DbOperation"%>
<%@page import="com.banking.Database.db_con"%>
<%@page import="java.sql.*"%>

<%@page import="com.banking.Model.CustomerModel"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Data Table</title>


		<jsp:include page="header.jsp" />
<div class="container-fluid">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Customer <b>Details</b></h2></div>
                    <div class="col-sm-4">
                        <div class="search-box">
                            <i class="material-icons">&#xE8B6;</i>
                            <input type="text" class="form-control" placeholder="Search&hellip;">
                        </div>
                    </div>
                </div>
            </div>
            <%
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				%>
            <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                        
                        <th>Username <i class="fa fa-sort"></i></th>
                        <th>Is_verified <i class="fa fa-sort"></i></th>
                        <th>Account_Number</th>
                        <th>Operation</th>
                      
                    </tr>
                </thead>
                <tbody>
                    <%
					try{
					
						db_con connect = new db_con();
						conn = connect.getConnection();

						stmt = conn.createStatement();

						 rs = stmt.executeQuery("select * from customer");
					while(rs.next()){
					%>
                     
                    <tr>
                        <td><%=rs.getString(1) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>

                        <td>
                            <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                            <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>  
                    <%
						}
						conn.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>      
                </tbody>
            </table>
           
        </div>
    </div>  
</div>   

		<jsp:include page="footer.jsp" />

</body>
</html>