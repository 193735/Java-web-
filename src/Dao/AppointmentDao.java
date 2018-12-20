package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Utils.JDBCUtils;
import enity.Appointment;
import enity.User;


 

public class AppointmentDao {
	
	public boolean insert(Appointment appointment) {		
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			String sql1 = "INSERT INTO appointmentinformation (theme,fee,time,sate,description,phoneNumber) VALUES"
					+ "('"+appointment.getTheme()+"','"+
			appointment.getFee()+"','"+appointment.getTime()+"','"+appointment.getSate()+"','"+appointment.getDescription()+"','"+appointment.getPhoneNumber()+"')"; 
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
	public ArrayList<Appointment> findAll(){
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Appointment> list=new ArrayList<Appointment>();
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			String sql = "SELECT * FROM appointmentinformation";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Appointment appointment = new Appointment();
				appointment.setFee(rs.getString("fee"));
				appointment.setDescription(rs.getString("description"));
				appointment.setPhoneNumber(rs.getString("phoneNumber"));
				appointment.setSate(rs.getString("sate"));
				appointment.setTime(rs.getString("time"));
				appointment.setTheme(rs.getString("theme"));
			    
				list.add(appointment);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return null;
	}
	public ArrayList<Appointment> find(String phone) {
		Connection conn =null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//获取数据连接
			conn = JDBCUtils.getConnection();
			//获取Statement对象
			stmt = conn.createStatement();
			ArrayList<Appointment> list=new ArrayList<Appointment>();
			String sql="SELECT * FROM appointmentinformation WHERE phoneNumber = '"+phone+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				Appointment appointment = new Appointment();
				appointment.setDescription(rs.getString("description"));
				appointment.setFee(rs.getString("fee"));
				appointment.setPhoneNumber(rs.getString("phoneNumber"));
				appointment.setSate(rs.getString("sate"));
				appointment.setTime(rs.getString("time"));
				appointment.setTheme(rs.getString("theme"));
			    list.add(appointment);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtils.release( stmt, conn,rs);
		}
		return null;
	}
	
}
