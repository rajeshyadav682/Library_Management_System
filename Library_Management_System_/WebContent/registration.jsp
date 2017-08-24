<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
 <body background="images/lib_back.jpg">
<iframe src="index.jsp" height="100" width="100%" scrolling="no" frameborder="0"></iframe>




<p style="float: right;font-size:25px;color:green;margin:5px">Administrator</p1><br>
<center>
<h1 style="font-size: 40px ;color: blue;margin: 0px 0px 15px 300px;text-align: center " >User Registration</h1>
<form acton="Registration" method="post">

<TABLE BORDER="5" style="font-size: 20px;background-color:pink;margin: 0px 0px 0px 310px;">

 <TR>
    <TD>User Id</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="fname" SIZE="25" >
    </TD>
  </TR>
  <TR>
    <TD>First Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="fname" SIZE="25">
    </TD>
  </TR>
  <TR>
    <TD>Last Name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="lname" SIZE="25">
    </TD>
  </TR>
  <TR>
    <TD>Age</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="age" SIZE="25">
    </TD>
  </TR>
  <TR>
    <TD>E-mail</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="25"></TD>
  </TR>
  <TR>
    <TD>Phone Number</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="pno" SIZE="25">
    </TD>
  </TR>
   <TR>
    <TD>Address</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="add" SIZE="25">
    </TD>
  </TR>
    <TR>
    <TD>Photo</TD>
    <TD>
      <INPUT TYPE="file" NAME="photo">
    </TD>
  </TR>
</TABLE>
<P><INPUT TYPE="SUBMIT" VALUE="register" style="border-radius: 5px 25px; font-size: 20px;background-color: blue;color: white;width: 100px"></P>
</form>
</center>
</body>
</html>