package com.ohgiraffers.practice.array;

public class Application {
    public static void main(String[] args) {
        int[] grade1 = new int[3]; // 길이가 3인 int형 배열의 선언 및 생성
        int[] grade2 = new int[3]; // 길이가 3인 int형 배열의 선언 및 생성

        grade1[0] = 85; //인덱스를 이용한 배열의 초기화
        grade1[1] = 65;
        grade1[2] = 90;

        grade2[0] = 85; // 배열의 길이보다 적은 수의 배열 요소만 초기화

        for (int i = 0; i < grade1.length; i++){
            System.out.print(grade1[i] + " "); // 인덱스를 이용한 배열로의 접근
        }
        System.out.println();
        for (int i = 0; i < grade2.length; i++){
            System.out.print(grade2[i] + " "); // 인덱스를 이용한 배열로의 접근
        }
    }
}
