package Servlets;

import dao.manageDao;
import vo.repairTable;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "AddDBServlet",urlPatterns = "/Add")
public class AddDBServlet extends javax.servlet.http.HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
		request.setCharacterEncoding("utf-8");
		String repairID=request.getParameter("repairID");
		String repairType=request.getParameter("typesetter");
		String roomID=request.getParameter("roomID");
		String repairItem=request.getParameter("repairItem");
		String repair_userID=request.getParameter("repair_userID");
		String repairDate=request.getParameter("repairDate");
		String state=request.getParameter("state");
		
		repairTable repairtable=new repairTable();
		repairtable.setRepairID(repairID);
		repairtable.setRepairType(repairType);
		repairtable.setRoomID(roomID);
		repairtable.setRepairItem(repairItem);
		repairtable.setRepair_userID(repair_userID);
		repairtable.setRepairDate(repairDate);
		repairtable.setState(state);
		
		List<repairTable> repairList =new ArrayList<>();
		manageDao dao=new manageDao();
		
		try {
			repairtable=dao.addintodb(repairtable);
		}catch (Exception e) {
			e.printStackTrace();
		}
		repairList.add(repairtable);
		request.getSession().setAttribute("repairList",repairList);
		response.sendRedirect("../YY/query");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		this.doGet(request,response);
	}
}
