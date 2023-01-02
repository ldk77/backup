package ex2;

import ex2.*;

public class MainTest2 {
	// 하나의 파일안에는 여러개의 클래스는오지만 public 클래스는 1나만옴
	public static void main(String[] args) {
		Person p = new Person(); 
		
		System.out.println(p.name); // null
		System.out.println(p.age); //0
		System.out.println(p.gender); // null
		
		p.name = "김도희";
		p.age = 21;
		p.gender = "여";
		
		System.out.println(p.name); // 김도희
		System.out.println(p.age); // 21
		System.out.println(p.gender); //여
	}	

}


