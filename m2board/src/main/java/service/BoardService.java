package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.BoardDao;
import util.DBUtil;
import vo.Board;

public class BoardService {
	// Connection 객체를 Dao에 넘겨주는 역할 
	private BoardDao boardDao;
	public ArrayList<Board> getBoardList()  {
		boardDao = new BoardDao();
		Connection conn = null;
		ArrayList<Board> list = null;
		try {
			conn = DBUtil.getConnection();
			conn.setAutoCommit(false);
			list = boardDao.selectBoardList(conn);
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
		return list;
	}
}
