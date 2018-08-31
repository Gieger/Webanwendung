package com.mvc.bean;
 
public class ReservierenBean 
{
	private String vorname;
	private String nachname;
	private String plaetze;
	private String reservierungsdatum;
	private String email;
	private String alter;
	private String land;
	private String stadt;
	private String strasse;
	private String hausnummer;


	
	public String getvorname()
	{
		return vorname;
	}
	
	public void setvorname(String vorname) 
	{
		this.vorname= vorname;
	}
	public String getnachname(){
		return nachname;
	}
	public void setnachname(String nachname) 
	{
		this.nachname= nachname;
	}
	
	public String getplaetze()
	{
		return plaetze;
	}
	
	public void setplaetze(String plaetze) 
	{
		this.plaetze= plaetze;
	}
	public void setreservierungsdatum(String reservierungsdatum) 
	{
		this.reservierungsdatum= reservierungsdatum;
	}
	public String getreservierungsdatum()
	{
		return reservierungsdatum;
	}
	public String getemail()
	{
		return email;
	}
	
	public void setemail(String email) 
	{
		this.email= email;
	}
	public String getalter(){
		return alter;
	}
	public void setalter(String alter) 
	{
		this.alter= alter;
	}
	
	public String getland()
	{
		return land;
	}
	
	public void setland(String land) 
	{
		this.land= land;
	}
	public void setstadt(String stadt) 
	{
		this.stadt= stadt;
	}
	public String getstadt()
	{
		return stadt;
	}
	public String getstrasse()
	{
		return strasse;
	}
	public void setstrasse(String strasse) 
	{
		this.strasse= strasse;
	}

	
	public void sethausnummer(String hausnummer) 
	{
		this.hausnummer= hausnummer;
	}

	public String gethausnummer()
	{
		return hausnummer;
	}
	
	



}
