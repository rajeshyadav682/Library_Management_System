<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
</head>
<body>
<center>
<h1 style="color:skyblue ">User Registration</h1>
<form action="Registation_user" method="post">
<TABLE style="font-size: 20px;font-weight: bold;color:skyblue;text-transform:capitalize; ">

 <TR>
    <TD>User Id</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="uid" SIZE="25" style="border-radius:25px " >
    </TD>
  </TR>
  <TR>
    <TD>First Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="fname" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD>Last Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="lname" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD>Age</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="age" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD>E-mail</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" style="border-radius:25px"></TD>
  </TR>
  <TR>
    <TD>Phone Number</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="pno" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
   <TR>
    <TD>Address</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="add" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
    <TR>
    <TD>Photo</TD>
    <TD>
      <INPUT TYPE="file" NAME="photo" style="border-radius:25px">
    </TD>
  </TR>
</TABLE>
<P><INPUT TYPE="SUBMIT" VALUE="register" style="border-radius: 35px; font-size: 20px;background-color: gray;color: white;width: 100px"></P>
</form></center>

</body>
</html>