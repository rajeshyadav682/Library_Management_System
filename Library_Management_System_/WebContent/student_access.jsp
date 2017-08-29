<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>studentAccess</title>
 
   <style> 
   
  
body {
margin: 0 auto;
background-repeat: no-repeat;
background-size: 100% 720px;
}
</style>
</head>
<body background="images/lib_back.jpg">
<%
  if(session.getAttribute("stu_username")==null)
		  { 
	  response.sendRedirect("student.jsp");  
  }
  %>
<table>
<tr>
<td style="height: 16px;"><jsp:include page="master_page/header.html"></jsp:include> </td>
</tr>

</table>
<table>
  	 <tr>
  	 <td style="float:right;margin-left: 850px">
  	 <form action="StudentLogout" method="get">
  	<input type ="submit" value="Logout" style="color:blue;border-radius: 25px;font-size: 20px;float:right;width:100px; background-color:blue;color:white;" >
  	</form></td>
  	 </tr>
  	
</table>

<iframe height="530" width="300" src="student_menu.jsp" scrolling="no" frameborder="0"></iframe>
<iframe height="400" width="700"  name="student_menu"  frameborder="0"  align="top" style="margin:0px 90px 200px 100px">
</iframe>
<jsp:include page="master_page/footer.html"></jsp:include>
</body>
</html>
