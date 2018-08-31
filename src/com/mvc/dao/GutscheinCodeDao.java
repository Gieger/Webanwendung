package com.mvc.dao;
//Import
import java.util.Date;
import java.util.Random;

import com.mvc.bean.UserControlBean;
public class GutscheinCodeDao 
{
	public String createGutschein(UserControlBean gutscheinCodeBean)
	{
		//Daten aus der Bean holen
		String user = gutscheinCodeBean.getUserName();
		//Variabeln für Ausgabe erzeugen
		Date datum = new Date();
		String ausgabe= "";
		int obergrenze = 9999;
		int untergrenze = 1000;
		Random random = new Random();
		int randomNumber = random.nextInt(obergrenze - untergrenze) + untergrenze;
		//Ausgabe zusammensetzen
		ausgabe = user + randomNumber + datum;
		//Ausgabe zurücksenden
		return ausgabe;
	}
}