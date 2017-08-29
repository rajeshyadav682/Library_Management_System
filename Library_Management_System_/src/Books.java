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

@WebServlet("/Books")
public class Books extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("detect");
			int exist;
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
				ResultSet rs = ps.executeQuery();
				
				if(rs.next())
					
				{
					exist = rs.getInt(book_no);
					if(exist!=book_no)
					{
					out.println("<html><body><center><h1>");
					out.println("Added Books SUCCESSFULLY");
					out.print("</h1></center></body></html>");	
					out.close();
				}
					if(exist==book_no) {
						out.println("<html><body><center><h1>");
						out.println("Book No already exist");
						out.print("</h1></center></body></html>");	
						out.close();
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

