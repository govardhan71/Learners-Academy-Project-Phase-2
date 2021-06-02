package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.learnersAcademy.Subjects;

public class SubjectsData {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy","root","master");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int savesubjects(Subjects s){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into subjects(subjects_name)values(?)");
		ps.setString(1,s.getSubject_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<Subjects> getallsubjects(){
	List<Subjects> list=new ArrayList<Subjects>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from subjects ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Subjects s= new Subjects();
			s.setSubject_name(rs.getString("subjects_name"));
			list.add(s);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}
    

}
