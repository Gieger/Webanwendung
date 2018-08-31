package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mvc.bean.AnfahrtBean;
import com.mvc.dao.AnfahrtDao;
//Url-Mapping
@WebServlet("/Anfahrt")
public class AnfahrtServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    public AnfahrtServlet()
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
	{
		AnfahrtBean anfahrtBean= new AnfahrtBean();	 
		AnfahrtDao anfahrtDao = new AnfahrtDao();
		anfahrtDao.Text(anfahrtBean);
		String text = anfahrtBean.gettext();
		if(text != null)
		{
			request.setAttribute("text", text);
		    request.getRequestDispatcher("/apps/dynamische/viewAnfahrt.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("/Error").forward(request, response);
		}
	}  
}
