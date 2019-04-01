<%-- 
    Document   : viewcart
    Created on : Mar 29, 2019, 4:36:18 PM
    Author     : SOM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String tableno=(String)request.getSession().getAttribute("tableNo");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
PreparedStatement ps = con.prepareStatement("select * from cart where tableno=?");
ps.setString(1,tableno);
ResultSet rs = ps.executeQuery();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2" width="4" cellspacing="5" cellpadding="8">
                    <thead>
                     <tr>
                            <th>ItemName</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Total Amount</th>
                     </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()){
                            String DishName=rs.getString(2);
                               String quantity=rs.getString(3);
                               int price=Integer.parseInt(rs.getString(4));
                               int totalamt=price*Integer.parseInt(quantity);
                        
                        %>
                       
                        <tr>
                            <td><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b></td>
                            <td><b><%=quantity%></b></td>
                            <td><b><%=price%></b></td>
                            <td><b><%=totalamt%></b></td>
                            
                        </tr>
                        <%    
                        }
                        %>
                    </tbody>
                </table>
    </body>
</html>
