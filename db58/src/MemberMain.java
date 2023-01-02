import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberMain {
	public static void main(String[] args){
		// Class.forName 은 외부 라이브러리를 로딩하려고
		
		Connection conn = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db58","root","java1234");
		PreparedStatement stmt = conn.prepareStatement("");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {		
			try {
				conn.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
	}
}
