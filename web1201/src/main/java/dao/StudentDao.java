package dao;

import java.util.ArrayList;

import db.DBUtil;
import vo.Student;
import java.sql.*;

public class StudentDao {
	//행을 추가하는 기능
	public int insertStudent(Student student) throws Exception {
		// db연결
		DBUtil dbUtil = new DBUtil();
		Connection conn = dbUtil.getConnection();
		
		//데이터 입력
		return 0;
	}
	public ArrayList<Student> selectStudentList(){
		ArrayList<Student> list = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			DBUtil dbUtil = new DBUtil();
			conn = dbUtil.getConnection();
			
			stmt = conn.prepareStatement("select * from student");
			rs = stmt.executeQuery();
			
			list = new ArrayList<Student>();
			while(rs.next()) {
				Student s = new Student();
				s.studentId = rs.getInt("student_id");
				s.familyName = rs.getString("family_name");
				s.name = rs.getString("name");
				s.birth = rs.getString("birth");
				s.city = rs.getString("city");		
				s.gender = rs.getString("gender");
				s.updatedate= rs.getString("updatedate");
				s.createdate = rs.getString("createdate");		
				list.add(s);
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
		return list;
	}	
}
