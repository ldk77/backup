package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import util.DBUtil;
import vo.Member;

public class MemberDao {
	// 로그인 메서드 
	public Member selectMemberByIdAndPw(Connection conn, Member member) throws Exception {
		Member returnMember = null;
		String sql ="SELECT member_id memberId,member_name memberName FROM member WHERE member_id = ? AND member_pw = PASSWORD(?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, member.getMemberId());
		stmt.setString(2, member.getMemberPw());		
		ResultSet rs = stmt.executeQuery();				
		if(rs.next()) {
			returnMember = new Member();
			returnMember.setMemberId(rs.getString("memberId"));
			returnMember.setMemberName(rs.getString("memberName"));
		}		
		rs.close();
		stmt.close();
		
		return returnMember;
	}
}
