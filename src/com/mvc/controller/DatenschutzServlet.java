package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URl-Mapping
@WebServlet("/Datenschutz")
public class DatenschutzServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public DatenschutzServlet()
    {
    	super();
    }
  //Öffen der View wenn die Seite /Datenschutz angesurft wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("/apps/statische/viewDatenschutz.jsp").forward(request, response);
	}
}
