package good;

import good.Execute.InClzStatic;

public class ExcuteMain {
	
	public static void main(String[] ars) {
		// static 요소는 클래스이름으로 접근가능 -> 클래스 맴버 
		Execute.hello();
		Execute.num = 777;
		System.out.println(Execute.num);
		// static inner class 
		InClzStatic ics = new InClzStatic();
		ics.y = 20; 
		System.out.println(ics.y);
		//일반 멤버는 객체 이름으로 접근 -> 객체 맴버 
		Execute ex = new Execute();
		ex.bye();
		ex.id = 4;
		System.out.println(ex.id);
		System.out.println(ex.num); 
		// 객체이름으로 static멤버 접근가으 -> ex.num보다는 Execute.num으로 접근
		
		Execute.InClz ic = ex.new InClz();
		ic.x = 9;
		System.out.println(ic.x);
	}
}
