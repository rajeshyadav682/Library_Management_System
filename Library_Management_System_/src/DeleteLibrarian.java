

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.driver.OracleDriver;

/**
 * Servlet implementation class DeleteLibrarian
 */
@WebServlet("/DeleteLibrarian")
public class DeleteLibrarian extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				PrintWriter out = response.getWriter();
		    	String username= request.getParameter("uname");
				String fname= request.getParameter("fname");				
				
				try {
					
					Connection con=null;
					PreparedStatement ps = null;
					Driver d =new  OracleDriver();
					DriverManager.registerDriver(d);
					con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system ");
					ps=con.prepareStatement("delete from add_librarian where user_name= ? or first_name=?");
					ps.setString(1,username);
					ps.setString(2,fname);
					int res=ps.executeUpdate();
					if(res!=0)
					out.println("Deleting row...");
					else if (res==0)
						out.println("<html><body><center><h1>");
					out.println("deleted Librarian SUCCESSFULLY");
					out.print("</h1></center></body></html>");	
					out.close();
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
