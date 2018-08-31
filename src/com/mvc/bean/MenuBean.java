package com.mvc.bean;
public class MenuBean
 {
	//Variabel deklaration
	private String site;
	private String ims;
	private String met;
	private String men;
	private String meb;
	//get und set für site
	public String getSite()
	{
		return site;
	}
	public void setSite(String site)
	{
		this.site = site;
	}
	// get und set für ims
	public String getImageSource()
	{
		return ims;
	}
	public void setImageSource(String ims)
	{
		this.ims = ims;
	}
	//get und set für met
	public String getMenuTag()
	{
		return met;
	}
	public void setMenuTag(String met)
	{
		this.met = met;
	}
	//get und set für men
	public String getMenuName()
	{
		return men;
	}
	public void setMenuName(String men)
	{
		this.men = men;
	}
	//get und set für meb
	public String getMenuBeschreibung()
	{
		return meb;
	}
	public void setMenuBeschreibung(String meb)
	{
		this.men = meb;
	}
 }