<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>administrator</title>
 
   <style> 
   
  
body {
margin: 0 auto;
background-repeat: no-repeat;
background-size: 100% 720px;
}
</style>
</head>
<body background="images/lib_back.jpg">
<table>
<tr>
<td style="height: 16px;"><jsp:include page="master_page/header.html"></jsp:include> </td>
</tr>

</table>
<table>
  	 <tr>
  	 <center>
  	 <h3 style="margin-top: 0px;font-size:27px;color:green"> Welcome Admin</h3></center>
  	 <td style="float:right;margin-left: 850px">
  	 <form action="AdminLogouts" method="get">
 <input type="button" name="logout" value="Log out" style="border-radius: 25px; font-size: 20px;background-color: blue;color: white;width: 100px"></td>
  	 </tr>
  	
</table>

<iframe height="530" width="300" src="admin_menus.jsp" scrolling="no" frameborder="0"></iframe>
<iframe height="400" width="700"  name="iframe"  frameborder="0" align="top" style="margin:0px 90px 200px 100px">
</iframe>
<jsp:include page="master_page/footer.html"></jsp:include>
</body>
</html>
