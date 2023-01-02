package js1220;
import java.util.*;
public class Q06 {
	public static void main(String[] args) {
		//Set은 순서를 유지하지 않는 데이터의 집합이다. 데이터의 중복이 허용되지 않고 HashSet, TreeSet 등이 있다.
		Set<Singer> set = new HashSet<>();
		Singer singer;
		
		singer = new Singer();
		
		// 이름,나이 입력
		singer.setName("admin");
		singer.setAge(30);
		// singer에 저장
		set.add(singer);
		//Singer singer2 = new Singer();
		singer.setName("guest");
		singer.setAge(32);
		set.add(singer);
		//이트레이트 패턴 : 순서가 없는 자료구조 일시적을 순서가 있는것처럼 
		Iterator<Singer> it = set.iterator(); 
		while(it.hasNext()) {
			System.out.println(it.next().getName());
		}
		//next()메소드는 실제로 Iterator가 자신이 가리키는 데이터저장소에서 현재위치를 순차적으로 하나 증가해서 이동하는 것을 말합니다.
	}
}

class Singer{
	// Singer 클래스 생성 private이므로 게터/세터 설정하여 입력,출력가능
	private String name;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	} 	
}