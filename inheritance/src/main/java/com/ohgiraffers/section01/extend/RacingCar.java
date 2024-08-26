package com.ohgiraffers.section01.extend;

import org.w3c.dom.ls.LSOutput;

public class RacingCar extends Car {

    public RacingCar(){
        System.out.println("RacingCar 클래스 기본 생성자 호출됨...");
    }

    @Override
    public void run() {
        System.out.println("레이싱카가 전속력으로 질주합니다아아ㅏㅇ아아ㅏ~~~~");
    }

    @Override
    public void soundHorn() {
        System.out.println("레이싱카는 경적을 울리지 않아요. (조요옹,,,,,)");
    }

    @Override
    public void stop(){
        System.out.println("레이싱카가 멈췄습니닷!");
    }

}
