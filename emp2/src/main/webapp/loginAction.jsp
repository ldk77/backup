<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="vo.*"%>
<%
	//1) controller
	//session 유효성 검증 코드 후 필요하다면 redirect
	//request 유효성 검증
	int empNo = Integer.parseInt(request.getParameter("empNo"));
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	
	Employee employee = new Employee();
	employee.setEmpNo(empNo);
	employee.setFirstName(firstName);
	employee.setLastName(lastName);

	//2) model
	String driver = "org.mariadb.jdbc.Driver";
	String dbUrl = "jdbc:mariadb://127.0.0.1:3306/employees";
	String dbUser = "root";
	String dbPw = "java1234";
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPw);
	
	String sql = "SELECT emp_no empNo,last_name lastName,first_name firstName FROM employees WHERE emp_no = ? AND first_name = ? AND last_name=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, employee.getEmpNo());
	stmt.setString(2, employee.getFirstName());
	stmt.setString(3, employee.getLastName());
	
	ResultSet rs = stmt.executeQuery();
	String targetUrl = "/loginFrom.jsp";
	if(rs.next()){
		//로그인 성공! 
		Employee loginEmp = new Employee();
		loginEmp.setEmpNo(rs.getInt("empNo"));
		loginEmp.setLastName(rs.getString("lastName"));
		session.setAttribute("loginEmp", loginEmp); // 키 : "loginEmp", 값 : Object object = loginEmp;
		targetUrl = "/empList.jsp";
	}
	rs.close();
	stmt.close();
	conn.close();
	response.sendRedirect(request.getContextPath()+targetUrl);


%>