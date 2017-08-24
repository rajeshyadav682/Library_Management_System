

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.driver.OracleDriver;

public class Add_books extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("detect");
		PrintWriter out = response.getWriter();
		String book_n = request.getParameter("book_no");
		int book_no = Integer.parseInt(book_n);
		String books_name=request.getParameter("book_name");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String edition = request.getParameter("edition");
		String cop = request.getParameter("copies");
		int copies=Integer.parseInt(cop);
		String cos = request.getParameter("cost");
		int cost = Integer.parseInt(cos);
		
		System.out.println("connect");
		try{
			Connection con=null;
			PreparedStatement ps=null;	
			
			Driver d = new OracleDriver();
			DriverManager.registerDriver(d);
		
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system ");
			ps=con.prepareStatement("insert into add_books values(?,?,?,?,?,?,?)");
			ps.setInt(1,book_no);
			ps.setString(2,books_name);
			ps.setString(3,author);
			ps.setString(4,publisher);
			ps.setString(5,edition);
			ps.setInt(6,copies);
			ps.setInt(7,cost);
			int res= ps.executeUpdate();
			
			if(res!=0)
			{
				out.println("<html><body><center><h1>");
				out.println("Add Books SUCCESSFULLY");
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

