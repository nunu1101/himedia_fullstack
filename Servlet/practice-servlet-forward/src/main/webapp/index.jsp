<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Practice</title>
</head>
<body>
    <h1>오늘의 일기</h1>
    <form action="journal" method="post">
        <table>
            <tr>
                <td><input type="text" name="diary"></td>
                <td colspan="2"><button type="submit" style="height: 25px;">작성</button></td>
            </tr>
        </table>
    </form>
</body>
</html>