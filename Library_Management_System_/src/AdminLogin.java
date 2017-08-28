

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html"); 
		System.out.println("admin-login");
		String uname= request.getParameter("username");
		String pass=  request.getParameter("password");
		
		HttpSession session = request.getSession();
		if(uname.equals("admin") && pass.equals("admin"))
		{
			session.setAttribute("username",uname);
			response.sendRedirect("./AdminLoginLogic");	
		}
			else{
				response.sendRedirect("admin.jsp");
		}
}
		
		
		
}