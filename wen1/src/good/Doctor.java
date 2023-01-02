package good;

public class Doctor { //Person보다는 구체화 
	// 2) 포함(has) 관계 
	public Person person; 
	
	public String major;
	public void dress() {
		System.out.println("치료하다");
	}
	
	public static void main(String[] args) {
		Doctor d = new Doctor();
		d.person = new Person(); 
		
		//Person 
		d.person.name = "홍길동";
		d.person.eat(); 
		
		// Doctor 
		d.major = "치과";
		d.dress();
	}
}
// 단점 : 객체지향문법을 사용할 수 없다.
// 장점 :