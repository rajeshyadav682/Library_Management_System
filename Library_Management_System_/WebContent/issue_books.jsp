	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue books</title>
</head>
<body>
<center>
<h1 style="color:skyblue ">Issue of Books</h1>
<form action="Issue_books" method="post">
<table style="font-size: 20px;color:skyblue ">
<tr>
<td>Book No. <input type="text" name="book_no" size="20" style="border-radius: 25px"></td></tr>
<tr>
<td>Student Id <input type="text" name="sid" size="20" style="border-radius: 25px"></td>
</tr>
<tr>
<td>Issue Date 
 <select id ="issuedt" name="issue_date_date"> 
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
	<option value="10">10</option>       
    <option value="11">11</option>       
    <option value="12">12</option>       
    <option value="13">13</option>       
    <option value="14">14</option>       
    <option value="15">15</option>       
    <option value="16">16</option>       
    <option value="17">17</option>       
    <option value="18">18</option>       
    <option value="19">19</option>       
    <option value="20">20</option>       
    <option value="21">21</option>       
    <option value="22">22</option>       
    <option value="23">23</option>       
    <option value="24">24</option>       
    <option value="25">25</option>       
    <option value="26">26</option>       
    <option value="27">27</option>       
    <option value="28">28</option>       
    <option value="29">29</option>       
    <option value="30">30</option>       
    <option value="31">31</option>       
  </select>
  <select  id="issue_mon"name="issue_date_mon"/> 
    <option value="1">January</option>       
    <option value="2">February</option>       
    <option value="3">March</option>       
    <option value="4">April</option>       
    <option value="5">May</option>       
    <option value="6">June</option>       
    <option value="7">July</option>       
    <option value="8">August</option>       
    <option value="9">September</option>       
    <option value="10">October</option>       
    <option value="11">November</option>       
    <option value="12">December</option>       
  </select>
  <select id="issue_yr" name="issue_date_year" /> 
    <option value="2009">2009</option>       
    <option value="2010">2010</option>       
    <option value="2011">2011</option>       
    <option value="2012">2012</option>       
    <option value="2013">2013</option>       
    <option value="2014">2014</option>       
    <option value="2015">2015</option>       
    <option value="2016">2016</option>       
    <option value="2017">2017</option>       
    <option value="2018">2018</option>       
  </select> 
</tr>
<tr>
<td>Due Date 
 <select id="due_dt" name="due_date_date" /> 
   <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
	<option value="10">10</option>       
    <option value="11">11</option>       
    <option value="12">12</option>       
    <option value="13">13</option>       
    <option value="14">14</option>       
    <option value="15">15</option>       
    <option value="16">16</option>       
    <option value="17">17</option>       
    <option value="18">18</option>       
    <option value="19">19</option>       
    <option value="20">20</option>       
    <option value="21">21</option>       
    <option value="22">22</option>       
    <option value="23">23</option>       
    <option value="24">24</option>       
    <option value="25">25</option>       
    <option value="26">26</option>       
    <option value="27">27</option>       
    <option value="28">28</option>       
    <option value="29">29</option>       
    <option value="30">30</option>       
    <option value="31">31</option>       
  </select>
  <select id="due_mon" name="due_date_mon"/> 
    <option value="1">January</option>       
    <option value="2">February</option>       
    <option value="3">March</option>       
    <option value="4">April</option>       
    <option value="5">May</option>       
    <option value="6">June</option>       
    <option value="7">July</option>       
    <option value="8">August</option>       
    <option value="9">September</option>       
    <option value="10">October</option>       
    <option value="11">November</option>       
    <option value="12">December</option>     
  </select>
  <select id="due_yr" name="due_date_year" /> 
    <option value="2009">2009</option>       
    <option value="2010">2010</option>       
    <option value="2011">2011</option>       
    <option value="2012">2012</option>       
    <option value="2013">2013</option>       
    <option value="2014">2014</option>       
    <option value="2015">2015</option>       
    <option value="2016">2016</option>       
    <option value="2017">2017</option>       
    <option value="2018">2018</option>       
  </select>  
</tr>
<tr>

</tr>

</table>
 <P><INPUT TYPE="SUBMIT" VALUE="Issue" style="border-radius: 35px; font-size: 20px;background-color:skyblue;color: white;width: 100px"></P>
</form>
</center>
</body>
</html>