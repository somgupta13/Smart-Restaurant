<%-- 
    Document   : menu
    Created on : Mar 28, 2019, 3:28:56 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Add Menu</h1>
        <form  action="Additem">
            <input type="text" name="DishName" placeholder="Dish Name"/><br/>
            <input type="text" name="DishType" placeholder="Dish Type"/><br/>
            <input type="text" name="price" placeholder="price"/><br/>
            <input type="Submit" value="Add">
        </form>
    </body>
</html>
