package good;

// 정보은닉 -> this -> 캡슐화
public class Member {
	public int age;
	public String name;
	
	// 매서드 정보은닉 -> public에서 private
	private String getCountry() {
		String result = null;
		if(this.name.equals("홍길동")) {
			result = "KO";
		}else if(this.name.equals("루피")) {
			result = "JP";
		}else {
			result = "";
		}
		return result;
	}
	
	// 은닉된 매서드를 this키워드를 호출 -> 캡술화 
	public String getAgeAndNameAndCountry() {
		return this.age + this.name + this.getCountry(); 
		// this가 가르키는(바인딩) 것은 getAgeAndName()을 호출하는 객체 
		// this 메서드가 동일한 객체내 다른매서드나 필드와 통신할때 사용 
	}	
	
	public static void main(String[] args) {
		Member m1 = new Member();
		m1.age = 20;
		m1.name = "홍길동";
		String s1 = m1.getAgeAndNameAndCountry(); // m-> this에 바인딩 
		System.out.println(s1);
		//국적코드만 출력가능 
		System.out.println(m1.getCountry());
		
		Member m2 = new Member();
		m2.age = 21;
		m2.name = "루피";
		String s2 = m2.getAgeAndNameAndCountry(); // m-> this에 바인딩 
		System.out.println(s2);

	}
	
}
