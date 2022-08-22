package Dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShopDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;	 
	
	//싱글톤
	private static ShopDAO instance=null;
	public static ShopDAO getInstance() {
		if(instance==null)
			instance=new ShopDAO();
		return instance;
	}
	private ShopDAO(){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//싱글톤
	


	public int getMaxcustNo() {
		int result = 0;
		try {
			pstmt=conn.prepareStatement("select max(custno) from member_tbl_02");	
			rs = pstmt.executeQuery();
			rs.next();	
			result  = rs.getInt(1);
			System.out.println("RS : " + result);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try { rs.close(); }catch(Exception e) {e.printStackTrace();}
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		
		return result;
		
	}

}
