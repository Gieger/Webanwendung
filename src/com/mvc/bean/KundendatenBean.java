package com.mvc.bean;
 
public class  KundendatenBean 
{
	private String vorname;
	private String nachname;
	private String geschlecht;
	private String land;
	private String stadt;
	private String strasse;
	private String hausnummer;
	private String password;
	private String email;
	private String newsletter;
	private String sicherheitsfrage;
	private String agb;
	
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
	
	public String getgeschlecht()
	{
		return geschlecht;
	}
	
	public void setgeschlecht(String geschlecht) 
	{
		this.geschlecht= geschlecht;
	}
	
	public String getland()
	{
		return land;
	}
	
	public void setland(String land) 
	{
		this.land= land;
	}
	public String getstadt()
	{
		return stadt;
	}
	
	public void setstadt(String stadt) 
	{
		this.stadt= stadt;
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
	
	public String getemail()
	{
		return email;
	}
	
	public void setemail(String email) 
	{
		this.email= email;
	}
	
	public String getpassword()
	{
		return password;
	}
	
	public void setpassword(String password)
	{
		this.password= password;
	}
	
	public String getnewsletter()
	{
		return newsletter;
	}
	
	public void setnewsletter(String newsletter)
	{
		this.newsletter= newsletter;
	}
	public String getsicherheitsfrage()
	{
		return sicherheitsfrage;
	}
	
	public void setsicherheitsfrage(String sicherheitsfrage)
	{
		this.sicherheitsfrage= sicherheitsfrage;
	}
	public String getagb()
	{
		return agb;
	}
	
	public void setagb(String agb)
	{
		this.agb= agb;
	}


}