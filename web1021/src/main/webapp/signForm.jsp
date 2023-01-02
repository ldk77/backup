<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head></head>
    <body>
  
        <h2>회원가입</h2>
        <table border="1">
            <!-- 아이디 -->
            <tr>
                <td>아이디</td>
                <td>
                   <%	request.setCharacterEncoding("UTF-8");
               			 String id = request.getParameter("id");	%>
					<div><%=id%></div>
				</td>
               
            </tr>
            <!-- 비밀번호 -->
            <tr>
                <td>
                    <div>비밀번호</div>
                    <div>비밀번호확인</div>
                </td>
                <td>
                       <%	request.setCharacterEncoding("UTF-8");
                			String password = request.getParameter("password");	%>
				<div><%=password%></div>
				<div><%=password%></div>
                </td>
            </tr>
            <!-- 이름 -->
            <tr>
                <td>이름</td>
                <td>	<%	request.setCharacterEncoding("UTF-8");
							String nick = request.getParameter("nick");
						%>
						<div><%=nick %></div>
                </td>
            </tr>
            <!-- 생일 -->
            <tr>
                <td>생일</td>
                <td><%
						request.setCharacterEncoding("UTF-8");
						String birth = request.getParameter("birth");
					%>
					<div><%=birth %></div>
				</td>
					
            </tr>
            <!-- 나이 -->
            <tr>
                <td>나이</td>
                <td>	<%
							request.setCharacterEncoding("UTF-8");
							String age = request.getParameter("age");
						%>
						<div><%=age %></div></td>
         
            <!-- 취미 -->
            <tr>
                	<td>성별</td>
                	<td>
                    	<%	request.setCharacterEncoding("UTF-8");
							String gender = request.getParameter("gender");
						%>
						<div><%=gender %></div>
                	</td>
            </tr>
            <!-- 메일주소 -->
            <tr>
                <td>메일</td>
                <td>
                    	<%	request.setCharacterEncoding("UTF-8");
							String email = request.getParameter("email");
						%>
						<div><%=email %></div>
                    <span>@</span>
                   		 <%	request.setCharacterEncoding("UTF-8");
							String email2 = request.getParameter("email2");
						%>
						<div><%=email2 %></div>
                </td>
            </tr>
            <!-- 메모 -->
            <tr>
                <td>메모</td>
                <td>
                    <textarea cols="50" rows="5">
                    	<%	request.setCharacterEncoding("UTF-8");
							String memo = request.getParameter("memo");
						%>
						<%=memo %>
                    </textarea>
                </td>
            </tr>
        </table>        
    </body>
</html>
