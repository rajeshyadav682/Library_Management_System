import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Search_book")
public class Search_book extends HttpServlet {
	private static final long serialVersionUID = 1L;
// second commit
	//third commit
	 
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
	            throws ServletException, IOException {  
	  
	response.setContentType("text/html");  
	PrintWriter out = response.getWriter();  
	          
	String books_name=request.getParameter("books_name");  
	String author=request.getParameter("author");  
	
	          
	try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","system");  
	              
	PreparedStatement ps=con.prepareStatement("select * from add_books where book_name=? and author=?");  
	ps.setString(1,books_name);  
	ps.setString(2, author); 
	out.print("<table width=50% border=1>");  
	out.print("<caption>Books Available</caption>");   
	ResultSet rs=ps.executeQuery();                
	ResultSetMetaData rsmd=rs.getMetaData();  
	int total=rsmd.getColumnCount();  
	out.print("<tr bgcolor=blue>");  
	for(int i=1;i<=total;i++)  
	{  
	out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
	}  
	out.print("</tr>");  
	while(rs.next())  
	{  
	out.print("<tr><td>"+rs.getInt(1)
	+"</td><td>"+rs.getString(2)
	+"</td><td>"+rs.getString(3)
	+"</td><td>"+rs.getString(4)
	+"</td><td>"+rs.getString(5)
	+"</td><td>"+rs.getInt(6)
	+"</td><td>"+rs.getInt(7)
	+"</td></tr>");                    
	}  
	  
	out.print("</table>");  
	
	              
	}catch (Exception e2) {e2.printStackTrace();}  
	          
	finally{out.close();}  
	  
	}  
}
	