package good;

public class Fireman extends Person { // Person보다는 구체화  
	// 상위(is) 관계 -> is -> 다형성 -> 소방관은 모두 사람이다(반대x)

	// Person
	// extends Person 
	
	// Fireman 
	public String grade;
	public  void putOut() {
		System.out.println("불을 끄다");
	}
	
	public static void main(String[] args) {
		Fireman f= new Fireman();
		f.name = "홍길동"; 
		f.eat(); 
		f.age = 29;
		
		f.grade = "소방장";
		f.putOut();
	}
	//단점: 대부분의 객체지향언어가 다중 상속이 까다롭다(자바는 다중상속이 안된다) 
	//장점: 객체언어가 아닌 언어에서도 사용할 수 있다.
}
