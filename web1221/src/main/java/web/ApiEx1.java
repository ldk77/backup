package web;
import java.util.*;

public class ApiEx1 {
	public static void main(String[] args) {
		//int : 자료형 산술 연산 가능함, null로 초기화 불가 
		//integer : 래퍼클래스 ubboxing 하지않을시 산술연산 불가능 , null값 처리가능
		Integer i1 = new Integer(1);
		Integer i2 = new Integer(1);
		
		String s1 = new String("one");
		String s2 = new String("one");
		
		// String은 불변의 속성으로 한번 생성되면 할당된 공간이 변하지않음
		// Stringbuffer은 가변성을가지는 클래스 객체의 공간이 부족해지는 경우 버퍼의 크기를 유연하게 늘려줌
		StringBuffer sf1 = new StringBuffer("one");
		StringBuffer sf2 = new StringBuffer("one");
		
		Date d1 = new Date(); 
		Date d2 = new GregorianCalendar(2011, 7, 15).getTime();
		Date d3 = new GregorianCalendar(2011, 7, 15).getTime();
		Date d4 = new Date();
		
		System.out.println(i1.equals(i2)); // true
		System.out.println(s1.equals(s2)); // true
		System.out.println(sf1.equals(sf2)); // false 
		System.out.println(d2.equals(d3)); // true 
		System.out.println(d1.equals(d4)); // false 
		
	}
}
