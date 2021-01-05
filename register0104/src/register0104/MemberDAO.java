package register0104;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class MemberDAO {

	private DBConnectionMgr pool = null;
	
	public MemberDAO() {	
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error : "+e);
		}
	}// 생성자
	
	// 아이디 있는지 비교 
	public boolean checkID(String id) {
		Connection c = null;
		PreparedStatement p = null;
		ResultSet r = null;
		boolean check = false;
		try {
			c = pool.getConnection(); // 객체를 빌림
			String query = "select id from member where id =?";
			p = c.prepareStatement(query);
			p.setString(1, id);
			r = p.executeQuery();
			check = r.next();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception" +e);
		}finally {
			pool.freeConnection(c, p, r);
		}
		return check;
	}//checkID
	
	//회원가입
	public boolean memberInsert(MemberDTO memberDTO) {
		Connection c=null;
		PreparedStatement p = null;
		
		
		boolean flag = false;
		try {
			c = pool.getConnection();
			
			String query = "insert into member values(?,?,?,?,?,?,now())";
			p=c.prepareStatement(query);
			p.setString(1, memberDTO.getId());
			p.setString(2, memberDTO.getPassword());
			p.setString(3, memberDTO.getName());
			p.setString(4, memberDTO.getEmail());
			p.setString(5, memberDTO.getPhone());
			p.setString(6, memberDTO.getJob());
			int cnt = p.executeUpdate();
			// excuteQuery : resultSet 반환
			// excuteUpdate : int 행의 갯수 반환
			if(cnt>0) {
				flag=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception 이거?"+e);
		}finally {
			pool.freeConnection(c, p);
		}
		return flag;
	}
	
	// 로그인 체크
	public boolean logincheck(String id,String password) {
		Connection c= null;
		PreparedStatement p = null;
		ResultSet r = null;
		boolean logincheck = false;
		try {
			c = pool.getConnection();
			String query = "select id , password from member where id = ? and password = ? ";
			p=c.prepareStatement(query);
			p.setString(1, id);
			p.setString(2, password);
			r=p.executeQuery();
			logincheck =r.next();
			System.out.println(logincheck);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception : "+e);
			
		}finally {
			pool.freeConnection(c,p,r);
		}
		return logincheck;
	}
	
	
}
