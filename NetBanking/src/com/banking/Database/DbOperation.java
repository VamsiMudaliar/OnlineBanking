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
	int count1, count2,tcount,tbal,tacc=-1;

	

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
	
		
	public boolean insertTxnDetails(TransactionModel model) throws Exception{
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			
			PreparedStatement st = conn.prepareStatement("insert into transactions(TRANS_ID,TRANS_TYPE,AMOUNT,RECEIVER_ACCOUNT,"
					+"DATE,TRANSACTION_STATUS,username) values('" + model.getTid() + "','" +model.getTtype() + "','" 
					+ model.getAmount() + "','" + model.getRAccount_no() + "','" + model.getDate() + "','" +model.getStatus()
					+ "','" +model.getUser() + "')");
			tcount = st.executeUpdate();
			System.out.println("Inserted " + tcount + " row into txn table" );
			return true;
		}
		catch(Exception e){
			e.printStackTrace();

			return false;
					}
		
	}
	public boolean SearchAcc(String rAccNo) {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement st = conn.prepareStatement("select * from bank_account where account_number =" +rAccNo+"");
			tacc = st.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	if(tacc==-1) {
			return false; 
		}
	return true;
}
	public int getBal(String username) {
		try {
			db_con connect = new db_con();
			conn = connect.getConnection();
			System.out.println("Got connection");
			PreparedStatement st = conn.prepareStatement("select AMOUNT from bank_account where account_number in(select account_number from customer where username =" + username + "" );
			tbal = st.executeUpdate();
			System.out.println("bal is "+ tbal );
		}catch(Exception e){
			e.printStackTrace();
		}
		return tbal;
	}
	
}
