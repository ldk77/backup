package bo;

import java.util.ArrayList;

import vo.Person;

public class MethodTest {
	//	매서드 
	//	리턴타입, 매개변수
	// public -> 접근제한자 static -> 일반제한자 int -> 리턴타입 add -> 매서드이름() {매서드코드; return 값}
	public static int add(int x, int y) {
		int r = x + y;
		return r;
	}
	
	// 1) void 리턴
	public void m1() {
		System.out.println("m1 test");
	}
	public int m2Int() {
		return 100;
	}
	public boolean m2Bool() {
		return 10>5;
	}
	//3 String 참조타입 리턴
	public String m3() {
		return "구디아카데미";
	}
	//4 배열 참조타입 리턴
	public int[] m4() {
		int[] arr = {2,5,7};
		return arr;
	}
	//5 ArrayList 참조타입 리턴
	public ArrayList<String> m5() {
		ArrayList<String> list = new ArrayList<String>();
		list.add("루피");
		list.add("조로");
		return list;
	}
 	// 6 플러스 데이터 참조타입 리턴
	public Person m6() {
		Person person = new Person();
		person.age = 22;
		person.name = "zoro";
		return person; // person 참조값이 리턴 
	}
	//7
	public Greet m7() {
	//	return new Greet();
		Greet g = new Greet();
		return g;
	}
}
