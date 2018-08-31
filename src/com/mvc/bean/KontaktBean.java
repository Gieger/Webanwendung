package com.mvc.bean;
 
public class KontaktBean 
{
	private String vorname;
	private String nachname;
	private String land;
	private String strasse;
	private String hausnummer;
	private String email;
	private String anmerkung;
	private String besuchsdatum;
	private String age;
	private String stadt;
	
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
	
	public String getanmerkung()
	{
		return anmerkung;
	}
	
	public void setanmerkung(String anmerkung) 
	{
		this.anmerkung= anmerkung;
	}
	
	public String getland()
	{
		return land;
	}
	
	public void setland(String land) 
	{
		this.land= land;
	}
	
	public String getstrasse()
	{
		return strasse;
	}
	
	public void setstrasse(String strasse)
	{
		this.strasse= strasse;
	}
	
	public String gethausnummer()
	{
		return hausnummer;
	}
	
	public void sethausnummer(String hausnummer)
	{
		this.hausnummer= hausnummer;
	}
	public String getstadt()
	{
		return stadt;
	}
	
	public void setstadt(String stadt) 
	{
		this.stadt= stadt;
	}
	
	public String getemail()
	{
		return email;
	}
	
	public void setemail(String email) 
	{
		this.email= email;
	}
	
	public String getbesuchsdatum()
	{
		return besuchsdatum;
	}
	
	public void setbesuchsdatum(String besuchsdatum)
	{
		this.besuchsdatum= besuchsdatum;
	}
	
	public String getage()
	{
		return age;
	}
	
	public void setage(String age)
	{
		this.age= age;
	}




}
