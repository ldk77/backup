package js1220;

//다음코드를 실행시 예상되는 출력결과는?
public class Q05 {
	public static void main(String[] args) {
		// 다차원 배열 세로 길이가 3인 선언
		int ar[][] = new int[3][];
		//배열값 value 선언 
		int value = 0;		
		ar[0]=new int[2];
		ar[1]=new int[3];
		ar[2]=new int[4];
		//0일때 2, 1일때 3, 2일때 4
		for(int out = 0 ;out < ar.length; out++) {
				//ar[0][i],ar[1][i],ar[2][i]...
			for(int in = 0 ; in < ar[out].length; in++) {
				//배열에 값입력
				// ar[0][i]일때 2개 
				// ar[0][0],ar[0][1]
				// ar[1][i]일때 3개
				// ar[1][0],ar[1][1],ar[1][2]
				// ar[2][i]일때 4개 
				// ar[2][0]....
				ar[out][in] = ++value;
				// ar[0][0] = 1 ,ar[0][1] = 2,ar[1][0] =3 ...   
			}
		}	
		try {			
			for(int out = 0; out < ar.length; out++) {				
				for(int in = 0; in<ar[out].length;in++) {
					//행과 열을 반복하면서 출력
					//[0][0]의 값, [0][1]의 값
					//[1][0]의 값, [1][1]의 값, [1][2]의 값
					//[2][0]의 값, [2][1]의 값, [2][2]의 값, [2][3]의 값
					System.out.println(ar[out][in]);
				}			
			}		
		}catch(ArrayIndexOutOfBoundsException e) {
			//오류발생시 출력
			System.out.println("ArrayIndexOutOfBoundsException 발생");
		}
	}
}