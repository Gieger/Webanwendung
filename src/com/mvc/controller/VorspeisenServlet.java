package com.mvc.controller;
//Import
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import com.mvc.bean.MenuBean;
import com.mvc.dao.SpeiseKartenDao;
//URl-Mapping
@WebServlet("/Vorspeisen") 
public class VorspeisenServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public VorspeisenServlet()
	{
	}
	//Öffnet die View wenn auf die Seite gegangen wird
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/apps/dynamische/viewVorspeisen.jsp");
	    dispatcher.forward(request, response);
	}
	//Öffnet die View und übergibt die Daten für die Tabelle wenn auf show gedrückt wird
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//Nimmt die Eingabe auf und speicher sie in einem Array
		String met = request.getParameter("selectedMenueTagg");
		String site = "vorspeisen";
		//Übergabe der VAriabeln in die Bean
		MenuBean menuBean = new MenuBean();
		menuBean.setMenuTag(met);
		menuBean.setSite(site);
		//Übergabe der Bean an die Dao
		SpeiseKartenDao speiseKartenDao = new SpeiseKartenDao();
		String tableValidate = speiseKartenDao.createTable(menuBean);
		//Die Tabelle über ${tabelle} aufrufbar machen
		request.setAttribute("tabelle", tableValidate);
		//Weiterleiten auf die View
		request.getRequestDispatcher("/apps/dynamische/viewVorspeisen.jsp").forward(request, response);
	} 
}