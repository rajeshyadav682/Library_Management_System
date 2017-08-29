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
import javax.servlet.http.HttpSession;

import oracle.jdbc.driver.OracleDriver;

@WebServlet("/LibLogin")
public class LibLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("lib-login");
		String username = request.getParameter("username");
        String password = request.getParameter("password");
	
		try {
			if(username!=null) 
			{
		Connection con=null;
		PreparedStatement ps=null;	
		Driver d = new OracleDriver();
		DriverManager.registerDriver(d);
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system ");
	//	ps=con.prepareStatement("select user_name,password from add_librarian");
		ps=con.prepareStatement("select * from add_librarian where user_name = ? and password =?");
		System.out.println("database connected ");
		ps.setString(1,username);
		System.out.println("username retrived ");
		ps.setString(2,password);
		System.out.println("password retrived ");
		 ResultSet rs =ps.executeQuery();
	        while(rs.next()) {
	       
	         if(username.equals(username)&& password.equals(password)) 
	        {
	        	 System.out.println("sending sendredict method ");
	response.sendRedirect("librarian_acces.jsp");
	System.out.println("sendredict method ");
	        }
		}
			}
else
	System.out.println("sending sendredict method ");
			out.println("incorrect password");
	response.sendRedirect("librarian.jsp");
	System.out.println("end");
		
		     
		}
      catch(Exception e)
      {
          e.printStackTrace();
      }
              
	}
}
		
		
