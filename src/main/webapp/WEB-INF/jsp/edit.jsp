<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType='text/html; charset=utf-8'%>

<!DOCTYPE html>
<html>
<head><title>Замена на новое издание</title>
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
<hr/>
<form method="post" action="/save">
    №:<br>
  <input type="text" name="id" value="${lists.id}" disabled/><br/>
  <input type="hidden" name="id" value="${lists.id}" /><br/>
  Наименование:<br>
  <input type="text" name="title" value="${lists.title}"/>
  <br>
  Описание:<br>
  <input type="text" name="description" value="${lists.description}"/>
  <br>
  Автор:<br>
  <input type="text" name="author" value="${lists.author}" disabled/>
    <input type="hidden" name="author" value="${lists.author}" />
  <br>
  ISBN:<br>
  <input type="text" name="isbn" value="${lists.isbn}"/>
  <br>
  Год выпуска:<br>
  <input type="text" name="printyear" value="${lists.printyear}"/>
  <br>
  Статус:<br>
  <input type="text" name="readalready" value="Не прочитана" disabled>
  <input type="hidden" name="readalready" value="false">
  <br><br>
  <input type="submit" value="Заменить">
</form>
</body>
</html>
