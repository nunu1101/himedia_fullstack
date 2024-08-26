package com.ohgiraffers.practice.basic;

import java.util.Enumeration;

public class Application3 {
    public static void main(String[] args) {

        /* 1부터 입력받은 정수까지의 짝수의 합을 구하세요
         *
         * -- 입력 예시 --
         * 정수를 입력하세요 : 10
         *
         * -- 출력 예시 --
         * 1부터 10까지 짝수의 합 : 30
         * */

//        A3 a = new A3();
//        a.practiceApplication3();
        int[] arr = new int[10];

        for(int i = 10; i <= arr.length; i--){
            System.out.print(i + " ");
            if (i ==1){
                break;
            }
//            System.out.print(" ");
        }
    }
}
