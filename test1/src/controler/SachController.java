package controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loaibean;
import bean.sachbean;
import bo.Giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class SachController
 */
@WebServlet("/SachController")
public class SachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
	//	Random rd=new Random();
		response.setCharacterEncoding("utf-8");
		sachbo sbo=new sachbo();
		ArrayList<sachbean> ds= sbo.getsach();
		//int n=ds.size();
		loaibo lbo= new loaibo();
		ArrayList<loaibean> dsloai=lbo.getloai();
		String key=request.getParameter("txttk");
		if(key!=null) {
			ds=sbo.TimTen(key);
		}
		//int m=dsloai.size();
        request.setAttribute("dssach", ds);
        request.setAttribute("dsloai", dsloai);
        RequestDispatcher rd1=request.getRequestDispatcher("hahaha.jsp");
   		rd1.forward(request, response);
       
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
