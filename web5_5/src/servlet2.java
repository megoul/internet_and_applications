

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class servlet2
 */
@WebServlet("/servlet2")
public class servlet2 extends HttpServlet {
	private static final long serialVersionUID = 102831973239L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String code=request.getParameter("code");
		
		HttpSession session=request.getSession(true);
		Integer finalprice=(Integer)session.getAttribute("finalprice");
		
		//PrintWriter out=response.getWriter();
		//response.setContentType("text/html");
		
		if(code.equals("studentdiscount")) {
			//out.println("you have discount");
			//out.println(code);
			finalprice=finalprice - finalprice/5;
			session.setAttribute("finalprice",finalprice);
			session.setAttribute("flag","set");
			//out.println((Integer)session.getAttribute("finalprice"));
			RequestDispatcher dis = request.getRequestDispatcher("basket.jsp");
			dis.forward(request,response);
		}
		else {
			//out.println("Sorry no discount");
			RequestDispatcher dis = request.getRequestDispatcher("basket.jsp");
			dis.forward(request,response);
		}
	}

}
