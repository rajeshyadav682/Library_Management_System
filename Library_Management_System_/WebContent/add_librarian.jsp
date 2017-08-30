<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Librarian</title>
</head>
<body>
<script type="text/javascript" src="js validation/addlibrarian.js">

</script>
<center>
<h1 style="color: skyblue">Add Librarian</h1>
<form action="AddLibrarian" method="post"  name="addlib" onsubmit="return validateform()">
<table style="font-size: 20px;font-weight: bold;color:skyblue;text-transform:capitalize;">
 <TR>
    <TD>User Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="uname" SIZE="25" style="border-radius:25px " >
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
    <TD>Password</TD>
    <TD>
      <INPUT TYPE="password" NAME="password" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
  <TR>
    <TD>E-mail</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25" style="border-radius:25px"></TD>
  </TR>
  <TR>
    <TD>Phone No.</TD>
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
<P><INPUT TYPE="SUBMIT" VALUE="Add Librarian" style="border-radius: 35px; font-size: 15px;background-color: gray;color: white;width: 100px"></P>
</form>
</center>

</body>
</html>