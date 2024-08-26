package com.ohgiraffers.menu.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/huoguo/food")
public class HuoguoOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tang = request.getParameter("tang");
        int amount1 = Integer.parseInt(request.getParameter("amount1"));

        String meat = request.getParameter("meat");
        int amount2 = Integer.parseInt(request.getParameter("amount2"));

        String ve = request.getParameter("ve");
        int amount3 = Integer.parseInt(request.getParameter("amount3"));

        String mushroom = request.getParameter("mushroom");
        int amount4 = Integer.parseInt(request.getParameter("amount4"));

        System.out.println("tang = " + tang);
        System.out.println("amount1 = " + amount1);

        System.out.println("meat = " + meat);
        System.out.println("amount2 = " + amount2);

        System.out.println("ve = " + ve);
        System.out.println("amount3 = " + amount3);

        System.out.println("mushroom = " + mushroom);
        System.out.println("amount4 = " + amount4);

        int huoguoPrice1 = 0;
        int huoguoPrice2 = 0;
        int huoguoPrice3 = 0;
        int huoguoPrice4 = 0;

        int sum = huoguoPrice1 + huoguoPrice2 + huoguoPrice3 + huoguoPrice4;

        switch (tang) {
            case "홍탕": huoguoPrice1 = 5000 * amount1;break;
            case "백탕": huoguoPrice1 = 6000 * amount1;break;
        }

        switch (meat) {
            case "양고기" : huoguoPrice2 = 3000 * amount2;break;
            case "소고기" : huoguoPrice2 = 4000 * amount2;break;
        }

        switch (ve) {
            case "알배추" : huoguoPrice3 = 2000 * amount3;break;
            case "감자" : huoguoPrice3 = 1000 * amount3;break;
            case "죽순" : huoguoPrice3 = 3000 * amount3;break;
        }

        switch (mushroom) {
            case "팽이버섯" : huoguoPrice4 = 1000 * amount4;break;
            case "목이버섯" : huoguoPrice4 = 3000 * amount4; break;
            case "흰목이버섯" : huoguoPrice4 = 4000 * amount4; break;
        }

        request.setAttribute("tang", tang);
        request.setAttribute("meat", meat);
        request.setAttribute("ve", ve);
        request.setAttribute("mushroom", mushroom);

        request.setAttribute("amount1", amount1);
        request.setAttribute("amount2", amount2);
        request.setAttribute("amount3", amount3);
        request.setAttribute("amount4", amount4);

        request.setAttribute("huoguoPrice1", huoguoPrice1);
        request.setAttribute("huoguoPrice2", huoguoPrice2);
        request.setAttribute("huoguoPrice3", huoguoPrice3);
        request.setAttribute("huoguoPrice4", huoguoPrice4);

        request.setAttribute("sum", sum);

        RequestDispatcher rd = request.getRequestDispatcher("/jsp/7_response.jsp");
        rd.forward(request,response);

    }
}
