<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
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
 <div id="headline">     
          <div id="menu" >
         <ul type="none">
          <a href="student.jsp"><li><p4><b>STUDENTS</a><p4></li>
          <a href="librarian.jsp"> <li >LIBRARIAN</a></li>
            <a href="admin.jsp"><li>ADMIN</a></li>
                     </ul>
               </div>

          </div>
           
   <div class="login-card">
  <form action="Admin" method="get">
      <fieldset style="width:280px; height:210px;">
          <legend><p3>Library Management System</p3></legend>
    <input type="text" name="username" placeholder="Username" style="border-radius:25px ">
    <input type="password" name="password" placeholder="Password"  style="border-radius:25px ">
    <input type="submit" name="login" class="login login-submit" value="login"  style="border-radius:25px ">
        <p2><b>Forget <a href="#">password?</a></b></p2></fieldset>
  </form>
   
                          </div>
             </div>
             <table>
             <tr><jsp:include page="master_page/footer.html"></jsp:include><td>
               
             </tr></table>
         
        <body>

</html>