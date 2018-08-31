package com.mvc.controller;
//Import
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.KundendatenBean;
import com.mvc.dao.DatenaendernDao;
//Url-Mapping
@WebServlet("/Passwortvergessen") 
public class PasswortaendernServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	public PasswortaendernServlet() 
	{
	}
	//Beim dierekten aufrufen von "/Passwortvergessen"
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{																										
		request.getRequestDispatcher("./apps/dynamische/viewPasswortaendern.jsp").forward(request, response);				
	}
	//Beim aufrufen durch übertragung von Formulardaten
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Variablen deklarieren
	 	String vorname = request.getParameter("vorname");
	 	String nachname=request.getParameter("nachname");
	 	String geschlecht= request.getParameter("geschlecht");
		String land=request.getParameter("land");
		String stadt=request.getParameter("stadt");
		String strasse=request.getParameter("strasse");
		String hausnummer = request.getParameter("hausnummer");		
		String newsletter= request.getParameter("newsletter");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		String sicherheitsfrage= request.getParameter("sicherheitsfrage");
		//Salten			
		password = sha1(password);
		password = sha1(sicherheitsfrage);
		//Schreiben der Daten in die Bean
		KundendatenBean kundendatenBean = new KundendatenBean();
		kundendatenBean.setvorname(vorname);
		kundendatenBean.setnachname(nachname);
		kundendatenBean.setgeschlecht(geschlecht);
		kundendatenBean.setland(land);
		kundendatenBean.setstadt(stadt);			
		kundendatenBean.setstrasse(strasse);
		kundendatenBean.sethausnummer(hausnummer);
		kundendatenBean.setemail(email);		 	
		kundendatenBean.setnewsletter(newsletter);
		kundendatenBean.setpassword(password);
		//Aufrufen der Dao mit Bean	 
	 	DatenaendernDao datenaendernDao = new DatenaendernDao();
	 	String userRegistered = datenaendernDao.setUser(kundendatenBean);
	 	if(userRegistered.equals("Erfolg"))
		{
			request.getRequestDispatcher("./apps/statische/registriertkontakt.jsp").forward(request, response);
		}
		else   
	 	{
	 		request.setAttribute("errMessage", userRegistered);
	 		request.getRequestDispatcher("/apps/dynamische/viewPasswortaendern.jsp").forward(request, response);
	 	} 
	}
	public String sha1(String input)
	{
		String value = input;
		String sha1 = "";
		//Mit den java libraries
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
