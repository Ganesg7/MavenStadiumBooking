package com.stadiumbooking.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stadiumbooking.daoimpl.SeatsDaoImpl;
import com.stadiumbooking.daoimpl.UserDaoImpl;
import com.stadiumbooking.model.Seats;
import com.stadiumbooking.model.User;

@WebServlet("/allBookingDetails")
public class AllBookingDetailsController extends HttpServlet {
	
	static final SeatsDaoImpl seatsDao=new SeatsDaoImpl();
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) {

		try {
		    List<Seats> seatList=seatsDao.getSeatsDetalis();
			 
		    req.setAttribute("seatList", seatList);
		
		      RequestDispatcher rd = req.getRequestDispatcher("allBookingDetails.jsp");			
					rd.forward(req, res);
		} catch (SQLException | ServletException | IOException e) {
			
			e.getMessage();
		}
		
	
	}

}
