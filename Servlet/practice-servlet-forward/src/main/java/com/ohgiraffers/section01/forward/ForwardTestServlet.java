package com.ohgiraffers.section01.forward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/print")
public class ForwardTestServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String diary = (String) request.getAttribute("diary");

        System.out.println("print servlet diary = " + diary);

        StringBuilder responseText = new StringBuilder();
        responseText.append("<!doctype html>\n")
                .append("<html>\n")
                .append("<head>\n")
                .append("</head>\n")
                .append("<body>\n")
                .append("<h1>")
                .append(diary)
                .append("</h1>")
                .append("</body>\n")
                .append("</html>\n");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print(responseText.toString());

        out.flush();
        out.close();

    }
}
