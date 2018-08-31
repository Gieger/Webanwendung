package com.mvc.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.ReservierenBean;
import com.mvc.dao.ReservierenDao;
@WebServlet("/Reservieren")   
public class ReservierenServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public ReservierenServlet() 
	{
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
			{
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/apps/dynamische/viewReservieren.jsp");
				dispatcher.forward(request, response);
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	 	String vorname = request.getParameter("vorname");
	 	String nachname=request.getParameter("nachname");
	 	String plaetze=request.getParameter("plaetze");
	 	String reservierungsdatum=request.getParameter("reservierungsdatum");
	 	String email = request.getParameter("email");
	 	String alter=request.getParameter("alter");
	 	String land=request.getParameter("land");
	 	String stadt=request.getParameter("stadt");
	 	String strasse=request.getParameter("strasse");
	 	String hausnummer=request.getParameter("hausnummer");


		ReservierenBean reservierenBean = new ReservierenBean();
		reservierenBean.setvorname(vorname);
		reservierenBean.setnachname(nachname);
		reservierenBean.setplaetze(plaetze);
		reservierenBean.setreservierungsdatum(reservierungsdatum);
		reservierenBean.setemail(email);
		reservierenBean.setalter(alter);
		reservierenBean.setland(land);
		reservierenBean.setstadt(stadt);
		reservierenBean.setstrasse(strasse);
		reservierenBean.sethausnummer(hausnummer);
	 	
		 
	 	ReservierenDao reservierenDao = new ReservierenDao();

	 	String reserviert = reservierenDao.reserviert(reservierenBean);
 
	 	if(reserviert.equals("Erfolg"))
	 	{
	 		request.getRequestDispatcher("/apps/statische/viewReserviert.jsp").forward(request, response);
	 		
	 	}
	 	
	 	else   
	 	{
	 		request.setAttribute("errMessage", reserviert);
	 		request.getRequestDispatcher("/apps/dynamische/viewReserviert.jsp").forward(request, response);
	 	} 
	}
}