<%@page import="entity.Cupcake"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="servlet.Control"%>
<%@page import="entity.User"%>
<%@page import="entity.Cupcake"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cupcake Shoppingcat</title>
    </head>
    <body>
        <%@include file="includes/LogOut.jsp" %>
        <br>
        <br>
        <br>
        <h1>SHOPPINGCART</h1>
        <%
            User user = (User) session.getAttribute("user");

            out.println("you are logged in as" + " " + user.getUsername());
        %>
        <br>
        <%
            out.print("you total balace is" + " " + user.getBalance() + " " + "DDK");
        %>
        <br>

        <%
            @SuppressWarnings(  "unchecked")
            ArrayList<Cupcake> list = (ArrayList<Cupcake>) request.getSession().getAttribute("shoppinglist");
            out.println(list);
        %>








        <form action="Control" method="post">
            <input type="hidden" name="origin" value="buy" />
            <input type="submit" value="buy" />
        </form>

    </body>
</html>
