package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ELTest")
public class ELTest extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // 모델값
      int no = 7;
      String name = "goodee";
      Member member = new Member(20, "amdin");
      String[] arr = {"루피", "조로", "상디"};
      ArrayList<Member> list = new ArrayList<Member>();
      list.add(new Member(17, "우솦"));
      list.add(new Member(22, "로빈"));
      
      // 저장 영역(속성) 3군데
      request.getServletContext().setAttribute("contextNo", no); // jsp apllication.setAttribute()
      request.getSession().setAttribute("sessionNo", no); // jsp session.setAttribute()
      request.setAttribute("requestNo", no); // request.setAttribute();
      
      // 다양한 자료형을 속성영역에 저장(속성은 Map타입)
      request.setAttribute("name", name); // 문자열
      request.setAttribute("member", member); // 객체
      request.setAttribute("arr", arr); // 배열
      request.setAttribute("list", list); // 리스트
      
      // View
      request.getRequestDispatcher("/WEB-INF/view/elTestView.jsp").forward(request, response);
   }
}