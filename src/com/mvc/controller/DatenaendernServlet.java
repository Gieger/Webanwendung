

package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.mvc.bean.KundendatenBean;
import com.mvc.dao.DatenaendernDao;

@WebServlet("/Daten") 
public class DatenaendernServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public DatenaendernServlet() 
	{
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
			{	
				HttpSession session = request.getSession(); 
				String email = (String) session.getAttribute("email");
				
				if(email == null) 
				{					
					request.setAttribute("errMessage", "Sie sind nicht angemeldet!");
					request.getRequestDispatcher("./apps/dynamische/viewLogin.jsp").forward(request, response);	
				}
		
				else
				{																	
					KundendatenBean kundendatenBean = new KundendatenBean();
					kundendatenBean.setemail(email);
					DatenaendernDao datenaendernDao = new DatenaendernDao();	
					datenaendernDao.getUser(kundendatenBean);
						
					String vorname = kundendatenBean.getvorname();
					String nachname = kundendatenBean.getnachname();
					String geschlecht = kundendatenBean.getgeschlecht();
					String land = kundendatenBean.getstadt();
					String stadt = kundendatenBean.getvorname();
					String strasse = kundendatenBean.getstrasse();
					String hausnummer = kundendatenBean.gethausnummer();
					String newsletter = kundendatenBean.getnewsletter();
			
					request.setAttribute("vorname", vorname);
					request.setAttribute("nachname", nachname);
					request.setAttribute("geschlecht", geschlecht);
					request.setAttribute("land", land);
					request.setAttribute("stadt", stadt);
					request.setAttribute("strasse", strasse);
					request.setAttribute("hausnummer", hausnummer);
					request.setAttribute("newsletter", newsletter);
						
					request.getRequestDispatcher("./apps/dynamische/viewDatenaendern.jsp").forward(request, response);
				}
			}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession(); 
		String email = (String) session.getAttribute("email");		

		if(email==null)
		{
			request.setAttribute("errMessage", "Sie sind nicht angemeldet!"); 
			request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
		}
		
		else
		{		
		 	String vorname = request.getParameter("vorname");
		 	String nachname=request.getParameter("nachname");
		 	String geschlecht= request.getParameter("geschlecht");
			String land=request.getParameter("land");
			String stadt=request.getParameter("stadt");
			String strasse=request.getParameter("strasse");
			String hausnummer = request.getParameter("hausnummer");		
			String newsletter= request.getParameter("newsletter");
			
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
			 
		 	DatenaendernDao datenaendernDao = new DatenaendernDao();
	
		 	String userRegistered = datenaendernDao.setUser(kundendatenBean);
	 
		 	if(userRegistered.equals("Erfolg"))
		 	{
		 		request.getRequestDispatcher("./apps/statische/registriertkontakt.jsp").forward(request, response);
		 		
		 	}
		 	
		 	else   
		 	{
		 		request.setAttribute("errMessage", userRegistered);
		 		request.getRequestDispatcher("/apps/dynamische/viewDatenaendern.jsp").forward(request, response);
		 	} 
		}
	}
}