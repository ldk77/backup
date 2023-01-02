<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertPriateForm</title>
</head>
<style> 
	h2,div, table, tr, td {text-align : center;}	
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<body>
	<div class="container mw-100 p-5 my-5 bg-dark text-white">
		<h2>ONEPIECE</h2>
		
	<br>
	<br>
	<br>
	<form action="<%=request.getContextPath()%>/insertPirateAction.jsp">
	   <table class="table table-bordered table-dark ">
         <tr>
            <td>PNAME</td>
            <td>
               <input type="text" name="pname">
            </td>
         </tr>
         <tr>
            <td>PAGE</td>
            <td>
            	<input type="number" name="page">
            </td>
         </tr>
         <tr>
            <td>PFRUIT</td>
            <td>
          	<input type = "radio" value ="Y" name="pfruit"> <span>&#128121;</span>
           	<input type = "radio" value ="N" name="pfruit"> <span>&#10060;</span>
            </td>
         </tr>         
          <tr>
            <td>PHOME</td>
            <td>
               <input type="text" name="phome">
            </td>
         </tr>
         <tr>
            <td>PGENDER</td>
            <td>
            <input type = "radio" value ="남" name="pgender"> <span>&#128104;</span>
            <input type = "radio" value ="여" name="pgender"> <span>&#x1F469;</span>
            </td>
         </tr>         
         <tr>
            <td colspan="2">
               <button type="submit" class="btn btn-danger">CREATE</button>
            </td>
         </tr>
      </table>
   </form>
</body>
</html>