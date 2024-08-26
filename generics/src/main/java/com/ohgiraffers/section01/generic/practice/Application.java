package com.ohgiraffers.section01.generic.practice;

import com.ohgiraffers.section02.extend.Animal;

public class Application {
    public static void main(String[] args) {
        AnimalList<LandAnimal> landAnimal = new AnimalList<>();

        landAnimal.add(new LandAnimal());
        landAnimal.add(new Cat());
        landAnimal.add(new Dog());
//        landAnimal.add(new Sparrow()); //오류가 발생함

        for(int i = 0; i < landAnimal.size(); i++) {
            landAnimal.get(i).crying();
        }
    }


}
