<%--
    Document   : charity
    Created on : Oct 31, 2019, 1:42:49 PM
    Author     : Raja
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Menu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<style>
    body{
          background: url(https://cdn.pixabay.com/photo/2018/02/20/14/51/menu-3167859_960_720.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color:white;
      }
      .container{
          margin-top: 10%;
      }
      .b1{
          margin-left:5%;
      }
</style>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  <a class="navbar-brand" href="Customer.jsp">BitesToBits</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="fetchmenu.jsp">Menu</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="viewcart.jsp">Cart</a>
		    </li>
		  </ul>
		</nav>
<div class="container">
  <h1>Donate Food</h1>
        <form action='charity.jsp'>
        <p>
            Do you have enough food to fill Someones's belly?<br/>
            Do you want to donate it? We can help you
        </p>
        <input type="submit" class="btn btn-lg btn-success" value="Yes"/><a href="givefeedback.jsp" class="btn btn-lg btn-danger b1">No</a>
    </form>
  
    </body>
</html>