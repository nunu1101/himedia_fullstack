package com.ohgiraffers.section02.extend.practitce;

public class Student extends People{
    // 필드
    int korean_score;
    int math_score;
    int english_score;

    // 생성자(Constructor)
    Student(String name, int age, int korean_score, int math_score, int english_score) {
        super.name = name; //부모필드
        super.age = age;   //부모필드
        this.korean_score = korean_score;
        this.math_score = math_score;
        this.english_score = english_score;
    }

    // 메소드
    public void printScore() {
        System.out.println("국어성적 : " + korean_score);
        System.out.println("수학성적 : " + math_score);
        System.out.println("영어성적 : " + english_score);
    }
}
