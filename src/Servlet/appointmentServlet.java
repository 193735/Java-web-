package Servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import Dao.AppointmentDao;
import enity.Appointment;
import javax.servlet.http.Part;

/**
 * Servlet implementation class appointmentServlet
 */
@WebServlet("/appointmentServlet")
public class appointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public appointmentServlet() {
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
		String theme = request.getParameter("item");
		String fee = request.getParameter("gender");
		String time = request.getParameter("time");
		String sate = request.getParameter("sate");
		String description = request.getParameter("description");
		HttpSession Session = request.getSession();
		String phone = (String)Session.getAttribute("phone");
		Appointment appointment = new Appointment();
		AppointmentDao appointmentDao = new AppointmentDao();
		appointment.setTheme(theme);
		appointment.setFee(fee);
		appointment.setTime(time);
        appointment.setSate(sate);
        appointment.setDescription(description);
        appointment.setPhoneNumber(phone);
		boolean a =   appointmentDao.insert(appointment);
		if(a) {
		response.sendRedirect("http://localhost:8080/Practical/javawebTraining/myappointments.jsp"); 
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
