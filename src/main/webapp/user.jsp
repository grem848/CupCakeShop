<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Andy's Cupcakes - User</title>
    </head>
    <body>
        
        <h1>USER</h1>
            
        <%
            User user = (User) session.getAttribute("user");
            
            if (user != null)
            {
                out.print("Login worked");
            }
            else
            {
                out.print("Login failed");
                
                user = new User("Anonymous", "none", false);
            }
            
        %>

        <p>
            Logged in as: <%= user.getUsername() %><br>
            Password: <%= user.getPassword() %><br>
            balance: <%= user.getBalance()%><br>
            Admin: <%= user.isAdmin() %><br>
        </p>
        
         
        
             <form action="Control" method="post">
           <input type="hidden" name="origin" value="showorderlist" />
          <input type="submit" value="showorderlist" />
        </form>
          
          
        <h2>DELETE USER</h2>
        
        <form action="Control" method="post">
            <input type="hidden" name="origin" value="delete" />
            <input type="submit" value="DELETE USER" />
        </form>
        
        <h3>PRODUCTS</h3>
        <a href="products.jsp">Product page</a>
        <br /><br />
        <a href="index.jsp">BACK...</a>

    </body>
</html>
