<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Librarian</title>
</head>
<body>
<center>
<h1 style="color: skyblue">Delete Librarian</h1>
<form action="DeleteLibrarian" method="post">
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
</TABLE>
<P><INPUT TYPE="SUBMIT" VALUE="delete Librarian" style="border-radius: 35px; font-size: 15px;background-color: gray;color: white;width: 150px"></P>
</form>
</center>

</body>
</html>