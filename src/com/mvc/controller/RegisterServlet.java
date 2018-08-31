package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.KundendatenBean;
import com.mvc.dao.RegisterDao;
//Url-Mapping
@WebServlet("/Register")  
public class RegisterServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	public RegisterServlet() 
	{
	}
	//Wenn "/Register" aufgerufen wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
			{
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/apps/dynamische/viewRegister.jsp");
				dispatcher.forward(request, response);
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Variablen Deklaration
	 	String vorname = request.getParameter("vorname");
	 	String nachname=request.getParameter("nachname");
	 	String geschlecht= request.getParameter("geschlecht");
		String land=request.getParameter("land");
		String stadt=request.getParameter("stadt");
		String strasse=request.getParameter("strasse");
		String hausnummer = request.getParameter("hausnummer");
		String email=request.getParameter("email");
		String password =request.getParameter("password");
		String sicherheitsfrage= request.getParameter("sicherheitsfrage");
		String newsletter= request.getParameter("newsletter");
		String agb= request.getParameter("agb");
		//Daten in Bean
		KundendatenBean kundendatenBean = new KundendatenBean();
		kundendatenBean.setvorname(vorname);
		kundendatenBean.setnachname(nachname);
		kundendatenBean.setgeschlecht(geschlecht);
		kundendatenBean.setland(land);
		kundendatenBean.setstadt(stadt);
		kundendatenBean.setstrasse(strasse);
		kundendatenBean.sethausnummer(hausnummer);
		kundendatenBean.setemail(email);
		kundendatenBean.setpassword(password);
		kundendatenBean.setsicherheitsfrage(sicherheitsfrage);
		kundendatenBean.setnewsletter(newsletter);
		kundendatenBean.setagb(agb);
		//Aufruf der Dao
	 	RegisterDao registerDao = new RegisterDao();
	 	String userRegistered = registerDao.registerUser(kundendatenBean);
	 	if(userRegistered.equals("Erfolg"))
	 	{
	 		request.getRequestDispatcher("/Login").forward(request, response);
	 	}
	 	else   
	 	{
	 		request.setAttribute("errMessage", userRegistered);
	 		request.getRequestDispatcher("/apps/dynamische/viewRegister.jsp").forward(request, response);
	 	} 
	}
}