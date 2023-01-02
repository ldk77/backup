package js1220;

public class Q02 {
	// 정수형 arNum[0]~arNum[4]배열 선언
	public static int[] arNum = {7,9,1,4,5};
	
	public static void main(String[] args) {
		int out = 0;
		int in = 0;
		// 메소드 호출 q02타입의 변수 t
		Q02 t = new Q02();
		
		// 버블정렬, 선택정렬, 삽입정렬, 쉘정렬, 합병정렬, 힙정렬, 퀵정렬
		for(out = arNum.length-1; out>0; out--) {
			//반복문 배열 arNum[0]~[4] 5번 반복
			for(in=0;in<arNum.length-1;in++) {// 무한루프 for문의 14579라는 결과가 출력되록 for문의 조건을수정
				if(arNum[in]> arNum[in+1]) {
					//이전 배열값이 다음배열값보다 카드면 순서 변경-> 뒤로갈수록 커짐
					t.swap(in, in+1);
				}
			}
		}
		t.display();
	}
	// 배열 순서바꾸기 위한 매소드 
	public void swap(int one, int two) {
		//두개비교값중 작은값을 temp 에 저장
		int temp = arNum[one];
		//arNum[in] arNum[in+1]값으로 변경 
		arNum[one] = arNum[two];
		//arNum[in+1]에 저장해두었던 비교시 높았던 값으로 바꿈,배열 순서 바꾸기 끝
		arNum[two] = temp;
	}
	
	public void display() {
		//반복문. index를 0~4까지
		for(int index = 0; index <arNum.length; index++) {
			//arNum[0]~[4]출력
			System.out.print(arNum[index]);
		}
	}
}
