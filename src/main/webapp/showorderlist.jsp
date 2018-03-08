<%-- 
    Document   : showorderlist
    Created on : 02-03-2018, 11:46:22
    Author     : RasmusFriis
--%>

<%@page import="entity.Cupcake"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>order list</title>
    </head>
    <body>
        <%@include file="includes/LogOut.jsp" %>
        <br>
        <br>
        <br>
        <
        
        
        <%
            User user = (User) session.getAttribute("user");

            out.println("you are logged in as" + " " + user.getUsername());
            out.print("you total balace is" + " " + user.getBalance() + " " + "DDK");

            ArrayList<Cupcake> list = (ArrayList<Cupcake>) request.getSession().getAttribute("orderlist");
            out.println(list);


        %>
        
        <a href="user.jsp">BACK...</a>
        <form action="Control" method="post">
            <input type="hidden" name="origin" value="clear" />
            <input type="submit" value="clear" />
        </form>
        
        
        
    </body>
</html>
