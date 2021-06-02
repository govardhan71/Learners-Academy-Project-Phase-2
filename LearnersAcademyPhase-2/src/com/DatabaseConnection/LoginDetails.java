package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.learnersAcademy.LoginData;

public class LoginDetails {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy","root","master");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  


public static boolean validatecredentials(LoginData ld){
	boolean status=false;
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from user where email=? and password =?");
		ps.setString(1,ld.getEmail());
		ps.setString(2, ld.getPassword());
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	
	}catch(Exception e){System.out.println(e);}
	return status;
	
}

}
