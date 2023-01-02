<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   // session 유효성 검증 코드 후 필요하다면 redirect!
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
</head>
<body>
   <h1>로그인</h1>
   <form action="<%=request.getContextPath()%>/loginAction.jsp">
      <table border="1">
         <tr>
            <td>empNo</td>
            <td><input type="text" name="empNo"></td>
         </tr>
         <tr>
            <td>firstName</td>
            <td><input type="text" name="firstName"></td>
         </tr>
         <tr>
            <td>lastName</td>
            <td><input type="text" name="lastName"></td>
         </tr>
      </table>
      <button type="submit">로그인</button>
   </form>
</body>
</html>