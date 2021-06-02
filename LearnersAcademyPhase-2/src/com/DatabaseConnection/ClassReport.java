package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.learnersAcademy.ClassReports;

public class ClassReport {
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnersacademy","root","master");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

public static int saveclassreport(ClassReports  r){
	int status = 0;
	try{
		Connection conn=getConnection();
		PreparedStatement ps =conn.prepareStatement("insert"
				+ " into class_report(student_name,teacher_name,subjects_name,classes_name)values(?,?,?,?)");
		
		ps.setString(1,r.getStudent_name());
		ps.setString(2, r.getTeacher_name());
		ps.setString(3, r.getSubjects_name());
		ps.setString(4,r.getClasses_name());
		
		status=ps.executeUpdate();  
       }catch(Exception e){System.out.println(e);}  
	return status;
	}

public static List<ClassReports> getallclassreport(){
	List<ClassReports> list=new ArrayList<ClassReports>();
	try{
		Connection conn=getConnection();
		PreparedStatement ps=conn.prepareStatement("select * from class_report ");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			ClassReports cr = new ClassReports();
			
			
			cr.setStudent_name(rs.getString("student_name"));
			cr.setTeacher_name(rs.getString("teacher_name"));
		    cr.setSubjects_name(rs.getString("subjects_name"));
			cr.setClasses_name(rs.getString("classes_name"));
		    
		   
			list.add(cr);
			
		}  
	
	}catch(Exception e){System.out.println(e);}
	return list;
	
}

}