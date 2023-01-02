<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>snForm.jsp</title>
</head>
<body>
   <h1>주민번호</h1>
   <form method="post" action="./snAction.jsp">
      <div>
         <input type="text" name="sn1">
         -
         <input type="text" name="sn2">
      </div>
      <div>
         <button type="submit">주민번호분석</button>
      </div>
   </form>
</body>
</html>