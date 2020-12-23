package dao;

import vo.repairTable;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class manageDao {
	
	private Connection con=null;
	
	
	public  void initConnection() throws ClassNotFoundException, SQLException {
		final String root="root";
		final String pwd="liu112615";
		final String uri="jdbc:mysql://localhost:3306/pro";
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection(uri,root,pwd);
	}
	
	public void closeConnection() throws SQLException {
		con.close();
	}
	
	/*
	添加报修表单数据,这里只添加进入数据库，不作返回查询单个对象
	 */
	public repairTable addintodb(repairTable obj) throws SQLException, ClassNotFoundException {
		this.initConnection();
		String sql="insert into table_user_repair(repairID,repairType,roomID,repairItem,repair_userID,repairDate,repairState) " +
				           "values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,obj.getRepairID());
		ps.setString(2,obj.getRepairType());
		ps.setString(3,obj.getRoomID());
		ps.setString(4,obj.getRepairItem());
		ps.setString(5,obj.getRepair_userID());
		ps.setString(6,obj.getRepairDate());
		ps.setString(7,obj.getState());
		ps.executeUpdate();
		ps.close();
		this.closeConnection();
		return obj;
	}
	
	/*
	查询全部报修表单数据
	 */

	public List<repairTable> queryDBServlet() throws SQLException, ClassNotFoundException {
		this.initConnection();
		String sql="select * from table_user_repair";
		List<repairTable> list=new ArrayList<>();
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			repairTable obj=new repairTable();
			obj.setRepairID(rs.getString("repairID"));
			obj.setRepairType(rs.getString("repairType"));
			obj.setRoomID(rs.getString("roomID"));
			obj.setRepairItem(rs.getString("repairItem"));
			obj.setRepair_userID(rs.getString("repair_userID"));
			obj.setRepairDate(rs.getString("repairDate"));
			obj.setState(rs.getString("repairState"));
			list.add(obj);
		}
		ps.close();
		this.closeConnection();
		return list;
	}
}
