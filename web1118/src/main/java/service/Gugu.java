package service;

import java.util.ArrayList;

public class Gugu {
	public void secondDan() {
		for(int i=1; i<10; i++){
	 		System.out.println(2 + "*" + i + "=" + 2*i );
	 	}
	}
	  
	public String secondDanResult() {
		      String result = "";
		      for(int i=1; i<10; i++) {
		         result = result + 2 + "*" + i + "=" + (2*i) +"<br>";
		         /*
		          2 * 1 = 2 <br> 2 * 2 = 4 <br>
		          */
		      }
		      return result;
		}
		
		//입력값 없다
		//반환값(ArrayList<String> 타입)있다
		public ArrayList<String> secondDanRseultList(){
			ArrayList<String> resultList = new ArrayList<String>();
			for(int i=1; i<10; i++) {				
		         resultList.add(2 + "*" + i + "=" + (2*i));
		         /*
		          2 * 1 = 2 <br> 2 * 2 = 4 <br>
		          */
		      }
		      return resultList;
		}
		//입력값이 있다
		//반환값(ArrayList<String> 타입) 있다.
		public ArrayList<String> secondDanRseultList(int dan){ // 매서드 이름은 같고 매개변수가 다르다 : 매서드 오버로드
			if(dan<0) {
				return null;
			}
			ArrayList<String> resultList = new ArrayList<String>();
			for(int i=1; i<10; i++) {				
		         resultList.add(dan + "*" + i + "=" + (dan*i));
		         /*
		          2 * 1 = 2 <br> 2 * 2 = 4 <br>
		          */
		      }
		      return resultList;
		}
}
