<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students Login</title>
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
<script>  
function validateform(){  
var username=document.studentlogin.username.value;  
var password=document.studentlogin.password.value;  
if (username==null || username==""){  
	  alert("Username can't be blank");  
	  return false;  
	}else if(password==null||password ==""){  
	  alert("password must needs to login");  
	  return false; 
	}
	}  
</script>
<table>
<td style="height: 16px;"><jsp:include page="master_page/header.html"></jsp:include> </td>
</tr>

</table>
          <div id="menu">
         <ul type="none">
          <a href="student.jsp" ><li><b>Students</a></li>
          <a href="librarian.jsp" > <li >Librarian</a></li>
            <a href="admin.jsp" ><li>Admin</a></li>
                     </ul>
               </div>

   <div class="login-card">
 
      <fieldset style="width:290px; height:280px; margin:-10px;">
          <legend><p3>Library Management System</p3></legend>
      <img src="images/students.jpg" alt="administrator" style="height:80px; width:70px"><br>   
       <form action="StudentLogin" method="get" name ="studentlogin" onsubmit="return validateform()">
    <input type="text" name="username" placeholder="Username" style="border-radius:25px ">
    <input type="password" name="password" placeholder="Password" style="border-radius:25px ">
    <input type="submit" name="login" class="login login-submit" value="login" style="border-radius:25px">
      <p2><b>Forget <a href="#">password?</a></b></p2>
  </form> </fieldset>
  </div>
      <jsp:include page="master_page/footer.html"></jsp:include>
                             
</body>

</html>