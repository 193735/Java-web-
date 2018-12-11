package Utils;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class revise
 */
@WebServlet("/revise")
public class revise extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public revise() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		String username =  request.getParameter("username");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("number");
		String money = request.getParameter("money");
		String company = request.getParameter("company");
		String sxzy = request.getParameter("sxzy");
		String byyx = request.getParameter("byyx");
		String city = request.getParameter("city");
		String birthday = request.getParameter("birthday");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String email = request.getParameter("email");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
