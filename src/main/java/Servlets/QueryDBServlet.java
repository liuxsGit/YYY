package Servlets;

import dao.manageDao;
import vo.repairTable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "QueryDBServlet", urlPatterns = "/query")
	public class QueryDBServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<repairTable> repairList = (List<repairTable>) request.getSession().getAttribute("repairList");
		manageDao dao=new manageDao();
		try {
			repairList=dao.queryDBServlet();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getSession().setAttribute("repairList",repairList);
		response.sendRedirect("../YY/webContent/queryRepairTable.jsp");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request,response);
	}
}
