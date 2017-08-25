import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.ParseConversionEvent;
import javax.xml.crypto.Data;
@WebServlet("/Issue_books")
public class Issue_books extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String books_no=request.getParameter("book_no");
		String student_id = request.getParameter("sid");
		String i_date=request.getParameter("issue_date_date")
	  +request.getParameter("issue_date_mon")+request.getParameter("issue_date_yr"); 
		String d_date=request.getParameter("due_date_date")+request.getParameter("due_date_mon")
		+request.getParameter("due_date_year");
		Calendar issue_date_date =null;
		Calendar issue_date_mon = null;
		Calendar issue_date_yr =null;
	    Calendar due_date_date = null;
	    Calendar due_date_mon = null;
	    Calendar due_date_yr = null;
	   
		     
	try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","system");  
	PreparedStatement ps=con.prepareStatement("insert into Issue_books values(?,?)");  
	Date iDate = new SimpleDateFormat("dd/MM/yyyy").parse(i_date);
	Date DDate = new SimpleDateFormat("dd/MM/yyyy").parse(d_date);
	 issue_date_date = Calendar.getInstance();  
	 issue_date_date.setTime(iDate);
	 issue_date_mon = Calendar.getInstance();  
	 issue_date_mon.setTime(iDate);
	 issue_date_yr = Calendar.getInstance();  
	 issue_date_yr.setTime(iDate);
	 due_date_date = Calendar.getInstance();  
	 due_date_date.setTime(DDate);
	 due_date_mon = Calendar.getInstance();  
	 due_date_mon.setTime(DDate);
	 due_date_yr = Calendar.getInstance();  
	 due_date_yr.setTime(DDate);
	ps.setString(1,books_no);  
	ps.setString(2,student_id);
	int res= ps.executeUpdate();
	
	if(res!=0)
	{
		out.println("<html><body><center><h1>");
		out.println("Book Issue");
		out.print("</h1></center></body></html>");	
		out.close();
	}
	ps.close();
	con.close();
}
catch(Exception e)
{
e.printStackTrace();
System.out.println(e);

}
}
}
	
	
