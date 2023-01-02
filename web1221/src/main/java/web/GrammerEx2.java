package web;

public class GrammerEx2 {
	public static void main(String[] args) {
		int x[][] = { {3,2,3}, {5,9,8} };
		// 2행 3열
		// 3 2 3
		// 5 9 8
		int y[][] = { {4,7}, {9,3}, {8,1} };
		// 2열 3행
		// 4 7
		// 9 3
		// 8 1
		int z[][] = Matrix.multiply(x,y);
		
		Matrix.print(z);		
	}
}

class Matrix {
	public static int[][] multiply(int[][] m1, int[][] m2){
		int m1Rows = m1.length; // 2 
		int m1Cols = m1[0].length; // 3 
		int m2Rows = m2.length; // 3 
		int m2Cols = m2[0].length; // 2

		if(m1Cols != m2Rows) {
			throw new IllegalArgumentException();
		}
		
		int [][] result = new int [m1Rows][m2Cols];
		// [2][2] 2행2열
		for(int i=0; i<m1Rows; i++) { //0,1 
			for(int j=0; j<m2Cols; j++) {//0,1
				for(int k=0; k<m1Cols; k++) { //0,1,2
					result[i][j] += m1[i][k] * m2[k][j];
					// result[0][0] += m1[0][0]*m2[0][0]; 3*4= 12
					// result[0][0] += m1[0][1]*m2[1][0]; 2*9= 18
					// result[0][0] += m1[0][2]*m2[2][0]; 3*8= 24
					// 최종 result[0][0] = (12+18+24)-> 54
				
				}
			}
		}
		return result;
		// .... 최종결과 54 30
		//			  165 70	
	}
	
	public static void print(int[][] a) {
		//행렬 결과 출력
		int rows = a.length; 
		int cols = a[0].length; 
		for(int i=0; i<rows; i++) {
			System.out.print("{");
			for(int j=0; j<cols; j++) {
				System.out.print(a[i][j]+",");
			}
			System.out.println("}");
		}
	}
}