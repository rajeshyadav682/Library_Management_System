

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
import javax.servlet.http.HttpSession;

import oracle.jdbc.driver.OracleDriver;

@WebServlet("/Registation_user")
public class Registation_user extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("get");
}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("detect");
		PrintWriter out = response.getWriter();
		String idn = request.getParameter("uid");
		int id = Integer.parseInt(idn);
		String fname=request.getParameter("fname");
		String lname = request.getParameter("lname");
		String ag = request.getParameter("age");
		int age=Integer.parseInt(ag);
		String email = request.getParameter("email");
		String phon = request.getParameter("pno");
		int phone=Integer.parseInt(phon);
		String address = request.getParameter("add");
		
		System.out.println("detect");
		try{
			Connection con=null;
			PreparedStatement ps=null;	
			
			Driver d = new OracleDriver();
			DriverManager.registerDriver(d);
		
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system ");
			ps=con.prepareStatement("insert into registration_user values(?,?,?,?,?,?,?)");
			ps.setInt(1,id);
			ps.setString(2,fname);
			ps.setString(3,lname);
			ps.setInt(4,age);
			ps.setString(5,email);
			ps.setInt(6,phone);
			ps.setString(7,address);
			int res= ps.executeUpdate();
			
			if(res!=0)
			{
				out.println("<html><body><center><h1>");
				out.println("REGISTRATION DONE SUCCESSFULLY");
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