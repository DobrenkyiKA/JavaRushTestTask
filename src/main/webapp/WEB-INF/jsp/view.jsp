<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType='text/html; charset=utf-8'%>

<!DOCTYPE html>
<html>
<head><title>Просмотр книги</title>
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
  <tr>
      <th>№</th>
      <td>${lists.id}</td>
  </tr>
  <tr>
      <th>Наименование</th>
      <td>${lists.title}</td>
  </tr>
  <tr>
      <th>Описание</th>
      <td>${lists.description}</td>
  </tr>
  <tr>
      <th>Автор</th>
      <td>${lists.author}</td>
  </tr>
  <tr>
      <th>ISBN</th>
      <td>${lists.isbn}</td>
  </tr>
  <tr>
      <th>Год выпуска</th>
      <td>${lists.printyear}</td>
  </tr>
  <tr>
      <th>Статус</th>
      <td>Прочитана</td>
  </tr>
  </table>
<form method="post" action="/save">
    <input type="hidden" name="id" value="${lists.id}" /><br/>
    <input type="hidden" name="title" value="${lists.title}"/>
    <input type="hidden" name="description" value="${lists.description}"/>
    <input type="hidden" name="author" value="${lists.author}" />
    <input type="hidden" name="isbn" value="${lists.isbn}"/>
    <input type="hidden" name="printyear" value="${lists.printyear}"/>
    <input type="hidden" name="readalready" value="true">
    <br><br>
    <input type="submit" value="На главную">
</form>
</body>
</html>
