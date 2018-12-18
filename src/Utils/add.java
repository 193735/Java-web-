package Utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static boolean a;
       private static String c;
       private static String phonenumber;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
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
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		phonenumber=request.getParameter("phone");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
	    UsersDao ud = new UsersDao();
	    
		User user = ud.find(phonenumber);
		if(user!=null) {
			 out.println("手机号已注册，请重新输入手机号");
		}else {
		User users = new User();
		users.setUsername(username);
		users.setPassword(password);
		users.setSex(sex);
		users.setEmail(email);
		users.setPhoneNumber(phonenumber);
 	    boolean c = ud.insert(users);
 	     if(c) {
 	    	 System.out.println("注册成功");
 	     }else {
 	    	 System.out.println("注册失败");
 	     }
 	   response.sendRedirect("http://localhost:8080/Practical/javawebTraining/login.html");
		
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
