<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>훠궈 나라 훠궈 공주</h1>
    <h2>재료 선택</h2>
    <form action="/huoguo/food" method="post">
        <select name=tang id="huoguo1">
            <option value="홍탕">홍탕</option>
            <option value="백탕">백탕</option>
        </select>
        <input type="number" min="0" max="3" step="1" name="amount1">
        <br>
        <select name="meat" id="huoguo2">
            <option value="양고기">양고기</option>
            <option value="소고기">소고기</option>
        </select>
        <input type="number" min="0" max="3" step="1" name="amount2">
        <br>
        <select name="ve" id="huoguo3">
            <option value="알배추">알배추</option>
            <option value="감자">감자</option>
            <option value="죽순">죽순</option>
        </select>
        <input type="number" min="0" max="3" step="1" name="amount3">
        <br>
        <select name="mushroom" id="huguo4">
            <option value="팽이버섯">팽이버섯</option>
            <option value="목이버섯">목이버섯</option>
            <option value="흰목이버섯">흰목이버섯</option>
        </select>
        <input type="number" min="0" max="3" step="1" name="amount4">
        <button type="submit">선택완료</button>
    </form>
</body>
</html>
