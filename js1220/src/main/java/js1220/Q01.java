package js1220;

import java.io.*;


// txt 파일의 내용이 정상적으로 출력되도록
// 오류발생 1)파일경로 2)한글깨짐현상 
public class Q01 {
	private static final String FILENAME = "C:\\test\\q01.txt"; 
	private static FileInputStream fis = null;
	private static InputStreamReader reader = null;
	private static BufferedReader in = null;

	public static void main(String[] args) {
		try { 
			fis = new FileInputStream(FILENAME); // 주어진 이름이 가리키는 파일을 바이트스트림으로 읽기위한 객체를 생성
			reader = new InputStreamReader(fis,"UTF-8"); //inputStreamReader는 byte 대신 char 형태로 읽을 수 있다
			in = new BufferedReader(reader); //BufferedReader는 \n과 같이 새로운 줄이 생기기 전(엔터 입력 전)까지 또는 내용이 너무 길어서 Stream이 꽉차서 null을 반환하기 전까지 모든 값을 저장
			
			// 데이터를 바이트로 읽어오기 위한 변수 선언
			int data = 0;
			
			do {
				System.out.print((char)data);
			} while ((data = in.read()) != -1);
		} catch (FileNotFoundException e) {
			System.out.println("FileNotFoundException occured");
		} catch (IOException e) {
			System.out.println("IOException occured");
		} finally {
			try {
				in.close(); 
			} catch (IOException e) {
				System.out.println("fis.close(); execption occured");
			}
		}
	}
}

