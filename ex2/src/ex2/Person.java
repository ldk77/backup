package ex2;

// 1) 클라스의 첫번째 역할 데이터 타입
public class Person {
	public String name;
	public int age;
	public String gender;
	
	
	// 자동으로 만들어지는 생성자 매서드	
	public Person() {
		this.name = null;
		this.age = 0;
		this.gender = null;
	}
	// 함수의 매개변수가 다르면 생성가능 -> 오버로딩
	public Person(String n, int a, String g) {
		this.name = n;
		this.age = a;
		this.gender = g;
	}
}
