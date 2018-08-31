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
import com.mvc.dao.GutscheinCodeDao;
import com.mvc.dao.UserControlDao;
//URl-Mapping
@WebServlet("/GutscheinCode")
public class GutscheinCodeServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public GutscheinCodeServlet()
    {
    	super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession(); 
		String email = (String) session.getAttribute("email");
		//Prüfung ob ein USer angemeldet ist
		if(email==null)
		{
			request.setAttribute("errMessage", "Sie sind nicht angemeldet!"); 
			request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
		}
		else
		{
			UserControlBean gutscheinCodeBean = new UserControlBean();
			gutscheinCodeBean.setUserName(email);
			UserControlDao userControl = new UserControlDao();
			String userValidate = userControl.controllUser(gutscheinCodeBean);
			//Prüfung ob ein User aus der Datenbank angemeldet ist oder per script ein Falscher User.
			if(userValidate.equals("Erfolg"))
			{
				GutscheinCodeDao gutscheinGenerieren = new GutscheinCodeDao();
				String gutscheinValidate = gutscheinGenerieren.createGutschein(gutscheinCodeBean);
				//Die Tabelle über ${gutschein} aufrufbar machen
				request.setAttribute("gutschein", gutscheinValidate);
				//Weiterleiten auf die View
				request.getRequestDispatcher("/apps/dynamische/viewGutscheincode.jsp").forward(request, response);
			}
			//Wenn falscher User
			else
			{
				request.setAttribute("errMessage", userValidate); 
				request.getRequestDispatcher("/apps/dynamische/viewLogin.jsp").forward(request, response);
			}
		}
	}
}
