<%@page import="java.util.ArrayList"%>
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
        <title>Andy's Cupcakes - products</title>
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

        <div class="container">    
            <div class="row">
                <div class="col-sm-4"> 
                    <div class="panel panel-danger">
                        <div class="panel-heading">DEAL OF THE MONTH!</div>
                        <div class="panel-body"><img src="http://www.ruchiskitchen.com/wp-content/uploads/2016/05/orange-cupcakes-recipe-2.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Buy 10 cupcakes with orange topping and get 2 extra for FREE</div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">MOST POPULAR CUPCAKE!</div>
                        <div class="panel-body"><img src="https://someoneleftthecakeoutintherain.files.wordpress.com/2011/03/dscf4077.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Buy 50 blue cheese & almond cupcakes and get a 5 DKK gift card</div>
                    </div>
                </div>
                <div class="col-sm-4"> 
                    <div class="panel panel-success">
                        <div class="panel-heading">THIS WEEKS CUPCAKE</div>
                        <div class="panel-body"><img src="http://www.yourcupofcake.com/wp-content/uploads/2012/02/Chocolate-Pistachio-Cupcake.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
                        <div class="panel-footer">Try our brand new Pistacio cupcakes! They are mmmm.. delicious!</div>
                    </div>
                </div>
            </div>

            <div id="pricing" class="container-fluid">
                <div class="text-center">
                    <h2>Cupcakes</h2>
                    <h4>Choose the topping and the bottom that you want!</h4>
                </div>
                <div class="row slideanim">
                    <div class="col-sm-4 col-xs-12">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <h1>Toppings</h1>
                            </div>
                            <div class="panel-body">

                                <table align="center">
                                    <tr>
                                        <th>Topping</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr>
                                        <td>Blue Cheese</td>
                                        <td>9,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Blueberry</td>
                                        <td>5,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Chocolate</td>
                                        <td>5,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Crispy</td>
                                        <td>6,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Lemon</td>
                                        <td>8,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Orange</td>
                                        <td>8,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Rasberry</td>
                                        <td>8,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Rum/Raisin</td>
                                        <td>7,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Strawberry</td>
                                        <td>6,00 DKK</td>
                                    </tr>
                                </table>
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
                                <table align="center">
                                    <tr>
                                        <th>Bottom</th>
                                        <th>Price</th>
                                    </tr>
                                    <tr>
                                        <td>Almond</td>
                                        <td>7,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Chocolate</td>
                                        <td>5,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Nutmeg</td>
                                        <td>5,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Pistacio</td>
                                        <td>6,00 DKK</td>
                                    </tr>
                                    <tr>
                                        <td>Vanilla</td>
                                        <td>5,00 DKK</td>
                                    </tr>
                                </table>
                            </div>
                            <br><br><br><br><br><br><br><br><br>
                            <div class="panel-footer">
                                
                            </div>
                        </div>      
                    </div>       
                    <div class="col-sm-4 col-xs-12">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <h1>Build Cupcake</h1>
                            </div>
                            <div class="panel-body">
                                <p>After chosing a topping and a bottom you can now verify it by clicking below!</p>
                            </div>
                            <div class="panel-footer">
                                <p>Click the boxes below to choose your topping and bottom!</p>
                                <form id="formBottom" action="Control" method="post"> 
                                    <select id="FrameDD" style="margin-bottom: 20px" name="topping">
                                        <option value="bluecheese">Blue Cheese</option>
                                        <option value="blueberry">Blueberry</option>
                                        <option value="chocolate">Chocolate</option>
                                        <option value="crispy">Crispy</option>
                                        <option value="lemon">Lemon</option>
                                        <option value="orange">Orange</option>
                                        <option value="rasberry">Rasberry</option>
                                        <option value="rum/raisin">Rum/Raisin</option>
                                        <option value="strawberry">Strawberry</option>
                                    </select>

                                    <select id="FrameDD" style="margin-bottom: 20px" name="bottom">
                                        <option value="almond">Almond</option>
                                        <option value="chocolate">Chocolate</option>
                                        <option value="nutmeg">Nutmeg</option>
                                        <option value="pistacio">Pistacio</option>
                                        <option value="vanilla">Vanilla</option>
                                    </select>
                                    <p>Click below to verify and add your cupcake to your shopping cart!</p>
                                    <input type="hidden" name="origin" value="cupcake" />
                                    <input type="submit" value="Create your cupcake" />
                                </form>
                            </div>
                        </div>      
                    </div>    
                </div>
            </div>
            <br><br>
            <br>
            <br />
        </div><br>
        <br /><br />

        <footer class="container-fluid text-center">
            <p>ANDY'S CUPCAKES is a Copyrighted subsidiary company of AndyCorp Holdings.</p>
        </footer>

    </body>
</html>