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
 #libmenu ul,li{
	margin: 0px;
	padding: 27px;
	list-style: none;
	 line-height: 30px;
    
}

#libmenu a{
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
 <div id="libmenu">
   <ul>
  <li><a href="issue_books.jsp"  target="librarian_menu">Issue Books</a></li>
   <li><a href="return_books.jsp"   target="librarian_menu">Return Books</a></li>
       <li><a href="reissue_books.jsp"  target="librarian_menu">Reissue Books</a></li>
           <li><a href="books.jsp"  target="librarian_menu">Add Books</a></li>
               <li><a href="search_books.jsp"  target="librarian_menu">Search Books</a></li>
                 <li><a href="#"  target="librarian_menu">Calculate Fine</a></li>
            </ul>
            
            </div>
</body>
</html>