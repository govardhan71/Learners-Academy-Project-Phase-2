<%@page import="com.DatabaseConnection.SubjectsData,com.learnersAcademy.Subjects,java.util.* "%>
<%@page import= "com.DatabaseConnection.ClassReport,com.learnersAcademy.ClassReports" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
List <ClassReports> list= ClassReport.getallclassreport();
request.setAttribute("list", list);


%>

<table border="1" width="90%">  
<tr><th>Student_name</th><th>Teacher_name</th>  
<th>Subjects_Name</th><th>Classes_name</th></tr>  
<c:forEach items="${list}" var="r">  
<tr><td>${r.getStudent_name()}</td> 
<td>${r.getTeacher_name()}</td><td>${r.getSubjects_name()}</td><td>${r.getClasses_name()}</td>  
</tr>  
</c:forEach>  
</table> 
<br>
<td><a href=learnersacademy.jsp>Main Page</a></td></tr><br>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>