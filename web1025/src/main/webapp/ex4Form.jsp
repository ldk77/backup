<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="./ex4Action.jsp" method="post">
      <div>
         이름 : <input type="text" name="name">
      </div>
      <div>
         성별 : 
         <input type="radio" name="gender" value="M">남
         <input type="radio" name="gender" value="F">여
      </div>
      <div>
         취미 : 
         <input type="checkbox" name="hobby" value="야구">야구
         <input type="checkbox" name="hobby" value="축구">축구
         <input type="checkbox" name="hobby" value="클라이밍">클라이밍
         <input type="checkbox" name="hobby" value="스키">스키
      </div>
      <div>
         별명 : 
         <input type="text" name="nickname">
         <input type="text" name="nickname">
      </div>
      <button type="submit">전송</button>
   </form>
</body>
</html>