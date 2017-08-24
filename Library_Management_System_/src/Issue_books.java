import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;

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
	/*	String issue_date=request.getParameter("issue_date").toString(); 
		String due_date=request.getParameter("due_date").toString();*/ 
		     
	try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","system");  
	PreparedStatement ps=con.prepareStatement("insert into Issue_books values(?,?)"); 
	//java.util.Date issue_date_ = new SimpleDateFormat("dd-mm-yyyy").parse(issue_date.toString());    
//	java.util.Date due_date_ = new SimpleDateFormat("dd-mm-yyyy").parse(due_date.toString()); 
	
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
	
	
