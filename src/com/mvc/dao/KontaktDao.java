package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.KontaktBean;
import com.mvc.util.DBConnection;
 
public class KontaktDao 
{
	public String kontaktAnfrage(KontaktBean kontaktBean)
	{
		String vorname = kontaktBean.getvorname();
		String nachname = kontaktBean.getnachname();
		String anmerkung=kontaktBean.getanmerkung();
		String land = kontaktBean.getland();
		String strasse = kontaktBean.getstrasse();
		String hausnummer = kontaktBean.gethausnummer();
		String email = kontaktBean.getemail();
		String besuchsdatum = kontaktBean.getbesuchsdatum();
		String stadt=kontaktBean.getstadt();
		String age=kontaktBean.getage();
		
		int ageint= Integer.parseInt(age);

 
		Connection con =null;
		PreparedStatement sqlzeile = null;
		
		
		
	
		try 
		{
			
			con= DBConnection.createConnection();
			
			String SQLReihenfolge ="insert into kontakt(id,vorname,nachname,anmerkung,land,strasse,hausnummer,email,stadt,besuchsdatum,ageInt) values (Null,?,?,?,?,?,?,?,?,?,?) ";
			
			sqlzeile = con.prepareStatement(SQLReihenfolge);
			
			sqlzeile.setString(1, vorname);
			sqlzeile.setString(2, nachname);
			sqlzeile.setString(3, anmerkung);
			sqlzeile.setString(4, land);
			sqlzeile.setString(5, strasse);
			sqlzeile.setString(6, hausnummer);
			sqlzeile.setString(7, email);
			sqlzeile.setString(8, stadt);
			sqlzeile.setString(9,  besuchsdatum);
			sqlzeile.setInt(10,  ageint);
			
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
