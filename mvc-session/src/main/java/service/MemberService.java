package service;

import java.sql.Connection;
import java.sql.SQLException;

import dao.MemberDao;
import util.DBUtil;
import vo.Member;

public class MemberService {
	private MemberDao memberDao;
	
	// 1) 로그인 서비스
	public Member loginService(Member member) {
		Member returnMember = null;
		Connection conn = null;		
		this.memberDao = new MemberDao();		
		try {
			conn = DBUtil.getConnection();
			returnMember = memberDao.selectMemberByIdAndPw(conn, member);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return returnMember;
	}
}
