

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

/**
 * Servlet implementation class View_Librarian
 */
@WebServlet("/View_Librarian")
public class View_Librarian extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();  
        String username=request.getParameter("uname");  	          
		try{  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@localhost:1521:xe","system","system");  
		              
		PreparedStatement ps=con.prepareStatement("select * from add_librarian where user_name=?");  
		ps.setString(1,username); 
		out.print("<table width=50% border=1>");  
		out.print("<caption>View Librarian</caption>");   
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
		out.print("<tr><td>"+rs.getString(1)
		+"</td><td>"+rs.getString(2)
		+"</td><td>"+rs.getString(3)
		+"</td><td>"+rs.getString(4)
		+"</td><td>"+rs.getString(5)
		+"</td><td>"+rs.getString(6)
		+"</td><td>"+rs.getString(7)
		+"</td></tr>");                    
		}  
		  
		out.print("</table>");  
		
		              
		}catch (Exception e2) {e2.printStackTrace();}  
		          
		finally{out.close();}  
		  
		}  

	}

