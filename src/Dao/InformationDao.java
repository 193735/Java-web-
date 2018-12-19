package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

import Utils.JDBCUtils;
import enity.Personal;



public class InformationDao {
	public boolean insert(Personal personal) {		
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			String sql1 = "INSERT INTO personalinformation (name,birthday,sex,phoneNumber,city,Email,company,money,byyx,sxzy,height,weight,married,img) VALUES"
					+ "('"+personal.getName()+"','"+
			personal.getBirthday()+"','"+personal.getSex()+"','"+personal.getPhone()+"','"+personal.getCity()+"','"+personal.getEmail()+"','"+personal.getCompany()+"','"+personal.getMoney()+"','"+personal.getByyx()+"','"+personal.getSxzy()+"','"+personal.getHeight()+"','"+personal.getWeight()+"','"+personal.getMarried()+"','"+personal.getImg()+"')"; 
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
	public Personal find(String phone) {
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			String sql="SELECT * FROM personalinformation WHERE phoneNumber = '"+phone+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Personal personal = new Personal();
				personal.setPhone(rs.getString("phoneNumber"));
				personal.setName(rs.getString("name"));
				personal.setBirthday(rs.getString("birthday"));
				personal.setEmail(rs.getString("email"));
				personal.setSex(rs.getString("sex"));
				personal.setCity(rs.getString("city"));
				personal.setByyx(rs.getString("byyx"));
				personal.setCompany(rs.getString("company"));
				personal.setHeight(rs.getString("height"));
				personal.setWeight(rs.getString("weight"));
				personal.setMoney(rs.getString("money"));
				personal.setSxzy(rs.getString("sxzy"));
				personal.setMarried(rs.getString("married"));
				personal.setImg(rs.getString("img"));
				return personal;
			}
			return null;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return null;
	}
	public boolean update(Personal personal) {
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			
			String sql ="UPDATE personalinformation set name='"+personal.getName()+"',email='"+personal.getEmail()
			+"',birthday='"+personal.getBirthday()+"',phoneNumber='"+personal.getPhone()+"',city='"+personal.getCity()
			+"',company='"+personal.getCompany()+"',sex='"+personal.getSex()+"',height='"+personal.getHeight()+
			"',weight='"+personal.getWeight()+"',byyx='"+personal.getByyx()+"',money='"+personal.getMoney()+
			"',sxzy='"+personal.getSxzy()+
			"',married='"+personal.getMarried()+"',img='"+personal.getImg()
			+"'where phoneNumber ='"+personal.getPhone()+"'";
		   int num = stmt.executeUpdate(sql);
			if (num >0) {
				return true;
			}
			return false;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return false;
	}
}
