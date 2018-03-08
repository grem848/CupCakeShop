<%@page import="java.util.ArrayList"%>
<%@page import="entity.Cupcake"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Andy's Cupcakes - products</title>
    </head>
    <style>
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

        <h1>ANDY'S CUPCAKES</h1>

        <h2>Toppings</h2>
        <table>
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
        <br />
        <h2>Bottoms</h2>
        <table>
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
        <h2>Build Cupcake</h2>
        <p>Click the box below to open the dropdown menu.</p>

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
            <input type="hidden" name="origin" value="cupcake" />
            <input type="submit" value="Create your cupcake" />
        </form>
        <a href="cupcakelist.jsp">Shoppingcart</a>
        <br /><br />
        <a href="user.jsp">BACK...</a>

    </body>
</html>
