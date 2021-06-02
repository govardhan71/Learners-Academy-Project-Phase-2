package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.learnersAcademy.ClassesList;

public class ClassesData {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy","root","master");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int saveclasses(ClassesList cl){
	int status = 0;
	try{
		Connection conn = getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into classes(classes_name)values(?)");
		ps.setString(1,cl.getClass_name());
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

 
public static List<ClassesList> getallclasses(){
	List<ClassesList> list=new ArrayList<ClassesList>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from classes ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			ClassesList cl= new ClassesList();
			cl.setClass_name(rs.getString("classes_name"));
			list.add(cl);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}


}
