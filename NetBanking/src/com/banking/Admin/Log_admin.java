package com.banking.Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banking.Database.db_con;
import com.banking.Model.CustomerModel;

public class Log_admin  extends HttpServlet{

	
	

	String UserName, password;
	Connection conn;
	Statement stmt;
	CustomerModel cm = null;
	boolean pass_wrong = false;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserName = request.getParameter("UserName");
		password = request.getParameter("password");

		System.out.println(UserName);
		System.out.println(password);
		if (UserName=="root" && password=="123") {
			RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
			rd.forward(request, response);
		}

	}

}
