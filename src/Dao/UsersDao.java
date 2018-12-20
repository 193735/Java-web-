package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Utils.JDBCUtils;
import enity.User;




public class UsersDao {
	public boolean insert(User user) {		
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			String sql1 = "INSERT INTO user (username,password,phoneNumber,email,sex) VALUES"
					+ "('"+user.getUsername()+"','"+
			user.getPassword()+"','"+user.getPhoneNumber()+"','"+user.getEmail()+"','"+user.getSex()+"')"; 
            int num =stmt.executeUpdate(sql1);
					if(num >0) {
						return true;
					}
					return false;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release(stmt,conn,rs);
		}
		return false;
	}
	public ArrayList<User> findAll(){
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<User> list=new ArrayList<User>();
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			String sql = "SELECT * FROM user";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
				user.setEmail(rs.getString("email"));
				user.setSex(rs.getString("sex"));
				list.add(user);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return null;
	}
	public User find(String phone) {
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			String sql="SELECT * FROM user WHERE phoneNumber = '"+phone+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				User user = new User();
				user.setPassword(rs.getString("phoneNumber"));;
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				
				return user;
			}
			return null;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return null;
	}
}
