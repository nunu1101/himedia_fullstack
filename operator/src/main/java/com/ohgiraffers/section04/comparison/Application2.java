package com.ohgiraffers.section04.comparison;

public class Application2 {
    public static void main(String[] args) {

        /* 증감 연산자를 단항으로 사용하여 정수 a와 b를 출력 한 뒤
        * 증감 연산자를 다른 연산자와 사용하여 result 와 first/secondNum을 출력하시오 */

        /* ======= 출력 내용 =======
            a = 24
            b = 23
            result1 = 90
            firstNum = 31
            result2 = 93
            secondNum = 31
         */

        int a = 23;

        a++;
        System.out.println("a = " + a);

        int b = 24;
        b--;
        System.out.println("b = " + b);

        int firstNum = 30;

        int result1 = firstNum++ * 3;
        System.out.println("result1 = " + result1);
        System.out.println("firstNum = " + firstNum);

        int secondNum = 30;

        int result2 = ++secondNum * 3;
        System.out.println("result2 = " + result2);
        System.out.println("secondNum = " + secondNum);
    }
}
