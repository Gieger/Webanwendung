package com.mvc.controller;
 //Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Url-Mapping
@WebServlet(urlPatterns = { "/Error" })
public class PageNotFoundServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public PageNotFoundServlet()
	{
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		ServletOutputStream out = response.getOutputStream();
		out.println("<html>");
		out.println("<head><title>Es ist ein Fehler aufgetreten</title></head>");
		out.println("<body>");
		out.println("<h3>Tut uns leid es ist ein Fehler unterlaufen. Bitte versuchen Sie es in den n�chsten 10 Minuten wieder</h3>");
		out.println("<h1>404</h1>");;
		out.println("</body>");
		out.println("<html>");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}
 