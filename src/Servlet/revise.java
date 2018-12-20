package Servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Dao.InformationDao;
import enity.Personal;

/**
 * Servlet implementation class revise
 */
@WebServlet("/revise")
@MultipartConfig
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
	    
	    HttpSession Session = request.getSession();
        String phone = (String)Session.getAttribute("phone");
        String marry = request.getParameter("marry");
		String username =  request.getParameter("username");
		String money = request.getParameter("money");
		String company = request.getParameter("company");
		String sxzy = request.getParameter("sxzy");
		String byyx = request.getParameter("byyx");
		String sex = request.getParameter("sex");
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
		personal.setSex(sex);
		personal.setCompany(company);
		personal.setMarried(marry);
		personal.setHeight(height);
		personal.setWeight(weight);
		personal.setMoney(money);
		personal.setSxzy(sxzy);
		Part  part = request.getPart("headImage"); //<input type="file" name="headImage">
       if(part != null && part.getContentType().contains("image")) {
            // 1.1 ��ȡ��web�ڷ������ϵ�����λ��
            String path = getServletContext().getRealPath("/") + "images";
            File file = new File(path);
            if(!file.exists()) {
            	file.mkdirs();
            }
            // 1.2 ��ȡ�ϴ���ͷ����ļ�����
            String fileTag = "filename=\"";
            String header = part.getHeader("content-disposition");
            String filename = header.substring(header.indexOf(fileTag) + fileTag.length(),
                    header.lastIndexOf("\""));
            // 1.3 �����Զ����ļ�����ʹ�õ�ǰʱ��
            String filenamePath = System.currentTimeMillis() +
                    filename.substring(filename.lastIndexOf("."));
            part.write(path + File.separator + filenamePath);  
            personal.setImg("images/" + filenamePath);	
            }
			a  =  information.update(personal);
		}
		if(a) {
			response.sendRedirect("http://localhost:8080/Practical/javawebTraining/personalinformation.jsp"); 
		}else {
			System.out.println("�޸�ʧ��");
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
