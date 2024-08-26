package com.ohgiraffers.section01.conditional;

import java.util.Scanner;

public class B_ifElse {

    public void testSimpleIfElseStatement() {

        /* 수업목표. if-else문 단독 사용에 대한 흐름을 이해하고 적용할 수 있다. */
        /* 필기.
         *  [if-else문 표현식]
         *  if(조건식) {
         *       조건식이 true일 때 실행할 명령문;
         *  } else {
         *      조건식이 false일 때 실행할 명령문;
         *  }
         */

        /* 필기.
         *  정수 한 개를 입력 받아 그 수가 홀수이면 "입력하신 숫자는 홀수입니다." 라고 출력하고,
         *  홀수가 아니면 "입력하신 숫자는 짝수입니다." 라고 출력하는 프로그램을 작성해보자
         *  단, 조건과 상관없이 프로그램이 종료될 때 "프로그램을 종료합니다." 라고 출력되도록 한다.
         */

        Scanner sc = new Scanner(System.in);

        System.out.println("정수를 한 개 입력해주세요 : ");
        int num = sc.nextInt();

        // 짝수인지 조건 확인
        if (num % 2 != 0) {
            // 조건식 참일 때 출력
            System.out.println("입력하신 숫자는 홀수입니다.");
        } else {
            // 조건식 거짓일 때 출력
            System.out.println("입력하신 숫자는 짝수입니다.");
        }

        System.out.println("프로그램을 종료합니다.");
    }

    public void testNestedIfElseStatment(){

        /* 필기.
         *  숫자를 하나 입력 받아 양수이면 "입력하신 숫자는 양수입니다." 출력하고,
         *  음수이면 "입력하신 숫자는 음수입니다." 출력
         *  단, 0이면 "0입니다." 라고 출력
         *  조건과 상관 없이 프로그램이 종료될 때 "프로그램을 종료합니다." 라고 출력되도록 한다.
         */

        Scanner sc = new Scanner(System.in);

        System.out.println("정수를 한 개 입력해주세요 : ");
        int num = sc.nextInt();

        // 0인지 아닌지 조건 확인
        if (num != 0 ){
            // 0 인 경우에 다시 한 번 조건을 비교
            if(num > 0) {
                System.out.println("입력하신 숫자는 양수입니다.");
            } else {
                System.out.println(" 입력하신 숫자는 음수입니다.");
            }
        } else {
            System.out.println("0입니다.");
        }
            System.out.println("프로그램을 종료합니다.");
    }

}
