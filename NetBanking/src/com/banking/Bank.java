package com.banking;

import java.sql.Connection;
import java.sql.DriverManager;

public class Bank {
	public static void main(String[] args) {

    try {
    	 Class.forName("com.mysql.cj.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
       System.out.println("Connection successful");
    } catch (Exception e) {
       System.err.println(e);
    }
  }
//	class.forName("com.mysql.jdbc.Driver");
//	Connection conn = null;
//	conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root", "");
//	System.out.print("Database is connected !");
//	conn.close();
}
