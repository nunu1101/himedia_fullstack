package com.ohgiraffers.practice.hard;

import java.util.Scanner;

public class Application {

    public static Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {

        boolean run = true;

        while (run) {
            System.out.println(" 1.  상품 등록  | 2.  상품 목록  | 3.  종료  ");
            System.out.print("메뉴를 선택하세요 : ");

            int selectNo = Integer.parseInt(scanner.nextLine());
            if (selectNo == 1) {
                // 상품 등록
                System.out.println("상품 이름을 입력하세요 : ");
                scanner.nextLine();
                System.out.println("상품 가격을 입력하세요 : ");
                scanner.nextLine();
            } run = false;

        }
        scanner.close();
    }
}
