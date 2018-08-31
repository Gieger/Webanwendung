package com.mvc.dao;
//Import
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.bean.MenuBean;
import com.mvc.util.DBConnection;
public class SpeiseKartenDao 
{
	public String createTable(MenuBean menuBean)
	{
		//Daten aus der Bean holen
		String metJSP = menuBean.getMenuTag();
		String siteJSP =  menuBean.getSite();
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
			statement = con.createStatement();
			//Ausgabe aus der Datenbank
			
			//site = Seite(z.B. angebot); meta = MenuTagg(z.B. salat); meis = MenuImageSource; mebe=MenuBeschreibung; mepr= MenuPreis
			//Bearbeitungsvariabeln deklarieren
			String metDB ="";
			String siteDB="";
			//Prüfen ob auf der Website ein MenuTagg (klein, mittel, groß) gewählt wurde
			if(metJSP!=null)
			{
				//Beginn des ausgabe Strings
				ausgabe = "<table class=\"texttable\">";
				if(siteJSP.equals("angebote"))
				{
					if(metJSP.contains("mittag"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("mittag"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("saison"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("saison"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("spezial"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if("saison".equals(metDB))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
				}
				else if(siteJSP.equals("vorspeisen"))
				{
					if(metJSP.contains("salat"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("salat"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("suppe"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("suppe"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("brote"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if("brote".equals(metDB))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
				}
				else if(siteJSP.equals("hauptspeisen"))
				{
					if(metJSP.contains("burger"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("burger"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("steak"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("steak"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("vegie"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if("vegie".equals(metDB))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
				}
				else if(siteJSP.equals("suesses"))
				{
					if(metJSP.contains("gebackenes"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("gebackenes"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("obst"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("obst"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("eis"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if("eis".equals(metDB))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
				}
				else if(siteJSP.equals("getraenke"))
				{
					if(metJSP.contains("alcfrei"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("alcfrei"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("bier"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if(metDB.equals("bier"))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
					if(metJSP.contains("schnaps"))
					{
						resultSet = statement.executeQuery("SELECT site, meta, meis, mebe, mepr From menu");
						while(resultSet.next())
						{
							siteDB = resultSet.getString("site");
							if(siteJSP.equals(siteDB))
							{
								//Auslesen aus der Datenbank
								metDB = resultSet.getString("meta");
								//Prüfen ob MenuTagg aus der Datenbank mit der gewollten MenuTagg übereinstimmt
								if("schnaps".equals(metDB))
								{
									//Zusammensetzung der Ausgabe
									ausgabe += "<tr><td><img src=\""+resultSet.getString("meis")+"\"></td>"+ "<td>"+resultSet.getString("mebe")+"</td>"+ "<td>"+resultSet.getString("mepr")+"</td>"+"</tr>"; 
								}
							}
						}
					}
				}
				//Ende des Ausgabe Strings
				ausgabe += "</table>";
			}
		}
		//SQL exeption falls die Verbindung fehlschlägt
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		//Ausgabe zurückgeben
		return ausgabe;
	}
}