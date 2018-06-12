<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType='text/html; charset=utf-8'%>
<!DOCTYPE html>
<html>
<head><title>Добавление новой книги</title>

</head>
<body>
<form method="post" action="/save">
    Добавить новую книгу:<br><br><br>
    <input type="hidden" name="id" value=""/>
    Наименование:<br>
    <input type="text" name="title"/>
    <br>
    Описание:<br>
    <input type="text" name="description"/>
    <br>
    Автор:<br>
    <input type="text" name="author"/>
    <br>
    ISBN:<br>
    <input type="text" name="isbn"/>
    <br>
    Год выпуска:<br>
    <input type="text" name="printyear"/>
    <br>
    <input type="hidden" name="readalready" >
    <br><br>
    <input type="submit" value="Добавить">

</form>

</body>
</html>
