package com.mvc.dao;
//Import
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.EventBean;
import com.mvc.util.DBConnection;
public class EventDao 
{
	public void createTable(EventBean eventBean)
	{
		//Variabeln für Connection und Ausgabe erzeugen
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String ausgabe ="";
		//Versuch der Abarbeitung
		try
		{
			//Connection und Statement zuweisen
			con = DBConnection.createConnection();
			if(con!=null)
			{
				statement = con.createStatement();
				//Auszug aus der Datenbank
				resultSet = statement.executeQuery("SELECT evis, evbe From events");
				ausgabe ="<table class=\"texttable\">";
				while(resultSet.next())
				{
					ausgabe += "<tr><td><p>"+resultSet.getString("evis")+"</p>"+resultSet.getString("evbe")+"</td></tr>"; 
				}
				ausgabe += "</table>";
				eventBean.setAusgabe(ausgabe);
			}
		}
		//SQL exeption falls die Verbindung fehlschlägt
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
}