package com.mvc.bean;
public class MenuBean
 {
	//Variabel deklaration
	private String site;
	private String ims;
	private String met;
	private String men;
	private String meb;
	//get und set f�r site
	public String getSite()
	{
		return site;
	}
	public void setSite(String site)
	{
		this.site = site;
	}
	// get und set f�r ims
	public String getImageSource()
	{
		return ims;
	}
	public void setImageSource(String ims)
	{
		this.ims = ims;
	}
	//get und set f�r met
	public String getMenuTag()
	{
		return met;
	}
	public void setMenuTag(String met)
	{
		this.met = met;
	}
	//get und set f�r men
	public String getMenuName()
	{
		return men;
	}
	public void setMenuName(String men)
	{
		this.men = men;
	}
	//get und set f�r meb
	public String getMenuBeschreibung()
	{
		return meb;
	}
	public void setMenuBeschreibung(String meb)
	{
		this.men = meb;
	}
 }