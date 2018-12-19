package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UsersDao;
import enity.User;


/**
 * Servlet implementation class login
 */ 
@WebServlet("/login")
public class login extends HttpServlet {
	
	private static   boolean a;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		String password = request.getParameter("password");
		String phonenumber=request.getParameter("phone");
		UsersDao usersDao = new UsersDao();
	       ArrayList <User> list = usersDao.findAll();
	       for(int i = 0; i<list.size();i++) {
	    	if(phonenumber.equals(list.get(i).getPhoneNumber())&&password.equals(list.get(i).getPassword())) {
	    		a = true;
	    		break;
	    	}else {
	    		a= false;
	    	}
	       }
	       if(a) {
              HttpSession session = request.getSession();
	    	  session.setAttribute("phone", phonenumber);
	    	  response.sendRedirect("http://localhost:8080/Practical/javawebTraining/home.html"); 
}else {
	    	   System.out.println("µÇÂ¼Ê§°Ü");
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
