package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import vo.Dept;

public class DeptDao {
		//insert
		public int insertDept(Dept dept) throws Exception {
			return 0;
		}
		//update
		public int updateDept(Dept dept) throws Exception{
			return 0;
		}
		
		//delete
		public int deleteDept(String deptNo) throws Exception {
			return 0;
		}
	
		//selectOne
		public Dept selectDeptOne(String deptNo) throws Exception {
			return null;
		}	
		
		//selectList	
	public ArrayList<Dept> selectDeptList(int currentPage, int rowPerPage) throws Exception {
		//반환타입
		ArrayList<Dept> list = new ArrayList<Dept>();
		
		// beginRow를 구하는 알고리즘
		int beginRow = (currentPage-1)*rowPerPage;
		
		//db 조회 알고리즘
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1/employees","root","java1234");
		String sql = "SELECT dept_no deptNo,dept_name deptName FROM departments LIMIT ?,?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, beginRow);
		stmt.setInt(2, rowPerPage);
		
		ResultSet rs = stmt.executeQuery();
		while(rs.next()) {
			Dept d =new Dept();
			d.setDeptNo(rs.getString("deptNo"));
			d.setDeptName(rs.getString("deptName"));
			list.add(d);
		}
		/*
		 * db연결 
		 * select결과값가져오기
		 * 결과값그대로 사용못하므로 List값으로 변환 
		 * */
		stmt.close();
		rs.close();
		conn.close();
		return list;
	}
}
