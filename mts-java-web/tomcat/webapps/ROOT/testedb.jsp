<%@page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<!doctype html>
<html lang="en">
<%@include file="head.jsp"%>
<body>
    <%@include file="menu.jsp"%>
    <div class="container">
        <% 
        if (con == null) {
            %><h1>Nao tem conexao</h1><%
        } else {
            %><h1>Tem conexao</h1><%
        } 
        %>
        <% 
        if (st == null) {
            %><h1>Nao tem Statement</h1><%
        } else {
            %><h1>Tem Statement</h1><%
        } 
        %>
    </div>
    <%@include file="js.jsp"%>
</body>
</html>