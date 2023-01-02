package good;

public class Police { // Person보다는 구체화
	// Person이 가지는 건 다 가져야 한다 
	// 1) Copy (복사 붙여넣기)
	public String name;
	public void eat() {
		System.out.println("먹다");
	}
	public int age;// 단점 Person에 수정되면 Police도 수정해야한다 
	
	// Police안의 맴버 
	public String grade;
	public void help() {
		System.out.println("좋다");
	}
	
	public static void main(String[] ars) {
		Police p = new Police();
		p.name = "홍길동";
		p.eat();
		
		// Police 
		p.grade = "경장";
		p.help();
	}
}
