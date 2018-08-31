package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean.KundendatenBean;

import com.mvc.util.DBConnection;
 
public class DatenaendernDao 
{
	public String getUser(KundendatenBean kundendatenBean)
	{
		String email = kundendatenBean.getemail();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
 	
		String vornameDB = "";
		String nachnameDB = "";
		String landDB = "";
		String stadtDB = "";
		String strasseDB = "";
		String hausnummerDB = "";
		String geschlechtDB ="";
		String newsletterDB="";
 
		try
		{
			con = DBConnection.createConnection(); 
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT vorname,nachname,land,stadt,strasse,hausnummer,geschlecht,newsletter FROM kundendaten WHERE email='"+email+"'"); 
 
			while(resultSet.next()) 
			{							
				vornameDB = resultSet.getString("vorname"); 
				nachnameDB = resultSet.getString("nachname");
				landDB = resultSet.getString("land"); 
				stadtDB = resultSet.getString("stadt");
				strasseDB = resultSet.getString("strasse"); 
				hausnummerDB = resultSet.getString("hausnummer");
				geschlechtDB= resultSet.getString("geschlecht");
				newsletterDB=resultSet.getString("newsletter");
				
				if (newsletterDB == null) 
				{
					newsletterDB = "false";
				}
					
				kundendatenBean.setvorname(vornameDB);
				kundendatenBean.setnachname(nachnameDB);
				kundendatenBean.setland(landDB);
				kundendatenBean.setstadt(stadtDB);
				kundendatenBean.setstrasse(strasseDB);
				kundendatenBean.sethausnummer(hausnummerDB);
				kundendatenBean.setgeschlecht(geschlechtDB);
				kundendatenBean.setnewsletter(newsletterDB);
			}			
		}
		
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return " Es ist ein Fehler aufgetretten ";
	}
	
	public String setUser(KundendatenBean kundendatenBean)
	{
		String vorname = kundendatenBean.getvorname();
		String nachname = kundendatenBean.getnachname();
		String geschlecht= kundendatenBean.getgeschlecht();
		String land = kundendatenBean.getland();
		String stadt = kundendatenBean.getstadt();
		String strasse = kundendatenBean.getstrasse();
		String hausnummer = kundendatenBean.gethausnummer();
		String email = kundendatenBean.getemail();
		String newsletter= kundendatenBean.getnewsletter();
			
		Connection con =null;
		PreparedStatement sqlzeile = null;
	
		try 
		{
			con= DBConnection.createConnection();
			
			String SQLReihenfolge ="UPDATE kundendaten SET vorname = ?,nachname = ?,geschlecht = ?,land = ?,stadt = ?,strasse = ?,hausnummer = ?,newsletter = ? WHERE email = ?";
			
			sqlzeile = con.prepareStatement(SQLReihenfolge);
			
			sqlzeile.setString(1, vorname);
			sqlzeile.setString(2, nachname);
			sqlzeile.setString(3, geschlecht);
			sqlzeile.setString(4, land);
			sqlzeile.setString(5, stadt);
			sqlzeile.setString(6, strasse);
			sqlzeile.setString(7, hausnummer);
			sqlzeile.setString(8, newsletter);
			sqlzeile.setString(9, email);
						
			int i = sqlzeile.executeUpdate();
			
			if (i!=0)
				return "Erfolg";			
		}
		
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return " Es ist ein Fehler aufgetretten ";
	}

}