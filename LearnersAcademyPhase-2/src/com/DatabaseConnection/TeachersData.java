package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.learnersAcademy.Teachers;

public class TeachersData {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy","root","master");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int saveteachers(Teachers t){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into teachers(teacher_name)values(?)");
		
		ps.setString(1,t.getTeacher_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<Teachers> getallteachers(){
	List<Teachers> list=new ArrayList<Teachers>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from teachers ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Teachers t= new Teachers();
			
			t.setTeacher_name(rs.getString("teacher_name"));
			list.add(t);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}

}
