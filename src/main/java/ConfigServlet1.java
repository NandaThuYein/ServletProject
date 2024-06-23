

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.GenericServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConfigServlet1
 */
@WebServlet("/ConfigServlet1")
public class ConfigServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfigServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param <ServletConfig>
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		ServletConfig config=getServletConfig(); 
		String driver=config.getInitParameter("driver"); 
		out.print("Driver is: "+driver);
		Enumeration<String> e=config.getInitParameterNames();
		String str=""; 
		ServletContext context=getServletContext(); 
		Enumeration<String> e1=context.getInitParameterNames(); 
		String str1=""; 
		while(e1.hasMoreElements()){ 
		str1=e1.nextElement(); 
		out.print("<br> "+context.getInitParameter(str1));
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
