package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URl-Mapping
@WebServlet("/Home")
public class HomeServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public HomeServlet()
    {
    	super();
    }
  //�ffen der View wenn die Seite /Zeiten angesurft wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/apps/statische/viewHome.jsp").forward(request, response);
	}
}
