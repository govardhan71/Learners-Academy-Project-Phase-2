<%@page import="com.DatabaseConnection.SubjectsData,com.learnersAcademy.Subjects,java.util.* "%>
<%@page import= "com.DatabaseConnection.ClassesData,com.learnersAcademy.ClassesList" %>
<%@page import= "com.DatabaseConnection.StudentData,com.learnersAcademy.Students" %>
<%@page import= "com.DatabaseConnection.TeachersData,com.learnersAcademy.Teachers" %>
<%@page import="com.DatabaseConnection.ClassReport"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="cr" class="com.learnersAcademy.ClassReports"></jsp:useBean>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action=classreportresult.jsp method=post>

<%
  
List<Subjects> list=SubjectsData.getallsubjects();

request.setAttribute("list",list);  
%>  
<tr><td>Subjects Name:</td></tr>
<select name="subjectsname">
<c:forEach items="${list}" var="subjectsname">  
<option >${subjectsname.getSubject_name()}</option></c:forEach>
</select>


<%
  
List<ClassesList> classlist=ClassesData.getallclasses();

request.setAttribute("classlist",classlist);  
%>  
<tr><td>Classes Name:</td></tr>
<select name="classnames">
<c:forEach items="${classlist}" var="classnames">  
<option >${classnames.getClass_name()}</option></c:forEach>
</select>


<%
  
List<Students> studentlist=StudentData.getallstudents();

request.setAttribute("studentlist",studentlist);  
%>  
<tr><td>Student details</td></tr>
<select name="studentlist">
<c:forEach items="${studentlist}" var="studentlist">  
<option >${studentlist.getStudent_name()}</option>

</c:forEach>
</select>


<%
  
List<Teachers> teacherlist=TeachersData.getallteachers();

request.setAttribute("teacherlist",teacherlist);  
%>  
<tr><td>Teacher details</td></tr>
<select name="teacherlist">
<c:forEach items="${teacherlist}" var="teacherlist">  
<option>${teacherlist.getTeacher_name()}</option>

</c:forEach>
</select>
<br><br>
<input type="submit" value="Submit" />
</form>
<br>
<td><a href=learnersacademy.jsp>Main Page</a></td></tr><br><br>
<td><a href=logout.jsp>Logout</a></td></tr>
</body>
</html>