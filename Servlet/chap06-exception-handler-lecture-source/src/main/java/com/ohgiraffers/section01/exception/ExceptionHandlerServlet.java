package com.ohgiraffers.section01.exception;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/showErrorPage")
public class ExceptionHandlerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("오나요?");
        Enumeration<String> attrName = request.getAttributeNames();
        while (attrName.hasMoreElements()) {
            System.out.println(attrName.nextElement());
        }

        Integer statusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");
        String message = (String) request.getAttribute("jakarta.servlet.error.message");

        System.out.println("statusCode : " + statusCode);
        System.out.println("message : " + message);

        StringBuilder errorPage = new StringBuilder();
        errorPage.append("</doctype html>\n")
                .append("<html>\n")
                .append("<head>\n")
                .append("</head>\n")
                .append("<body>\n")
                .append("<h1>")
                .append(statusCode)
                .append(" - ")
                .append(message)
                .append("</h1>")
                .append("</body>\n")
                .append("</html>\n");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.print(errorPage.toString());

        out.flush();

        out.close();
    }
}
