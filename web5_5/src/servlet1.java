

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public servlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String code=request.getParameter("code");
		out.print(code);
		//String finalprice=(String)session.getAttribute("finalprice");
		//if(code.equals("studentdiscount")) 
		//{
			//session.setAttribute("finalprice","800");
		//}
	}

}
