package com.banking.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.banking.Model.*;
public class DbOperation {
	Connection conn;
	int count1, count2;

	public boolean insertAccountDetails(AccountModel model) throws Exception {

		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");

			PreparedStatement ps1 = conn.prepareStatement("insert into customer(id,f_name,l_name,address,city,"
					+ "branch,zip,username,password,phone,email,account_type,reg_date) values('" + model.getAccount_no()
					+ "','" + model.getFirst_name() + "','" + model.getLast_name() + "','" + model.getAddress() + "','"
					+ model.getCity() + "','" + model.getBranch() + "','" + model.getZip() + "','" + model.getUsername()
					+ "','" + model.getPassword() + "','" + model.getPhone_number() + "','" + model.getEmail() + "','"
					+ model.getAccount_type() + "','" + model.getReg_date() + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

	
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return (count1 > 0);
	}
	

	public boolean customerSignup(CustomerModel model) throws Exception{
		
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement ps1 = conn.prepareStatement("insert into customer(username,password,is_verified,account_number) values('" + model.getUsername()
					+ "','" + model.getPassword()+  "','" + model.getIs_verified() + "','" + model.getAccount_number() + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

		
	}catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
		return true;
	
	}
}
