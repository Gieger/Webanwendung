package com.mvc.dao;
//Import
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.annotation.WebServlet;
import com.mvc.bean.AnfahrtBean;
import com.mvc.util.DBConnection;
//Url-Mapping
@WebServlet("/AnfahrtDao")
public class AnfahrtDao 
{
	public String Text(AnfahrtBean anfahrtBean)
	{
		Connection con = null;
		Statement statement = null;
		//ResultSet resultSet = null;
		try
		{
			//String wert="true";
			con= DBConnection.createConnection();
			if(con!=null)
			{
				statement = con.createStatement();
				String query1="SELECT text From anfahrt";
				String text=null;
				ResultSet rs = statement.executeQuery(query1);
				if (rs.next())
				{	
					text = rs.getString(1);
				}
				anfahrtBean.settext(text);
			}
		}
		catch (SQLException e)
	 	{
			e.printStackTrace();
		}
	 	return "es ist eine Fehler aufgetreten";	
	}
}