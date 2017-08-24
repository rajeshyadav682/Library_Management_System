<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Return books</title>
</head>
<body>
<center>
<h1 style="color:skyblue ">Return of Books</h1>
<form action="">
<table style="font-size: 20px;color:skyblue ">
<tr>
<td>Book No. <input type="text" name="book_no" size="20" style="border-radius: 25px"></td></tr>
<tr>
<td>Student Id <input type="text" name="sid" size="20" style="border-radius: 25px"></td>
</tr>
<tr>
<td>Issue Date 
 <select id="day_start" 
          name="day_start"  /> 
    <option>1</option>       
    <option>2</option>       
    <option>3</option>       
    <option>4</option>       
    <option>5</option>       
    <option>6</option>       
    <option>7</option>       
    <option>8</option>       
    <option>9</option>       
    <option>10</option>       
    <option>11</option>       
    <option>12</option>       
    <option>13</option>       
    <option>14</option>       
    <option>15</option>       
    <option>16</option>       
    <option>17</option>       
    <option>18</option>       
    <option>19</option>       
    <option>20</option>       
    <option>21</option>       
    <option>22</option>       
    <option>23</option>       
    <option>24</option>       
    <option>25</option>       
    <option>26</option>       
    <option>27</option>       
    <option>28</option>       
    <option>29</option>       
    <option>30</option>       
    <option>31</option>       
  </select>
  <select id="month_start" name="month_start"/> 
    <option>January</option>       
    <option>February</option>       
    <option>March</option>       
    <option>April</option>       
    <option>May</option>       
    <option>June</option>       
    <option>July</option>       
    <option>August</option>       
    <option>September</option>       
    <option>October</option>       
    <option>November</option>       
    <option>December</option>       
  </select>
  <select id="year_start" 
         name="year_start" /> 
    <option>2009</option>       
    <option>2010</option>       
    <option>2011</option>       
    <option>2012</option>       
    <option>2013</option>       
    <option>2014</option>       
    <option>2015</option>       
    <option>2016</option>       
    <option>2017</option>       
    <option>2018</option>       
  </select> 
</tr>
<tr>
<td>Due Date 
 <select id="dueday_start" 
          name="dueday_start" /> 
    <option>1</option>       
    <option>2</option>       
    <option>3</option>       
    <option>4</option>       
    <option>5</option>       
    <option>6</option>       
    <option>7</option>       
    <option>8</option>       
    <option>9</option>       
    <option>10</option>       
    <option>11</option>       
    <option>12</option>       
    <option>13</option>       
    <option>14</option>       
    <option>15</option>       
    <option>16</option>       
    <option>17</option>       
    <option>18</option>       
    <option>19</option>       
    <option>20</option>       
    <option>21</option>       
    <option>22</option>       
    <option>23</option>       
    <option>24</option>       
    <option>25</option>       
    <option>26</option>       
    <option>27</option>       
    <option>28</option>       
    <option>29</option>       
    <option>30</option>       
    <option>31</option>       
  </select>
  <select id="duemonth_start" name="duemonth_start"/> 
    <option>January</option>       
    <option>February</option>       
    <option>March</option>       
    <option>April</option>       
    <option>May</option>       
    <option>June</option>       
    <option>July</option>       
    <option>August</option>       
    <option>September</option>       
    <option>October</option>       
    <option>November</option>       
    <option>December</option>       
  </select>
  <select id="dueyear_start" 
         name="dueyear_start" /> 
    <option>2009</option>       
    <option>2010</option>       
    <option>2011</option>       
    <option>2012</option>       
    <option>2013</option>       
    <option>2014</option>       
    <option>2015</option>       
    <option>2016</option>       
    <option>2017</option>       
    <option>2018</option>       
  </select>  
</tr>
<tr>
<td>Return Date 
 <select id="retday_start" 
          name="retday_start" /> 
    <option>1</option>       
    <option>2</option>       
    <option>3</option>       
    <option>4</option>       
    <option>5</option>       
    <option>6</option>       
    <option>7</option>       
    <option>8</option>       
    <option>9</option>       
    <option>10</option>       
    <option>11</option>       
    <option>12</option>       
    <option>13</option>       
    <option>14</option>       
    <option>15</option>       
    <option>16</option>       
    <option>17</option>       
    <option>18</option>       
    <option>19</option>       
    <option>20</option>       
    <option>21</option>       
    <option>22</option>       
    <option>23</option>       
    <option>24</option>       
    <option>25</option>       
    <option>26</option>       
    <option>27</option>       
    <option>28</option>       
    <option>29</option>       
    <option>30</option>       
    <option>31</option>       
  </select>
  <select id="retmonth_start" name="retmonth_start"/> 
    <option>January</option>       
    <option>February</option>       
    <option>March</option>       
    <option>April</option>       
    <option>May</option>       
    <option>June</option>       
    <option>July</option>       
    <option>August</option>       
    <option>September</option>       
    <option>October</option>       
    <option>November</option>       
    <option>December</option>       
  </select>
  <select id="retyear_start" 
         name="retyear_start" /> 
    <option>2009</option>       
    <option>2010</option>       
    <option>2011</option>       
    <option>2012</option>       
    <option>2013</option>       
    <option>2014</option>       
    <option>2015</option>       
    <option>2016</option>       
    <option>2017</option>       
    <option>2018</option>       
  </select>  
</tr>
<tr>
<td>Fine if any <input type="text" name="fine" size="20" style="border-radius: 25px"></td>
</tr>
<tr>

</tr>

</table>
 <P><INPUT TYPE="SUBMIT" VALUE="Return" style="border-radius: 35px; font-size: 20px;background-color:skyblue;color: white;width: 100px"></P>
</form>
</center>
</body>
</html>