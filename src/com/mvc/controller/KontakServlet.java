package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.KontaktBean;

import com.mvc.dao.KontaktDao;
@WebServlet("/Kontakt")

 
public class KontakServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public KontakServlet() 
	{
	}
	//Öffen der View wenn die Seite /Kontakt angesurft wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/apps/dynamische/viewKontakt.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	 	String vorname = request.getParameter("vorname");
	 	String nachname=request.getParameter("nachname");
	 	String besuchsdatum= request.getParameter("besuchsdatum");
		String land=request.getParameter("land");
		String strasse=request.getParameter("strasse");
		String hausnummer = request.getParameter("hausnummer");
		String email=request.getParameter("email");
		String stadt=request.getParameter("stadt");
		String anmerkung=request.getParameter("anmerkung");
		String age=request.getParameter("age");


		KontaktBean kontaktBean = new KontaktBean();
		kontaktBean.setvorname(vorname);
		kontaktBean.setnachname(nachname);
		kontaktBean.setbesuchsdatum(besuchsdatum);
		kontaktBean.setland(land);
		kontaktBean.setstrasse(strasse);
		kontaktBean.sethausnummer(hausnummer);
		kontaktBean.setemail(email);
		kontaktBean.setanmerkung(anmerkung);
		kontaktBean.setstadt(stadt);
		kontaktBean.setage(age);

		 
	 	KontaktDao kontaktDao = new KontaktDao();

	 	String kontaktAnfrage = kontaktDao.kontaktAnfrage(kontaktBean);
 
	 	if(kontaktAnfrage.equals("Erfolg"))
	 	{
	 		request.getRequestDispatcher("/apps/dynamische/viewKontakt.jsp").forward(request, response);
	 		
	 	}
	 	
	 	else   
	 	{
	 		request.setAttribute("errMessage", kontaktAnfrage);
	 		request.getRequestDispatcher("/apps/dynamische/viewKontakt.jsp").forward(request, response);
	 	} 
	}
}