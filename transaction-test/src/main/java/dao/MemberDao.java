package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Member;

public class MemberDao {
	// 회원탈퇴 
	public int deleteMember(String memberId) {
		Connection conn = null;
		PreparedStatement outIdStmt = null;
		int outidRow = 0;
		int memberRow = 0;
		PreparedStatement memberStmt = null;
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db58","root","java1234");
			conn.setAutoCommit(false);
			//1
			String outIdSql = "INSERT INTO outid(member_id, createdate) VALUES(?,NOW())";
			outIdStmt = conn.prepareStatement(outIdSql);
			outIdStmt.setString(1, memberId);
			outidRow = outIdStmt.executeUpdate();
			//2
			String memberSql = "DELETE FROM member WHERE member_id = ?";
			memberStmt = conn.prepareStatement(memberSql);
			memberStmt.setString(1, memberId);
			memberRow = memberStmt.executeUpdate();
			conn.commit();
			
			} catch(Exception e) {
				try {
					conn.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();				
				}finally{
					try {	
						memberStmt.close();
						outIdStmt.close();
						conn.close();	
					} catch(Exception e) {
						e.printStackTrace();
					}
				}
			return outidRow+memberRow ;		//2 면 트루
		
	}
	
	//아이디중복검사 
	//param String : 사용할 아이디 	
	//return boolean value : true(입력 아이디 사용가능) / false(사용불가 아이디)
	public boolean checkMemberId(String memberId) {
		boolean result = true;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db58","root","java1234");
			String sql = "SELECT t.id"
					+ "FROM (SELECT member_id id FROM member "
					+ "			UNION "
					+ "		SELECT member_id id FROM outid) t"
					+ "WHERE t.id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, memberId);
			rs = stmt.executeQuery();
			if(rs.next()) {// 이미 사용된 아이디 입니다.
				result = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//회원가입
	public int insertMember(Member member) {
		int row = 0;
		Connection conn = null;
		PreparedStatement stmt = null;
		try {
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db58","root","java1234");
		String sql = "INSERT INTO member (member_id, member_pw, member_name) VALUES (?, PASSWORD(?), ?)";
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberId());
		stmt.setString(2, member.getMemberPw());
		stmt.setString(3, member.getMemberName());
		row = stmt.executeUpdate();	
		} catch(Exception e) {
			e.printStackTrace();
			}finally{
				try {					
					stmt.close();
					conn.close();	
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		return row;		
	}	
	//로그인 
	 public Member login(Member paramMember) { // String memberId, String memberPw
	      Member resultMember = null;
	      
	      Connection conn = null;
	      PreparedStatement stmt = null;
	      ResultSet rs = null;
	      try {
	         Class.forName("org.mariadb.jdbc.Driver");
	         conn = DriverManager.getConnection(
	               "jdbc:mariadb://localhost:3306/db58","root","java1234");
	         String sql = "SELECT member_id memberId, member_name memberName"
	                  + "   FROM member WHERE member_id=? AND member_pw = PASSWORD(?)";
	         stmt = conn.prepareStatement(sql);
	         stmt.setString(1, paramMember.getMemberId());
	         stmt.setString(2, paramMember.getMemberPw());
	         rs = stmt.executeQuery();
	         if(rs.next()) {
	            resultMember = new Member();
	            resultMember.setMemberId(rs.getString("memberId"));
	            resultMember.setMemberName(rs.getString("memberName"));
	         }
	      } catch(Exception e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            rs.close();
	            stmt.close();
	            conn.close();
	         } catch(Exception e) {
	            e.printStackTrace();
	         }
	      }
	      
	      return resultMember; // 로그인 실패시 null, 성공하면 로그인 Member객체
	   }
	
	
	//회원탈퇴 

}
