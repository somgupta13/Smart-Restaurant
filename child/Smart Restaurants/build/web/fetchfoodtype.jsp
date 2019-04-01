<%-- 
    Document   : fetchstarters
    Created on : Mar 29, 2019, 4:39:25 PM
    Author     : SOM
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    String a=(String)request.getParameter("a");
    PreparedStatement ps=con.prepareStatement("select * from menu where dishtype=?");
    ps.setString(1,request.getParameter("a"));
   ResultSet rs= ps.executeQuery();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=a%></h1>

        <table border="2" width="4" cellspacing="5" cellpadding="8">
                    <thead>
                     <tr>
                            <th>DishName</th>
                            <th>Quantity</th>
                            <th>Price</th>
                     </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()){
                            String DishName=rs.getString(1);
                               String price=rs.getString(3);%>
                       
                        <tr>
                            <td><b><a href="DishFeedback.jsp?a=<%=DishName%>&price=<%=price%>"><%=DishName%></a></b></td>
                            <td><b>1</b></td>
                            <td><b><%=price%></b></td>
                            
                        </tr>
                        <%    
                        }
                        %>
                    </tbody>
                </table>
  
 
    </body>
</html>
