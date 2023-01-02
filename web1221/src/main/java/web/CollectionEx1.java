package web;
import java.util.*;

public class CollectionEx1 {
	public static void main(String[] args) {
		// Set과 List는 데이터의 그룹(Collection)이다.
		//Set은 순서를 유지하지 않는 데이터 집합이다. 데이터의 중복을 허용하지 않고, HashSet, TreeSet 등이등이 있다.
		String[] arr = {"1","2","9","7","4","6","1","7","0"};
		Set set = new HashSet();
		for(String s : arr) {
			set.add(s);
		};
		//List는 순서를 유지하는 데이터의 집합이다. 데이터의 중복이 허용되고, LinkedList, ArrayList 등이등이 있다.
		List list = new LinkedList(set);
		Collections.sort(list);
		//sort() = 오름차순 와 reverse() = 내림차순, 내림차순 숫자 > 대문자 > 소문자 > 한글순
		//일반적으로 기준을 정하지 않고 그냥 Collections.sort(list)를 하면 오름차순으로 정렬
		Iterator it =list.iterator();
		//Iterator는 이런 집합체로부터 정보를 얻어낸다고 볼 수 있다 (다형성)
		//hasNext() : 읽어올 요소가 남아있는지 확인하는 메소드이다. 요소가 있으면 true, 없으면 false
		while(it.hasNext()) {
			System.out.print(it.next());
		}
	}
}
