package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/today")
public class TodayServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		Calendar today = Calendar.getInstance();
		PrintWriter out = response.getWriter();
		out.print("<!DOCTYPE html><html><head>");
		out.print("<meta charset=\"UTF-8\"><title>Insert title here</title>");
		out.print("</head><body><div>");
		out.print(today.get(Calendar.MONTH)+1+"월");
		out.print(today.get(Calendar.DATE)+"일 서블릿");
		out.print("</div></body></html>");
	} 
}
