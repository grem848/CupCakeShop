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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Andy's Cupcakes - Shoppingcart</title>
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
        <div class="jumbotron">
            <div class="container text-center">
                <h1>ANDY'S CUPCAKES</h1>      
                <p>World leader in cupcakes made from Martian flour</p>
            </div>
        </div>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/WebProject/">Home</a></li>
                        <li><a href="/WebProject/products.jsp">Products</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/WebProject/user.jsp"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                        <li><a href="/WebProject/cupcakelist.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <h1  align="center">SHOPPING CART</h1>
        <br>

        <div id="pricing" class="container-fluid">
            <div class="text-center">
            </div>
            <div class="row slideanim">
                <div class="col-sm-4 col-xs-12">
                </div>     
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Cart Items</h1>                            
                            <%
                                User user = (User) session.getAttribute("user");
                            %>
                            <%
                                out.print("Your Total Wallet Balance:" + " " + user.getBalance() + " " + "DDK");
                            %>
                        </div>
                        <div class="panel-body">



                            <br>
                            <%
                                @SuppressWarnings(  "unchecked")
                                ArrayList<Cupcake> list = (ArrayList<Cupcake>) request.getSession().getAttribute("shoppinglist");
                                out.println(list);
                            %>

                        </div>
                        <div class="panel-footer">
                            <form action="Control" method="post">
                                <input type="hidden" name="origin" value="buy" />
                                <input type="submit" value="BUY" />
                            </form>

                        </div>
                    </div>      
                </div>       
                <div class="col-sm-4 col-xs-12">
                </div>    
            </div>
        </div>

        <br>
        <footer class="container-fluid text-center">
            <p>ANDY'S CUPCAKES is a Copyrighted subsidiary company of AndyCorp Holdings.</p>
        </footer>

    </body>
</html>
