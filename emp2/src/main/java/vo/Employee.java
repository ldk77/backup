package vo;
// 앞으로 전부 private 그다음 세터게터 퍼블릭
//캡슐화 단계 4가지 : 1. public(100% open) > 2.protected(같은 패키지와 상속관계오픈) > 3.default(같은 패키지) > 4.private(this open) //this는 나만아는것
// protected, deafult단계 캡슐화는 입문자는 사용안함
public class Employee {
	private int empNo;
	private String birthDate; // private 정보은닉  
	private String firstName;
	private String lastName;
	private String gender;	
	private String hireDate;
	public int getEmpNo() {
		return empNo;
	}
	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getHireDate() {
		return hireDate;
	}
	public void setHireDate(String hireDate) {
		this.hireDate = hireDate;
	}
	
	
	// 우클릭 -> Source - > 제너러 게터 , 세터로 자동완성가능
}

/*캡슐화(읽기)
public String getBirthDate() {//get 매서드
	return this.birthDate;
}
//캡슐화(쓰기) void는 특별하게 리턴할게없을때
public void setBirthDate(String birthDate) { // set 매서드 
	this.birthDate = birthDate;
}
*/