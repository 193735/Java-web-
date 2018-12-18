package Utils;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class revise
 */
@WebServlet("/revise")
public class revise extends HttpServlet {
	private boolean a;
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
		InformationDao information = new InformationDao();
	    //ServletContext context = this.getServletContext();
	    HttpSession Session = request.getSession();
        String phone = (String)Session.getAttribute("phone");
        String marry = request.getParameter("marry");
		String username =  request.getParameter("username");
		String money = request.getParameter("money");
		String company = request.getParameter("company");
		String sxzy = request.getParameter("sxzy");
		String byyx = request.getParameter("byyx");
		String city = request.getParameter("city");
		String birthday = request.getParameter("birthday");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String email = request.getParameter("email");
		if(phone!=null) {
	    Personal personal = information.find(phone);
		personal.setBirthday(birthday);
		personal.setName(username);
	    personal.setEmail(email);
		personal.setCity(city);
		personal.setByyx(byyx);
		personal.setCompany(company);
		personal.setMarried(marry);
		personal.setHeight(height);
		personal.setWeight(weight);
		personal.setMoney(money);
		personal.setSxzy(sxzy);
		a  =  information.update(personal);
		}
		if(a) {
			response.sendRedirect("http://localhost:8080/Practical/javawebTraining/personalinformation.jsp"); 
		}else {
			System.out.println("ÐÞ¸ÄÊ§°Ü");
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
