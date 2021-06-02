<%@page import="com.DatabaseConnection.LoginDetails"%>  
<jsp:useBean id="obj" class="com.learnersAcademy.LoginData"></jsp:useBean>  
  
<jsp:setProperty property="*" name="obj"/> <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login process</title>
</head>
<body>
 
  
<%  
boolean status=LoginDetails.validatecredentials(obj);  
if(status){  

out.println("You are successfully logged in");  
session.setAttribute("session","TRUE");  
String redirectURL = "learnersacademy.jsp";
response.sendRedirect(redirectURL);
}  
else  
{  
out.print("Sorry, email or password Wrong");  
}
%>  
<jsp:include page="Login.jsp"></jsp:include>  
 
</body>
</html>