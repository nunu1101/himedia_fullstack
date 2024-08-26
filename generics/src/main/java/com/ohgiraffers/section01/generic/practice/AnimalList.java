package com.ohgiraffers.section01.generic.practice;

import java.util.ArrayList;

public class AnimalList<T> {
    ArrayList<T> al = new ArrayList<>();

    void add(T animal) {al.add(animal);}
    T get(int index) {return al.get(index);}
    boolean remove(T animal){ return al.remove(animal);}
    int size(){ return al.size();}
}
