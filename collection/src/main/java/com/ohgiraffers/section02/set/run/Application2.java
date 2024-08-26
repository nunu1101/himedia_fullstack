package com.ohgiraffers.section02.set.run;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeSet;

public class Application2 {
    public static void main(String[] args) {

        /* 수업목표. LinkedHashSet에 대해 이해하고 사용할 수 있다. */
        /* LinkedHashSet
         *  HashSet이 가지는 기능을 모두 가지고 있고
         *  추가적으로 저장 순서를 유지하는 특징을 가지고 있다.
         *  JDK 1.4 부터 제공하고 있다.
         */

        LinkedHashSet<String> lhset = new LinkedHashSet<>();

        lhset.add("java");
        lhset.add("oracle");
        lhset.add("jdbc");
        lhset.add("html");
        lhset.add("css");

        System.out.println("lhset = " + lhset);

        TreeSet<String> tset = new TreeSet<>(lhset);
        System.out.println("tset = " + tset);

        Set<String> set= new LinkedHashSet<>();
        set.add("java");
        set.add("oracle");
        set.add("jdbc");
        set.add("html");
        set.add("css");

        String arr[] = set.toArray(new String[set.size()]);
        for (String i : arr) {
            System.out.println(i);
        }
    }
}
