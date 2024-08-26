package com.ohgiraffers.section02.extend.practitce;

public class Application {
    public static void main(String[] args) {
        Student student = new Student("홍길동", 18, 90, 70, 85);
        student.printMyself();
        student.printScore();
    }
}
