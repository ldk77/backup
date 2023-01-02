<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	/*
		정렬 알고리즘
		1) 버블
		인접한 두개를 비교...
		2) 선택
		처음 or 끝 위치고정 후 비교...
	*/
	
	int[] arr = {7, 3, 5, 1, 9, 8};
	
	for(int i=0; i<arr.length-1; i++){		
		for(int j=i+1; j<arr.length; j++){
			int temp = arr[i];
			if(arr[i] > arr[j]){
				arr[i] = arr[j];
				arr[j] = temp;
			}
		}
	}	
	// 디버깅 
	for(int n : arr) {
		System.out.print(n+" ");
	}		
%>

