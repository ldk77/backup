<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	//text는 빈값을 입력하면 공백 
	//radio, checkbox 빈값이면 null값
	String name = request.getParameter("name");
	System.out.println(name);
	
	String gender = request.getParameter("gender");
	System.out.println(gender);
	
	String[] hobby = request.getParameterValues("hobby");
	System.out.println(hobby);
	
	if(hobby != null){
	for(String h : hobby) {
		System.out.println(h);
		}
	}
	
	String[] nickname = request.getParameterValues("nickname");
	System.out.println(nickname);
	
	for(String nick : nickname) {
		if(nick.equals("") != true){// 별명에 공백이 출력되는 버그 처리
			System.out.println(nick);		
		}
	}
	
%> 
 