

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("login");
		String uname= request.getParameter("username");
		String pass=  request.getParameter("password");
		if(uname.equals("admin") && pass.equals("admin"))
		{
			
			HttpSession session = request.getSession();
			session.setAttribute("username",uname);
			response.sendRedirect("administrator.jsp");
		
		}
			else{
				
					response.sendRedirect("admin.jsp");
		}
}
					
}