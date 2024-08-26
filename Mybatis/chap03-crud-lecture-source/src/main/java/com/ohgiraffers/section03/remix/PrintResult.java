package com.ohgiraffers.section03.remix;

import java.util.List;

public class PrintResult {
    public void printMenuList(List<MenuDTO> menuList) {

        for (MenuDTO menu : menuList) {
            System.out.println(menu);
        }
    }
    public void printErrorMessage(String errorCode) {
        String errorMessage="";
        switch (errorCode) {
            case "selectList" : errorMessage = "메뉴 목록 조회를 실패하셨습니다."; break;
        }
    }

    public void printMenu(MenuDTO menu) {
        System.out.println(menu);
    }
}
