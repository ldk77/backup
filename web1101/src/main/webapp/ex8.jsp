<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.Person" %>
<%
	// 선택정렬 
	Person[] db = new Person[5];
	db[0] = new Person();
	db[0].age = 28;
	db[0].name = "김도희"; 
	
	db[1] = new Person();
	db[1].age = 26;
	db[1].name = "조영우";
	
	db[2] = new Person();
	db[2].age = 29;
	db[2].name = "이효민";
	
	db[3] = new Person();
	db[3].age = 21;
	db[3].name = "최은서";
	
	db[4] = new Person();
	db[4].age = 27;
	db[4].name = "황현정";
	
	
	for(int i=0; i<db.length-1; i++){		
		for(int j=i+1; j<db.length; j++){
			int temp = db[i].age;
			String sortName = db[i].name; // 이름도 같이 따라가려면
			if(db[i].age > db[j].age){
				db[i].age = db[j].age;
				db[j].age = temp; 
				
				//이름도 같이따라가게 정렬
				db[i].name = db[j].name;
				db[j].name = sortName;
			}
		}
	}

	// 디버깅 
		for(Person p : db){
			System.out.println(p.age+" "+p.name);
		}
		

%>
