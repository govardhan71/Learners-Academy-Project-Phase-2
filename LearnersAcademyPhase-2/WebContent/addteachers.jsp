<%@page import="com.DatabaseConnection.TeachersData"%>  
<jsp:useBean id="t" class="com.learnersAcademy.Teachers"></jsp:useBean>  
<jsp:setProperty property="*" name="t"/>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add teachers</title>
</head>
<body>
<form action=teachersresult.jsp method=post>

<tr><td>Teachers Name:</td><td>
<input type="text" name="teacher_name" ></td></tr>

<input type="submit" value="Add Teachers">

</form>
<br>
<td><a href=learnersacademy.jsp>Main Page</a></td></tr><br>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>