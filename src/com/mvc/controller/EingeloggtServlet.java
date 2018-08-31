package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mvc.bean.UserControlBean;
import com.mvc.dao.UserControlDao;
//URl-Mapping
@WebServlet("/Eingeloggt")
public class EingeloggtServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public EingeloggtServlet()
    {
    	super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//User aus der HTTP Session abrufen
		HttpSession session = request.getSession(); 
		String email = (String) session.getAttribute("email");
		//Prüfung ob kein User angemeldet ist
		if(email==null)
		{
			//Weiterleitung auf Login wenn kein User angemeldet ist
			request.setAttribute("errMessage", "Sie sind nicht angemeldet!"); 
			request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
		}
		else
		{
			//User aus der Datenbank ziehen
			UserControlBean userControlBean = new UserControlBean();
			userControlBean.setUserName(email);
			UserControlDao userControl = new UserControlDao();
			String userValidate = userControl.controllUser(userControlBean);
			//Prüfung ob ein User aus der Datenbank angemeldet ist oder per script ein Falscher User.
			if(userValidate.equals("Erfolg"))
			{
				//Wenn ein User angemeldet ist dann weiterleiten auf viewEingeloggt.jsp
				request.setAttribute("email", email);
				request.getRequestDispatcher("/apps/statische/viewEingeloggt.jsp").forward(request, response);
			}
			//Wenn falscher User
			else
			{
				//Weiterleiten auf Loginseite
				request.setAttribute("errMessage", userValidate); 
				request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
			}
		}
	}
}
