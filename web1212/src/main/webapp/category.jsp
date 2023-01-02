<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "service.*" %>
<%
   // Controller --> Servlet Class
   String category = request.getParameter("category");
   // category = "지출";
   
   CashService cashService = new CashService();
   ArrayList<HashMap<String, Object>> list = cashService.getCashListByCategory(category);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- View : *.jsp -->
   <a href="<%=request.getContextPath()%>/index.jsp">인덱스</a>
   <h1>년도별 <%=category%>합계 목록</h1>
   <table border="1">
      <tr>
         <th>년</th>
         <th>합계</th>
      </tr>
      <%
         for(HashMap<String, Object> m : list) {
      %>
            <tr>
               <td><%=m.get("year")%></td>
               <td>
                  
                     <%
                        if(category.equals("수입")) {
                     %>
                           <span style="color:blue;"> +
                     <%      
                        } else {
                     %>
                           <span style="color:red;"> -
                     <%      
                        }
                     %>
                     <%=m.get("price")%></span>
               </td>
            </tr>
      <%      
         }
      %>
   </table>
</body>
</html>