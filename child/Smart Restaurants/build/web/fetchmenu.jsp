<%-- 
    Document   : fetchmenu
    Created on : Mar 29, 2019, 4:35:59 PM
    Author     : SOM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String val=(String)request.getSession().getAttribute("tableNo");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4><%=val%></h4>
        <a href="fetchfoodtype.jsp?a=Starters">Starters</a>
        <a href="fetchfoodtype.jsp?a=Maincourse">Main Course</a>
        <a href="fetchfoodtype.jsp?a=Dessert">Dessert</a>
    </body>
</html>
