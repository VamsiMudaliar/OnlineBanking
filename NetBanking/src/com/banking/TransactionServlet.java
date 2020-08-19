package com.banking;
import com.banking.Database.*;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banking.Model.*;
@WebServlet("/TransactionServlet")
public class TransactionServlet extends HttpServlet {
	int TAmount;
	String tid,rAccNo,Ttype;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		rAccNo = request.getParameter("rAccNo");
		Ttype = request.getParameter("Ttype");
		TAmount = Integer.parseInt(request.getParameter("Amount"));
		
		
		// Generating transaction id
		Random rand = new Random();
		int random_num = 1000000 + rand.nextInt(9999999);
		tid = "txid" + random_num;
		System.out.println(tid);

		//Getting Current date
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String tdate = df.format(new Date());
		
		// Setting all variables to model class
		TransactionModel tm = new TransactionModel();
		tm.setAmount(TAmount);
		tm.setDate(tdate);
		tm.setRAccount_no(rAccNo);
		tm.setStatus(false);
		tm.setTid(tid);
		tm.setTtype(Ttype);
		
	
		
		
	}
}
