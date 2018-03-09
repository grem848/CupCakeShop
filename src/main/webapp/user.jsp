<%@page import="entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Andy's Cupcakes - user</title> 
    </head>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */ 
        .navbar {
            margin-bottom: 50px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */ 
        .jumbotron {
            margin-bottom: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 15%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 2px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {background-color: #ddd}

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
    <body>
                       <%@include file="includes/menu.jsp" %>

        <h1  align="center">USER</h1>
        <br>


        <div id="pricing" class="container-fluid">
            <div class="text-center">
            </div>
            <div class="row slideanim">
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Order History</h1>
                        </div>
                        <div class="panel-body">


                            <form action="Control" method="post">
                                <input type="hidden" name="origin" value="showorderlist" />
                                <input type="submit" value="Show Order History" />
                            </form>


                        </div>
                        <div class="panel-footer">
                        </div>
                    </div>      
                </div>     
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Bottoms</h1>
                        </div>
                        <div class="panel-body">
                            <%
                                User user = (User) session.getAttribute("user");

                                if (user != null)
                                {
                                    out.print("Login worked!");
                                } else
                                {
                                    out.print("Login failed");

                                    user = new User("Anonymous", "none", false);
                                }

                            %>
                            <p>
                                Logged in as: <%= user.getUsername()%><br>
                                Total Wallet Balance: <%= user.getBalance()%><br>
                                Admin: <%= user.isAdmin()%><br>
                            </p>
                        </div>
                        <div class="panel-footer">

                        </div>
                    </div>      
                </div>       
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Delete User</h1>
                        </div>
                        <div class="panel-body">
                            <form action="Control" method="post">
                                <input type="hidden" name="origin" value="delete" />
                                <input type="submit" value="DELETE USER" />
                            </form>
                        </div>
                        <div class="panel-footer">

                        </div>
                    </div>      
                </div>    
            </div>
        </div>

        <%@include file="includes/footer.jsp" %> 
        
</body>
</html>
