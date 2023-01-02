package js1220;
// 캡슐화 - Player클래스의 장점을 캡슐화 관점에서 설명하시오
/*
 * 캡슐화의 장점 정보은닉,객체 모듈화, 유지보수 
 * 객체에 직접접근을 막고 객체가 제공하는 메소드를 통해서만 변경가능 
 * */
public class Q04 {
	public static void main(String[] args) {
		Player luffy = new Player();
		Player zoro = new Player();
		Player nami = new Player();
		
		System.out.println(luffy.getId());
		System.out.println(zoro.getId());
		System.out.println(nami.getId());
	}
}

class Player {
	private static int nextId = 1; // 1) wht private? static? private 는 현재클래스 밖에서 사용불가능 
									// static은 객체 생성 없이 값참조가능 
	private int id; //2) why private? private 정보은닉 및 위와동일 
	public Player() { //3) why public? public은 외부에서 사용가능 Player가 생성될때마다 nextId값 증가 
		this.id = Player.nextId++;
	}
	protected int getId() { //4) why? protected? 해당클래스 나 자식클래스에서 접근가능 
		return id;
	}
	private void setId(int id) { // 5) why private? 해당클래스에서만 id입력가능 
		this.id = id;
	}
}


	
