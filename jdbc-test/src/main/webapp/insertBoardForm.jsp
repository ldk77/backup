<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertBoardForm</title>
</head>
<body>
   <h2>ADD BOARD</h2>
   <form action="<%=request.getContextPath()%>/insertBoardAction.jsp">
      <table>
         <tr>
            <td>CATEGORY</td>
            <td>
               <input type="text" name="category">
            </td>
         </tr>
         <tr>
            <td>TITLE</td>
            <td><input type="text" name="title"></td>
         </tr>
         <tr>
            <td>CONTENT</td>
            <td>
               <textarea rows="4" cols="50" name="content"></textarea>
            </td>
         </tr>
         <tr>
            <td colspan="2">
               <button type="submit">ADD</button>
            </td>
         </tr>
      </table>
   </form>
</body>
</html>