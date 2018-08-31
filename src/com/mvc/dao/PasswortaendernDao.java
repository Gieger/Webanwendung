package com.mvc.dao;
//Import
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.KundendatenBean;
import com.mvc.util.DBConnection;
//
public class PasswortaendernDao
{
	public String getUser(KundendatenBean kundendatenBean) 
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
		String sicherheitsfrage = kundendatenBean.getsicherheitsfrage();
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
 		String emailDB = "";
		String vornameDB = "";
		String nachnameDB = "";
		String landDB = "";
		String stadtDB = "";
		String strasseDB = "";
		String hausnummerDB = "";
		String geschlechtDB ="";
		String sicherheitsfrageDB ="";
		//Versuch für Datenändern
		try
		{
			//Zuweisung der Verbindungsdaten zur Datenbank
			con = DBConnection.createConnection(); 
			statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT vorname,nachname,land,stadt,strasse,hausnummer,geschlecht,sicherheitsfrage FROM kundendaten WHERE email='"+email+"'");
			//Solange bis kein nachfolgender Eintrag
			while(resultSet.next()) 
			{
				//Werte zuweisen
				emailDB = resultSet.getString("email"); 
				vornameDB = resultSet.getString("vorname"); 
				nachnameDB = resultSet.getString("nachname");
				landDB = resultSet.getString("land"); 
				stadtDB = resultSet.getString("stadt");
				strasseDB = resultSet.getString("strasse"); 
				hausnummerDB = resultSet.getString("hausnummer");
				geschlechtDB= resultSet.getString("geschlecht");
				sicherheitsfrageDB= resultSet.getString("sicherheitsfrage");
				//
				if(email.equals(emailDB) && vorname.equals(vornameDB)&& nachname.equals(nachnameDB)&& land.equals(landDB)&& stadt.equals(stadtDB)&& strasse.equals(strasseDB)&& hausnummer.equals(hausnummerDB)&& geschlecht.equals(geschlechtDB)&& sicherheitsfrage.equals(sicherheitsfrageDB))
				{	
					try 
					{
						PreparedStatement sqlzeile = null;					
						con= DBConnection.createConnection();
						String SQLReihenfolge ="UPDATE kundendaten SET password = ? WHERE email = ?";
						sqlzeile = con.prepareStatement(SQLReihenfolge);				
						sqlzeile.setString(1, password);
						sqlzeile.setString(1, email);
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
		}		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return "Kein eintrag gefunden";
	}	
}
