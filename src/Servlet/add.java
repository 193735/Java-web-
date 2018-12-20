package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.InformationDao;
import Dao.UsersDao;
import enity.Personal;
import enity.User;



/**
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private static boolean a;
       private static String c;
       
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
		 String phonenumber=request.getParameter("phone");
		String email = request.getParameter("email");
		String sex = request.getParameter("sex");
	    UsersDao ud = new UsersDao();
	    User user = ud.find(phonenumber);
			if(user!=null) {
				out.print("<script language='javascript'>alert('用户名或密码错误!')</script>");
			
			}else {
	            User users = new User();
	            InformationDao informationDao = new  InformationDao();
				Personal personal = new Personal();
				personal.setPhone(phonenumber);
				informationDao.insert(personal);
				users.setPhoneNumber(phonenumber);
			    users.setUsername(username);
				users.setPassword(password);
				users.setSex(sex);
				users.setEmail(email);
			    ud.insert(users);
			    response.sendRedirect("./javawebTraining/login.html ");
			    
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
