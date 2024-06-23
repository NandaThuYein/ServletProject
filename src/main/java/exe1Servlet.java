

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class exe1Servlet
 */
@WebServlet("/exe1Servlet")
public class exe1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public exe1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		
		Cookie[] ck = request.getCookies();
		int b=0;
		if (ck!=null) {
			for (Cookie i :ck)
				if (name.equals(i.getValue())) {
					out.println("Welcome Back "+i.getValue());
					b++;
				}
		}
		else {
			Cookie c= new Cookie("name",name);
			response.addCookie(c);
		}
		if (b==0) {
			Cookie c=new Cookie("name",name);
			response.addCookie(c);
			out.println("Welcome  "+name+"<br>");
			out.println("You are the first visitor!!!");
		}
	 }
 }

