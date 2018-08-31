package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URl-Mapping
@WebServlet("/Zeiten")
public class ZeitenServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public ZeitenServlet()
    {
    	super();
    }
  //Öffen der View wenn die Seite /Zeiten angesurft wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/apps/statische/viewZeiten.jsp").forward(request, response);
	}
}
