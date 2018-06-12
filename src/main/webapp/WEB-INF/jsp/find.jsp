<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType='text/html; charset=utf-8'%>
<!DOCTYPE html>
<html>
<head><title>Поиск</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<table>
    <tr style="font-size: 22px">
        <th width="1%" style="text-align: center">№</th>
        <th width="22%" style="text-align: center">Наименование</th>
        <th width="27%" style="text-align: center">Описание</th>
        <th width="10%" style="text-align: center">Автор</th>
        <th width="12%" style="text-align: center">ISBN</th>
        <th width="3%" style="text-align: center">Год выпуска</th>
        <th width="8%" style="text-align: center">Статус</th>
        <th width="17%" style="text-align: center">Действия</th>

    </tr>
    <c:forEach var = "list" items = "${lists}">
        <tr>
            <td style="text-align: center">${list.id}</td>
            <td>${list.title}</td>
            <td>${list.description}</td>
            <td>${list.author}</td>
            <td style="text-align: center">${list.isbn}</td>
            <td style="text-align: center">${list.printyear}</td>
            <td style="text-align: center">
                <c:if test="${list.readalready != true}">
                    <p>Не прочитана</p></c:if>
                <c:if test="${list.readalready == true}">
                    <p>Прочитана</p></c:if>
            </td>
            <td style="text-align: center">
                    <input style="font-size: 16px" type="button" value="Прочитать" onclick="location.href='/view/${list.id}'">
                    <input style="font-size: 16px" type="button" value="Удалить" onclick="location.href='/delete/${list.id}'">
                    <input style="font-size: 16px" type="button" value="Заменить" onclick="location.href='/edit/${list.id}'">
            </td>
        </tr>
    </c:forEach>
</table>
<input style="font-size: 16px" type="button" value="На главную" onclick="location.href='/'">


</body>
</html>
