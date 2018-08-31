package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.ReservierenBean;
import com.mvc.util.DBConnection;
import java.sql.ResultSet;
 
public class ReservierenDao 
{
	public String reserviert(ReservierenBean reservierenBean)
	{
		
		
		String vorname = reservierenBean.getvorname();
		String nachname = reservierenBean.getnachname();
		String plaetze= reservierenBean.getplaetze();
		String reservierungsdatum=reservierenBean.getreservierungsdatum();
		String email = reservierenBean.getemail();
		String alter = reservierenBean.getalter();
		String land= reservierenBean.getland();
		String stadt=reservierenBean.getstadt();
		String strasse= reservierenBean.getstrasse();
		String hausnummer=reservierenBean.gethausnummer();
		String datum = reservierungsdatum;
		int zahl = Integer.parseInt(plaetze);
		int alterint= Integer.parseInt(alter);
 
		Connection con =null;
		PreparedStatement sqlzeile = null;
		
		Statement statement = null;
		
		int datumDB;
		
		
		
		
		try {
		
			con= DBConnection.createConnection();
			statement = con.createStatement();
			String query1= "SELECT COUNT(*) From reservieren where reservierungsdatum='"+ datum + "'";
			
			ResultSet rs = statement.executeQuery(query1);
	
			
			
			if(rs.next()) {
				
				
			
			datumDB = rs.getInt(1);
			
			
			
			
			if (datumDB + zahl<= 10  ) 
			{
				 
				 	try 
				 	{

							 
						
						String SQLReihenfolge ="insert into reservieren(id,vorname,nachname,plaetze,reservierungsdatum,email,alterInt,land,stadt,strasse,hausnummer) values (Null,?,?,?,?,?,?,?,?,?,?) ";
						
						sqlzeile = con.prepareStatement(SQLReihenfolge);
						
						sqlzeile.setString(1, vorname);
						sqlzeile.setString(2, nachname);
						sqlzeile.setString(3, plaetze);
						sqlzeile.setString(4, reservierungsdatum);
						sqlzeile.setString(5, email);
						sqlzeile.setInt(6, alterint);
						sqlzeile.setString(7, land);
						sqlzeile.setString(8, stadt);
						sqlzeile.setString(9, strasse);
						sqlzeile.setString(10, hausnummer);
						
						 int zaehlen= 1;
						while (zaehlen <= zahl)
								 
							{	
						 		 sqlzeile.executeUpdate();
								 
								System.out.println("Hello Java");
								
							
									
									zaehlen ++;			
						 	}
						return "Erfolg";
					 }
				 		
				 	catch (SQLException e)
				 	{
						e.printStackTrace();
						
					}
				 	return "es ist eine Fehler aufgetreten";
				 
			}
			
			else {
				return " es gibt keine plätze mehr";
			}
			
			
			}
			 			
	
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			
		}
		return "Es ist ein Fehler bei der tisch überprüfung entstanden";
		 
		
		
		 }
		
	
}