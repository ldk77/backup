package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import dao.CashDao;
import util.DBUtil;

public class CashService { // get, add, modify, remove
	private CashDao cashDao;
	
	public HashMap<String, Object> getMaxMinYear() {
		HashMap<String, Object> map = null;
		Connection conn = null;
		try {
			DBUtil dbUtil = new DBUtil();
			conn = dbUtil.getConnection();
			CashDao cashDao = new CashDao();
			map = cashDao.selectMaxMinYear(conn);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return map;
	}
	
	public ArrayList<HashMap<String, Object>> getCashSumByMonth(int year, String category) {
		ArrayList<HashMap<String, Object>> list = null;
		Connection conn = null;
		try {
			/*
			DBUtil dbUtil = new DBUtil();
			conn = dbUtil.getConnection();
			*/
			conn = new DBUtil().getConnection();
			// conn.setAutoCommit(false);
			cashDao = new CashDao();
			list = cashDao.selectCashSumByMonth(conn, year, category);
			// conn.commit();
		} catch(Exception e) {
			// conn.rollback();
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
	
	public ArrayList<HashMap<String, Object>> getCashListByCategory(String category) {
		ArrayList<HashMap<String, Object>> list = null;
		Connection conn = null;
		try {
			conn = new DBUtil().getConnection();
			// conn.setAutoCommit(false);
			cashDao = new CashDao();
			list = cashDao.selectCashListByCategory(conn, category);
			// conn.commit();
		} catch(Exception e) {
			// conn.rollback();
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
