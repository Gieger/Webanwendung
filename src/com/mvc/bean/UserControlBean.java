package com.mvc.bean;

//As I have already told it contains only setters and getters
 
public class UserControlBean
{
	//Variabel deklaration
	private String email;
	public String getUserName() 
	{
		return email;
	}
	public void setUserName(String email) 
	{
		this.email = email;
	}
}