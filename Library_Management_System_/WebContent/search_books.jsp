<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Books</title>
</head>
<body>
<center>
<h1 style="color:skyblue ">Search Books</h1>
<form action="Search_book" method="post">

<TABLE style="font-size: 20px;font-weight: bold;color:skyblue;text-transform:capitalize; ">

 <TR>
    <TD>book name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="books_name" SIZE="25" style="border-radius:25px " >
    </TD>
  </TR>
  <TR>
    <TD>author</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="author" SIZE="25" style="border-radius:25px">
    </TD>
  </TR>
</table>
<P><INPUT TYPE="SUBMIT" VALUE="Search" style="border-radius: 35px; font-size: 20px;background-color:skyblue;color: white;width: 100px"></P>

</form>

</center>
</body>
</html>