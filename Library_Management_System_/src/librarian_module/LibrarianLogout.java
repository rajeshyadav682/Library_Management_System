package librarian_module;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LibrarianLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String uname = null;
		HttpSession session = request.getSession(false);
		if (session != null) {
		uname = (String) session.getAttribute("loggedUser");
		out.println("<center><h1>");
		out.println("Logged User is - ");
		out.println(uname);
		out.println("</h1></center>");
		} else {
		out.println("<center><h1>");
		out.println("Session Session Time Out");
		out.println("</h1></center>");
		}
		}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
