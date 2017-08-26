package librarian_module;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LibrarianLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html"); 
		PrintWriter out = response.getWriter();
		System.out.println("lib-login");
		String uname= request.getParameter("username");
		String pass=  request.getParameter("password");
	
		if(uname.equals("librarian") && pass.equals("librarian"))
		{
				
		//	HttpSession session = request.getSession();
			HttpSession session = request.getSession(true);
			session.setMaxInactiveInterval(300);
			session.setAttribute("userlogged",uname);
			response.sendRedirect("librarian_acces.jsp");
		
		}
		else{
			System.out.println("invalid");
				out.println("invalid Username or Password");
				response.sendRedirect("librarian.jsp");
	}
	}
}
	