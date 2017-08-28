<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

body {
margin: 0 auto;
background-repeat: no-repeat;
background-size: 100% 720px;
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


</style>
</head>
<body>
 <div id="Admenu">
   <ul>
   <li><a href="add_librarian.jsp"   target="iframe">Add Librarian</a></li>
       <li><a href="view_librarian.jsp"  target="iframe">View Librarian</a></li>
               <li><a href="delete_librarian.jsp"  target="iframe">Delete Librarian</a></li>
               <li><a href="books.jsp"  target="iframe">Add Books</a></li>
            </ul>
            
            </div>
</body>
</html>