package Utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class informationDao {
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
			
			String sql1 = "INSERT INTO personalinformation (name,birthday,sex,phoneNumber,city,Email,company,money,byyx,sxzy,height,weight) VALUES"
					+ "('"+personal.getName()+"','"+
			personal.getBirthday()+"','"+personal.getSex()+"','"+personal.getPhone()+"','"+personal.getCity()+"','"+personal.getEmail()+"','"+personal.getCompany()+"','"+personal.getMoney()+"','"+personal.getByyx()+"','"+personal.getSxzy()+"','"+personal.getHeight()+"','"+personal.getWeight()+"')"; 
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
}
