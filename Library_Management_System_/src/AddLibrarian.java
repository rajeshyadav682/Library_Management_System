

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.driver.OracleDriver;

/**
 * Servlet implementation class AddLibrarian
 */
@WebServlet("/AddLibrarian")
public class AddLibrarian extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String exist;
    	String username= request.getParameter("uname");
		String fname= request.getParameter("fname");
		String lname= request.getParameter("lname");
		String pass= request.getParameter("password");
		String email= request.getParameter("email");
		String phone= request.getParameter("pno");
		String add= request.getParameter("add");
		
		try {
			
			Connection con=null;
			PreparedStatement ps = null;
			Driver d =new  OracleDriver();
			DriverManager.registerDriver(d);

			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system ");
			ps=con.prepareStatement("insert into add_librarian values(?,?,?,?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2,fname);
			ps.setString(3,lname);
			ps.setString(4,pass);
			ps.setString(5,email);
			ps.setString(6,phone);
			ps.setString(7,add);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{	
				exist = rs.getString(username);
				
				if(exist!=username)
				{
				out.println("<html><body><center><h1>");
				out.println("Add Librarian Successfully");
				out.print("</h1></center></body></html>");	
	
				}
				if(exist.equals(username)) {
					out.println("<html><body><center><h1>");
					out.println("Username already exist");
					out.print("</h1></center></body></html>");
					
				}
				
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


