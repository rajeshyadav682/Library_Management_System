<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
body {
margin: 0 auto;
background-repeat: no-repeat;
background-size: 100% 720px;
}

#border{
height: 600px;
width: 1350px;
border: 2px solid;

}
  #Admenu ul,li{
	margin: 0px;
	padding: 27px;
	list-style: none;
	 line-height: 30px;
    
}

#Admenu a{
text-decoration:none;
border: 2px solid #a1a1a1;
    padding: 10px; 
    background: #5D6D7E;
    width: 150px;
    border-radius: 25px;
color:white;
font-size:20px;
}
#details{
margin: -450px 1px 450px 2px;
}
</style>

</head>
 <body background="images/lib_back.jpg">
 
<iframe src="index.jsp" height="100" width="100%" scrolling="no" frameborder="0"></iframe>
 
<div id="border">
<div id="out">
 <form action="Logout" method="get">
 <input type="button" name="logout" value="Log out" style="border-radius: 25px; font-size: 20px;background-color: blue;float:right;color: white;width:100px">

</div>
 <div id="Admenu">
   <ul>
  <li><a href="registration.jsp">Register User</a></li>
   <li><a href="NewFile.jsp">Search Books</a></li>
       <li><a href="#">View Books</a></li>
           <li><a href="#">Add </a></li>
               <li><a href="#">Remove Books</a></li>
            </ul>
            
           </div>
<

<div id="details">
<p style="float: right;font-size:25px;color:green;margin:5px">Administrator</p1><br>
<center>
<h1 style="font-size: 40px ;color: blue;margin: 0px 120px 15px 250px;text-align: center " >User Registration</h1>
<form acton="Registration" method="post">
<TABLE style="font-size: 20px;font-weight: bold;color:blue;text-transform:capitalize; ;margin: 0px 0px 0px 310px;">

 <TR>
    <TD style="border-radius:25px ">User Id</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="fname" SIZE="25" style="border-radius:25px " >
    </TD>
  </TR>
  <TR>
    <TD style="border-radius:25px">First Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="fname" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD style="border-radius:25px">Last Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="lname" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD style="border-radius:25px">Age</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="age" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD style="border-radius:25px">E-mail</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" style="border-radius:25px"></TD>
  </TR>
  <TR>
    <TD style="border-radius:25px">Phone Number</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="pno" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
   <TR>
    <TD style="border-radius:25px">Address</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="add" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
    <TR>
    <TD style="border-radius:25px">Photo</TD>
    <TD>
      <INPUT TYPE="file" NAME="photo" style="border-radius:25px">
    </TD>
  </TR>
</TABLE>
<P><INPUT TYPE="SUBMIT" VALUE="register" style="border-radius: 5px 25px; font-size: 20px;background-color: blue;color: white;width: 100px"></P>
</form></center>
 </div></div>

</body>
</html>