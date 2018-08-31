package com.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.EventBean;
import com.mvc.dao.EventDao;

/**
 * Servlet implementation class EventServlet
 */
@WebServlet("/Events")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public EventServlet()
	{
	}
	//�ffnet die View wenn auf die Seite gegangen wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		EventBean eventBean = new EventBean();
		//�bergabe der Bean an die Dao
		EventDao eventDao = new EventDao();
		eventDao.createTable(eventBean);
		String ausgabe = eventBean.getAusgabe();
		if(ausgabe != null)
		{
			//Die Tabelle �ber ${tabelle} aufrufbar machen
			request.setAttribute("tabelle", ausgabe);
			//Weiterleiten auf die View
			request.getRequestDispatcher("/apps/dynamische/viewEvents.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("/Error").forward(request, response);
		}
	}
	//�ffnet die View und �bergibt die Daten f�r die Tabelle wenn auf show gedr�ckt wird
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	} 
}
