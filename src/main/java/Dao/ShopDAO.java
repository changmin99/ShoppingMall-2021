package Dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dto.MemberDTO;

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
	
	
	public boolean MemberJoin(MemberDTO dto)
	{
	
		boolean flag = false;
		try {
			pstmt = conn.prepareStatement("insert into member_tbl_02 values(?,?,?,?,?,?,?)");
			pstmt.setString(1, dto.getCustno());
			pstmt.setString(2, dto.getCustname());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getJoindate());
			pstmt.setString(6, dto.getGrade());
			pstmt.setString(7, dto.getCity());
			int result = pstmt.executeUpdate();
			if(result>0)
				flag=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {pstmt.close();}catch(Exception e) {e.printStackTrace();}
		}
		return flag;
		
	}
	
	

}
