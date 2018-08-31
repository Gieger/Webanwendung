package com.mvc.dao;
//Import 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.KundendatenBean;
import com.mvc.util.DBConnection;
public class RegisterDao 
{
	public String registerUser(KundendatenBean kundendatenBean)
	{
		//Variablen Deklaration
		String vorname = kundendatenBean.getvorname();
		String nachname = kundendatenBean.getnachname();
		String geschlecht= kundendatenBean.getgeschlecht();
		String land = kundendatenBean.getland();
		String stadt = kundendatenBean.getstadt();
		String strasse = kundendatenBean.getstrasse();
		String hausnummer = kundendatenBean.gethausnummer();
		String email = kundendatenBean.getemail();
		String password = kundendatenBean.getpassword();
		String newsletter= kundendatenBean.getnewsletter();
		String sicherheitsfrage= kundendatenBean.getsicherheitsfrage();
		String agb= kundendatenBean.getagb();
		Connection con =null;
		PreparedStatement sqlzeile = null;
		try 
		{
			con= DBConnection.createConnection();
			String SQLReihenfolge ="insert into kundendaten(id,vorname,nachname,geschlecht,land,stadt,strasse,hausnummer,email,password,newsletter,sicherheitsfrage,agb) values (Null,?,?,?,?,?,?,?,?,SHA1(?),?,SHA1(?),?)";
			sqlzeile = con.prepareStatement(SQLReihenfolge);
			sqlzeile.setString(1, vorname);
			sqlzeile.setString(2, nachname);
			sqlzeile.setString(3, geschlecht);
			sqlzeile.setString(4, land);
			sqlzeile.setString(5, stadt);
			sqlzeile.setString(6, strasse);
			sqlzeile.setString(7, hausnummer);
			sqlzeile.setString(8, email);
			sqlzeile.setString(9, password);
			sqlzeile.setString(10, newsletter);
			sqlzeile.setString(11, sicherheitsfrage);
			sqlzeile.setString(12, agb);
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