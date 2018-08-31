package com.mvc.dao;
//Import
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.UserControlBean;
import com.mvc.util.DBConnection;

public class UserControlDao 
{
	public String controllUser(UserControlBean gutscheinCodeBean)
	{
		//Daten aus der Bean holen
		String user = gutscheinCodeBean.getUserName();
		//Variabeln zum Datenbank Verbindungsaufbau und ausgabe der Daten
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String userNameDB = "";
		try
		{
			//Verbindungsaufbau und Uuweisung der gesuchten Daten
			con = DBConnection.createConnection(); 
			statement = con.createStatement();
			resultSet = statement.executeQuery("select email from kundendaten"); 
			//Suche ob der angemeldete User wirklich in der Datenbank exestiert
			while(resultSet.next()) 
			{
				userNameDB = resultSet.getString("email"); 
				if(user.equals(userNameDB))
				{
					return "Erfolg";
				}			
			}			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Ihr Browser übergibt einen uns nicht bekannten User";
	}
}