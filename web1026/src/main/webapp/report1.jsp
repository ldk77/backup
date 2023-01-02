<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
for(int i=0; i<10;i++){ // 총 10줄
    for(int j=0; j<=9; j++){
        if(j==i || j==(9-i)) { // i와 j가 같을때 or j가 9-i 랑 같을떄 *출력
            System.out.print("*");
        }else { // 그외에 공백출력
            System.out.print(" ");
        }
    }  
    System.out.println(""); // 1사이클이후 줄바꿈용도
}
%>
