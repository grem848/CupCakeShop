<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" rel="stylesheet" type="text/css"/>
        <title>Andy's Cupcakes - frontpage</title>
    </head>
    <body>
        
      <%@include file="includes/menu.jsp" %>
        <br>
        <br>
        <br>
        
        <h1>Andy's Cupcakes</h1>
        
        <h2>SEARCH USER</h2>
        
        <form id="formSearch" action="Control" method="post">
            <label id="labelUsername" for="username">Username</label>
            <input type="text" name="username" />
            <input type="hidden" name="origin" value="search" />
            <input type="submit" value="SEARCH USER" />
        </form>
        
        <h2>CREATE USER</h2>
        
        <form id="formCreate" action="Control" method="post">
            <label id="labelUsername" for="username">Username</label>
            <input type="text" name="username" />
            <label id="labelPassword" for="password">Password</label>
            <input type="text" name="password" />
            <label id="labelBalance"for="balance">balance</label>
            <input type="number"name="balance"/>
            <label id="labelAdmin" for="admin">Admin</label>
            <input type="text" name="admin" />
            <input type="hidden" name="origin" value="create" />
            <input type="submit" value="CREATE USER" />
        </form>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
