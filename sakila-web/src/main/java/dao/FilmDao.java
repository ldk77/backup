package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Film;

public class FilmDao {
	
	// release_year의 최소값 
	public int selectMinReleaseYear() {
		int minYear = 0;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sakila", "root", "java1234");
			String sql = "SELECT MIN(release_year) y FROM film";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next()) {
				minYear = rs.getInt("y");
			}
		}  catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {				
				e.printStackTrace();
			}
		}		
		return minYear;
	}
	
	
	// rating : String[] 여러개의 등급
	public ArrayList<Film> selectFilmList2(String searchTitle ,String[] rating, int fromMinute, int toMinute, int releaseYear) {
		ArrayList<Film> list = new ArrayList<Film>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sakila","root","java1234");
			String sql = null;
			
			
		if(fromMinute == 0 && toMinute == 0) {	//상영시간 선택안할시
			if(releaseYear == 0 ) { //년도 선택안할시
				if(rating == null || rating.length==5) { // 등급을 하나도 설정 안했거나 모두 선택했을 때
					sql = "SELECT * FROM film WHERE title LIKE ?";
					stmt = conn.prepareStatement(sql);				
					stmt.setString(1, "%"+searchTitle+"%");
				} else if(rating.length == 4) {
					sql = "SELECT * FROM film WHERE title LIKE ? AND rating IN (?, ?, ?, ?)";
					stmt = conn.prepareStatement(sql);				
					stmt.setString(1, "%"+searchTitle+"%");
					stmt.setString(2, rating[0]);
					stmt.setString(3, rating[1]);
					stmt.setString(4, rating[2]);
					stmt.setString(5, rating[3]);
				} else if(rating.length == 3) {
					sql = "SELECT * FROM film WHERE title LIKE ? AND rating IN (?, ?, ?)";
					stmt = conn.prepareStatement(sql);					
					stmt.setString(1, "%"+searchTitle+"%");
					stmt.setString(2, rating[0]);
					stmt.setString(3, rating[1]);
					stmt.setString(4, rating[2]);
				} else if(rating.length == 2) {
					sql = "SELECT * FROM film WHERE title LIKE ? AND rating IN (?, ?)";
					stmt = conn.prepareStatement(sql);			
					stmt.setString(1, "%"+searchTitle+"%");
					stmt.setString(2, rating[0]);
					stmt.setString(3, rating[1]);
				} else if(rating.length == 1) {
					sql = "SELECT * FROM film WHERE title LIKE ? AND rating IN (?)";
					stmt = conn.prepareStatement(sql);				
					stmt.setString(1, "%"+searchTitle+"%");
					stmt.setString(2, rating[0]);				
				}			
			} else { // releaseYear가 선택된 경우
				if(rating == null || rating.length==5) { // 등급을 하나도 설정 안했거나 모두 선택했을 때
					sql = "SELECT * FROM film WHERE release_year IN(?) AND title LIKE ? ";
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, releaseYear);				
					stmt.setString(2, "%"+searchTitle+"%");					
				} else if(rating.length == 4) {
					sql = "SELECT * FROM film WHERE release_year IN(?) AND title LIKE ? AND rating IN (?, ?, ?, ?)";
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, releaseYear);
					stmt.setString(2, "%"+searchTitle+"%");
					stmt.setString(3, rating[0]);
					stmt.setString(4, rating[1]);
					stmt.setString(5, rating[2]);
					stmt.setString(6, rating[3]);
				} else if(rating.length == 3) {
					sql = "SELECT * FROM film WHERE release_year IN(?) AND title LIKE ? AND rating IN (?, ?, ?)";
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, releaseYear);				
					stmt.setString(2, "%"+searchTitle+"%");
					stmt.setString(3, rating[0]);
					stmt.setString(4, rating[1]);
					stmt.setString(5, rating[2]);
				} else if(rating.length == 2) {
					sql = "SELECT * FROM film WHERE release_year IN(?) AND (title LIKE ?) AND rating IN (?, ?)";
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, releaseYear);					
					stmt.setString(2, "%"+searchTitle+"%");
					stmt.setString(3, rating[0]);
					stmt.setString(4, rating[1]);
				} else if(rating.length == 1) {
					sql = "SELECT * FROM film WHERE release_year IN(?) AND title LIKE ? AND rating IN(?)";
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, releaseYear);				
					stmt.setString(2, "%"+searchTitle+"%");
					stmt.setString(3, rating[0]);
				}
			}
			}else {
				if(releaseYear == 0 ) { //년도 선택안할시
					if(rating == null || rating.length==5) { // 등급을 하나도 설정 안했거나 모두 선택했을 때
						sql = "SELECT * FROM film WHERE length BETWEEN ? AND ? AND title LIKE ?";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, fromMinute);
						stmt.setInt(2, toMinute);
						stmt.setString(3, "%"+searchTitle+"%");
					} else if(rating.length == 4) {
						sql = "SELECT * FROM film WHERE length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?, ?, ?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, fromMinute);
						stmt.setInt(2, toMinute);
						stmt.setString(3, "%"+searchTitle+"%");
						stmt.setString(4, rating[0]);
						stmt.setString(5, rating[1]);
						stmt.setString(6, rating[2]);
						stmt.setString(7, rating[3]);
					} else if(rating.length == 3) {
						sql = "SELECT * FROM film WHERE length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?, ?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, fromMinute);
						stmt.setInt(2, toMinute);
						stmt.setString(3, "%"+searchTitle+"%");
						stmt.setString(4, rating[0]);
						stmt.setString(5, rating[1]);
						stmt.setString(6, rating[2]);
					} else if(rating.length == 2) {
						sql = "SELECT * FROM film WHERE length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, fromMinute);
						stmt.setInt(2, toMinute);
						stmt.setString(3, "%"+searchTitle+"%");
						stmt.setString(4, rating[0]);
						stmt.setString(5, rating[1]);
					} else if(rating.length == 1) {
						sql = "SELECT * FROM film WHERE length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, fromMinute);
						stmt.setInt(2, toMinute);
						stmt.setString(3, "%"+searchTitle+"%");
						stmt.setString(4, rating[0]);				
					}			
				} else { // 상영시간이 선택된 경우
					if(rating == null || rating.length==5) { // 등급을 하나도 설정 안했거나 모두 선택했을 때
						sql = "SELECT * FROM film WHERE release_year IN(?) AND length BETWEEN ? AND ? AND title LIKE ? ";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, releaseYear);
						stmt.setInt(2, fromMinute);
						stmt.setInt(3, toMinute);
						stmt.setString(4, "%"+searchTitle+"%");					
					} else if(rating.length == 4) {
						sql = "SELECT * FROM film WHERE release_year IN(?) AND length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?, ?, ?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, releaseYear);
						stmt.setInt(2, fromMinute);
						stmt.setInt(3, toMinute);
						stmt.setString(4, "%"+searchTitle+"%");
						stmt.setString(5, rating[0]);
						stmt.setString(6, rating[1]);
						stmt.setString(7, rating[2]);
						stmt.setString(8, rating[3]);
					} else if(rating.length == 3) {
						sql = "SELECT * FROM film WHERE release_year IN(?) AND length BETWEEN ? AND ? AND title LIKE ? AND rating IN (?, ?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, releaseYear);
						stmt.setInt(2, fromMinute);
						stmt.setInt(3, toMinute);
						stmt.setString(4, "%"+searchTitle+"%");
						stmt.setString(5, rating[0]);
						stmt.setString(6, rating[1]);
						stmt.setString(7, rating[2]);
					} else if(rating.length == 2) {
						sql = "SELECT * FROM film WHERE release_year IN(?) AND length BETWEEN ? AND ? AND (title LIKE ?) AND rating IN (?, ?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, releaseYear);
						stmt.setInt(2, fromMinute);
						stmt.setInt(3, toMinute);
						stmt.setString(4, "%"+searchTitle+"%");
						stmt.setString(5, rating[0]);
						stmt.setString(6, rating[1]);
					} else if(rating.length == 1) {
						sql = "SELECT * FROM film WHERE release_year IN(?) AND length BETWEEN ? AND ? AND title LIKE ? AND rating IN(?)";
						stmt = conn.prepareStatement(sql);
						stmt.setInt(1, releaseYear);
						stmt.setInt(2, fromMinute);
						stmt.setInt(3, toMinute);
						stmt.setString(4, "%"+searchTitle+"%");
						stmt.setString(5, rating[0]);
					}
				}
				
				}
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				Film f = new Film();
				f.setFilmId(rs.getInt("film_id"));
				f.setTitle(rs.getString("title"));
				f.setRating(rs.getString("rating"));
				f.setLength(rs.getInt("length"));
				f.setReleaseYear(rs.getString("release_year"));
				list.add(f);
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
	
	public ArrayList<Film> selectFilmListBySearch() {
		ArrayList<Film> list = new ArrayList<Film>();		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;		
		try {
			Class.forName("org.mariadb.jdbc.Driver");			
			String sql = "SELECT * FROM film";			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sakila","root","java1234");
			stmt = conn.prepareStatement(sql);			
			rs = stmt.executeQuery();			
			while(rs.next()) {
				Film film = new Film();				
				film.setFilmId(rs.getInt("film_id"));
				film.setTitle(rs.getString("title"));
				film.setDescription(rs.getString("description"));
				film.setReleaseYear(rs.getString("release_year"));
				film.setLanguageId(rs.getInt("language_id"));
				film.setOriginalLanguageId(rs.getInt("original_language_id"));
				film.setRentalDuration(rs.getInt("rental_duration"));
				film.setRentalRate(rs.getInt("rental_rate"));
				film.setLength(rs.getInt("length"));
				film.setReplacementCost(rs.getInt("replacement_cost"));
				film.setRating(rs.getString("rating"));
				film.setSpecialFeatures(rs.getString("special_features"));
				film.setLastUpdate(rs.getString("last_update"));
			
				list.add(film);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {				
				e.printStackTrace();
			}
		}
		return list;
	}
}
