package com.mvc.dao;
 
import java.sql.Connection;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;

import com.mvc.bean.KundendatenBean;
 import com.mvc.util.DBConnection;
public class LoginDao 
{
	public String authenticateUser(KundendatenBean kundendatenBean)
	{
		//Variablen Deklaration
		String email = kundendatenBean.getemail();
		String password = kundendatenBean.getpassword();
		String vorname = kundendatenBean.getvorname();
		String nachname = kundendatenBean.getnachname();
		String land = kundendatenBean.getland();
		String stadt = kundendatenBean.getstadt();
		String strasse = kundendatenBean.getstrasse();
		String hausnummer = kundendatenBean.gethausnummer();
		String geschlecht = kundendatenBean.getgeschlecht();
		String agb = kundendatenBean.getagb();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String emailDB = "";
		String passwordDB = "";
		String vornameDB = "";
		String nachnameDB = "";
		String landDB = "";
		String stadtDB = "";
		String strasseDB = "";
		String hausnummerDB = "";
		String geschlechtDB ="";
		String agbDB="";
		try
		{
			//Werte für Verbindungsaufbau
			con = DBConnection.createConnection(); 
			statement = con.createStatement();
			resultSet = statement.executeQuery("select email,password,vorname,nachname,land,stadt,strasse,hausnummer,geschlecht,agb from kundendaten"); 
			while(resultSet.next()) 
			{
				emailDB = resultSet.getString("email"); 
				passwordDB = resultSet.getString("password");
				vornameDB = resultSet.getString("vorname"); 
				nachnameDB = resultSet.getString("nachname");
				landDB = resultSet.getString("land"); 
				stadtDB = resultSet.getString("stadt");
				strasseDB = resultSet.getString("strasse"); 
				hausnummerDB = resultSet.getString("hausnummer");
				geschlechtDB= resultSet.getString("geschlecht");
				agbDB=resultSet.getString("agb");
				//
				if(email.equals(emailDB) && password.equals(passwordDB)&& vorname.equals(vornameDB)&& nachname.equals(nachnameDB)&& land.equals(landDB)&& stadt.equals(stadtDB)&& strasse.equals(strasseDB)&& hausnummer.equals(hausnummerDB)&& geschlecht.equals(geschlechtDB)&& agb.equals(agbDB))
				{
					return "Erfolg";
				}			
			}			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Invalid user credentials";
	}
}
 
 