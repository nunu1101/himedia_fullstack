package com.ohgiraffers.section01.test;

public class Application {
    public static void main(String[] args) {

        // 객체 타입과 참조변수 타입이 일치
        Human human = new Human();
        Female female = new Female();

        // 객체 타입과 참조변수 타입이 불일치
        Human male = new Male();

        human.info();
        female.info();
        male.info();
    }
}
