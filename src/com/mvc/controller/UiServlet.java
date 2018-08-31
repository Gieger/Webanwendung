package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UiServlet
 */
@WebServlet("/Ui")
public class UiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UiServlet() 
    {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		
		request.getRequestDispatcher("./apps/dynamische/Ui.jsp").forward(request, response);	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String ui = request.getParameter("ui");

		
		if (ui.equals("classic"))
		{
			ui = "classic";
			
		}
		else if(ui.equals("modern"))
		{
			ui = "modern";
		}
		
		
		
		session.setAttribute("ui", ui);		
		request.getRequestDispatcher("./apps/dynamische/Ui.jsp").forward(request, response);
		
	}

}
