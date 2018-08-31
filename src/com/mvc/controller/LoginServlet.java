package com.mvc.controller;
 import java.io.IOException;

import java.math.BigInteger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.KundendatenBean;
import com.mvc.dao.LoginDao;

import java.security.MessageDigest;

@WebServlet("/Login") 
public class LoginServlet extends HttpServlet 
{

	private static final long serialVersionUID = 1L;

	public LoginServlet() 
	{
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
			{
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/apps/dynamische/viewLogin.jsp");
				dispatcher.forward(request, response);
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String vorname = request.getParameter("vorname");
		String nachname = request.getParameter("nachname");
		String land = request.getParameter("land");
		String stadt = request.getParameter("stadt");
		String strasse = request.getParameter("strasse");
		String hausnummer = request.getParameter("hausnummer");
		String geschlecht =request.getParameter("geschlecht");
		String agb = request.getParameter("agb");
		//Salten
		password = sha1(password);
		//Daten in die Bean
		KundendatenBean kundendatenBean = new KundendatenBean(); 
		kundendatenBean.setemail(email); 
		kundendatenBean.setpassword(password);
		kundendatenBean.setvorname(vorname);
		kundendatenBean.setnachname(nachname); 
		kundendatenBean.setland(land);
		kundendatenBean.setstadt(stadt); 
		kundendatenBean.setstrasse(strasse);
		kundendatenBean.sethausnummer(hausnummer); 
		kundendatenBean.setgeschlecht(geschlecht);
		kundendatenBean.setagb(agb);
		//Aufruf der Dao 
		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(kundendatenBean); 
		if(userValidate.equals("Erfolg")) 
		{
			HttpSession session = request.getSession(); 
			session.setAttribute("email", email); 
			request.setAttribute("email", email); 
			request.getRequestDispatcher("/apps/statische/viewEingeloggt.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("errMessage", userValidate); 
			request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
		}
	}
	public String sha1(String input)
	{
		String value = input;
		String sha1 = "";
		// Mit den java libraries
		try
		{
			MessageDigest digest = MessageDigest.getInstance("SHA-1");
	        digest.reset();
	        digest.update(value.getBytes("utf8"));
	        sha1 = String.format("%040x", new BigInteger(1, digest.digest()));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return sha1;
	}

}