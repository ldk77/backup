package model1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model1.vo.Board;

public class BoardDao {
	// public ResultSet selectBoardList() throws Exception {
	// ResultSet 반환타입으로 별로 -> 평범한 타입 -> List
	public ArrayList<Board> selectBoardList(Connection conn) throws Exception {
		// 다른 메서드에서도 동일한 매개값을 사용하는 코드 중복 
		// -> 매개값(ex:db비밀번호)이 변경되면 중복된 코드 모두 이 매개값을 같은 값으로 변경해야 된다.
		// Class.forName("org.mariadb.jdbc.Driver");
		// Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mvc","root","java1234");
		
		String sql = "SELECT no, title FROM board";
		PreparedStatement stmt = conn.prepareStatement(sql);
		ResultSet rs = stmt.executeQuery();
		// ResultSet -> List 가공작업
		ArrayList<Board> list = new ArrayList<Board>();
		while(rs.next()) {
			Board b = new Board();
			b.setNo(rs.getInt("no"));
			b.setTitle(rs.getString("title"));
			list.add(b);
		}
		return list;
	}	
}
