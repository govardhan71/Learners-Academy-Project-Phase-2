<%@page import="com.DatabaseConnection.TeachersData"%>  
<jsp:useBean id="t" class="com.learnersAcademy.Teachers"></jsp:useBean> 
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
String teacher_name=request.getParameter("teacher_name");
t.setTeacher_name(teacher_name);
int i=TeachersData.saveteachers(t);
if (i>0)
{out.println("teachers added sucessfully");
}else
{
	out.println("teachers not added");
}
%>
<td><a href=learnersacademy.jsp>Main Page</a></td></tr>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>