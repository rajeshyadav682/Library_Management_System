

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LibrarianLogin")
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
				
			HttpSession session = request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("librarian_acces.jsp");
		
		}
			else{
				
				
				response.sendRedirect("librarian.jsp");
		}
}
		
		
		
}