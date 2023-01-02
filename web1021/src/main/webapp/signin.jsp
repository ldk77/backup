<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head></head>
    <body>
        <h2>회원가입</h2>
        <form action="./signForm.jsp"
		method="post">
        	<table border="1">
            	<!-- 아이디 -->
            	<tr>
                	<td>아이디</td>
                <td><input type="text"
                	name="id"
                	value="">                	
                </td>
            	</tr>
            	<!-- 비밀번호 -->
            	<tr>
                	<td>
                    	<div>비밀번호</div>
                    	<div>비밀번호확인</div>
                	</td>
                	<td>
                    	<div><input type="password"
                    	name="password"		
                    	value="">
                    	</div>
                    	<div><input type="password"></div>
                	</td>
            	</tr>
            	<!-- 이름 -->
            	<tr>
                	<td>이름</td>
                	<td><input type="text"
                		name="nick"
						value="">
						</td>
            	</tr>
            	<!-- 생일 -->
            	<tr>
                	<td>생일</td>
                	<td><input type="date"
                		name="birth"
						value=""></td>
            	</tr>
            	<!-- 나이 -->
            	<tr>
                	<td>나이</td>
                	<td><input type="number"
                		name="age"
                		value=""></td>
           	 	</tr>
           
            	<!-- 성별 -->
            	<tr>
                 	<td>성별</td>
                	<td>
                    	<input type="radio" value="남" name="gender">남                   
                    	<input type="radio" value="여" name="gender">여
                	</td>
            	</tr>
            	<!-- 메일주소 -->
            	<tr>
                	<td>메일</td>
                	<td>
                    	<span><input type="text"
                    			name="email"
								value=""></span>
                    	<span>@</span>
                    	<select name="email2" >
                        	<option>선택</option>
                        	<option>naver.com</option>
                        	<option>daum.net</option>
                        	<option>gmail.com</option>
                    	</select>
                	</td>
            	</tr>
            	<!-- 메모 -->
            	<tr>
                	<td>메모</td>
                	<td>
                    	<textarea cols="50" rows="5"
                    	name="memo"
						>
						</textarea>
                	</td>
            	</tr>
        	</table>
        	<button type="submit">회원가입</button>
        </form>
    </body>
</html>
