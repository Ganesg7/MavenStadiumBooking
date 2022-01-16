package com.stadiumbooking.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stadiumbooking.daoimpl.UserDaoImpl;
import com.stadiumbooking.model.User;



@WebServlet("/loginserv")
public class UserController extends HttpServlet {

	UserDaoImpl userDao=new UserDaoImpl();
	
	public void service(HttpServletRequest req, HttpServletResponse res) {
		
		/* Getting User Details */
		
		String name=req.getParameter("name").trim();
		String uname=req.getParameter("uname").trim();
		String pass=req.getParameter("pass").trim();
		String mail=req.getParameter("mail").trim();
		Long phone=Long.parseLong(req.getParameter("phone"));
		//System.out.println(name+"\n"+uname);
		User user=new User(name,uname,pass,mail,phone);
		try {
			userDao.insertUser(user);
			res.sendRedirect("login.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch  (IOException e) {
			e.printStackTrace();
		}
		

	}
	
		
	
	
	
}
