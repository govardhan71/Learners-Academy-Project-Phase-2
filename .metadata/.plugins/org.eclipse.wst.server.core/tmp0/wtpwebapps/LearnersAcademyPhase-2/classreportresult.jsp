<%@page import="com.DatabaseConnection.SubjectsData,com.learnersAcademy.Subjects,java.util.* "%>
<%@page import= "com.DatabaseConnection.ClassesData,com.learnersAcademy.ClassesList" %>
<%@page import= "com.DatabaseConnection.StudentData,com.learnersAcademy.Students" %>
<%@page import= "com.DatabaseConnection.TeachersData,com.learnersAcademy.Teachers" %>
<%@page import="com.DatabaseConnection.ClassReport"%> 
<jsp:useBean id="cr" class="com.learnersAcademy.ClassReports"></jsp:useBean>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String classes_name=request.getParameter("classnames");
cr.setClasses_name(classes_name);

String subjects_name=request.getParameter("subjectsname");
cr.setSubjects_name(subjects_name);



String student_name= request.getParameter("studentlist");
cr.setStudent_name(student_name);

String teacher_name= request.getParameter("teacherlist");
cr.setTeacher_name(teacher_name);



int i=ClassReport.saveclassreport(cr);
if (i>0)
{out.println("classes added successfully");
}else
{
	out.println("classes not added");
}
%>
<td><a href=learnersacademy.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>