package com.ohgiraffers.section01.method;

public class Application6 {
    public static void main(String[] args) {

        /* 수업목표. 메소드 리턴값을 이해하고 활용할 수 있다. */

        System.out.println("main() 메소드 시작함..");

        /* 목차 1. 메소드 리턴값 확인 */
        Application6 app6 = new Application6();
        app6.testMethod();

        String returnText = app6.testMethod();
        System.out.println("returnText = " + returnText);

        System.out.println(app6.testMethod());

        System.out.println("main() 메소드 종료됨..");
    }

    public String testMethod() {
        return "hello world!";//아아
    }
}
