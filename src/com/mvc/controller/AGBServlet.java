package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URl-Mapping
@WebServlet("/AGB")
public class AGBServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public AGBServlet()
    {
    	super();
    }
  //Öffen der View wenn die Seite /AGB angesurft wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/apps/statische/viewAgb.jsp").forward(request, response);
	}
}
