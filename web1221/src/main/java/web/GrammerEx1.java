package web;

public class GrammerEx1 {
	public static void main(String[] args) {
		final int SUN = 1;
		final int MON = 2;
		final int TUE = 3;
		final int WED = 4;
		final int THU = 5;
		final int FRI = 6;
		final int SAT = 7;
		
		int start = 1;
		int end = 31;
		int startWeek = THU;
		System.out.println("SU MO TU WE TH FR SA");
		
		for (int i=1; i < startWeek; i++) {
			// startWeek =  5
			System.out.print("   "); 
		} // 공백 4번 출력 1~4

		// i =1, n= 5 부터 시작 i 31까지 실행 각 1씩증가
		for (int i=start, n=startWeek; i <= end; i++, n++) {
			// 삼항연산자 조건문? true: false
			// i<10작을떄 true이면 "0"+i 거짓이면 ""+i
			System.out.print((i<10) ? " 0" + i: " " +i);			
			if(n % 7 == 0) {
				System.out.println();				
				// 7로 나눈 나머지 값이 0이면 줄바꿈
			}
		}
	}
}
