

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
 
		HttpSession session = request.getSession(false);
 
		if(session != null) {
			String uname = (String) session.getAttribute("userlogged");
			out.print("Welcome " + uname);
			out.print("<br/><a href=\"logout\">Logout</a>");
		}
		else {
			response.sendRedirect("librarian.jsp");
		}
		
		out.close();
	}
}