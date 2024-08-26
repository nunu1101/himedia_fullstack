<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String tang = (String) request.getAttribute("tang");
        String meat = (String) request.getAttribute("meat");
        String ve = (String) request.getAttribute("ve");
        String mushroom = (String) request.getAttribute("mushroom");

        int amount1 = (Integer) request.getAttribute("amount1");
        int amount2 = (Integer) request.getAttribute("amount2");
        int amount3 = (Integer) request.getAttribute("amount3");
        int amount4 = (Integer) request.getAttribute("amount4");

        int huoguoPrice1 = (Integer) request.getAttribute("huoguoPrice1");
        int huoguoPrice2 = (Integer) request.getAttribute("huoguoPrice2");
        int huoguoPrice3 = (Integer) request.getAttribute("huoguoPrice3");
        int huoguoPrice4 = (Integer) request.getAttribute("huoguoPrice4");

        int sum = (Integer) request.getAttribute("sum");
    %>

    <%
        sum = huoguoPrice1+huoguoPrice2+huoguoPrice3+huoguoPrice4;
    %>

    <h1>훠궈나라 훠궈공주 주문 영수증</h1>
    <h3> 주문하신 탕 : <%= tang%> , 수량 : <%= amount1%>개</h3>
    <h3> 주문하신 고기 : <%= meat%> , 수량 : <%= amount2%>개</h3>
    <h3> 주문하신 채소 : <%= ve%> , 수량 : <%= amount3%>개</h3>
    <h3> 주문하신 버섯 : <%= mushroom%> , 수량 : <%= amount4%>개</h3>

    <h3> 총 금액 : <%= sum%> 원</h3>
</body>
</html>
