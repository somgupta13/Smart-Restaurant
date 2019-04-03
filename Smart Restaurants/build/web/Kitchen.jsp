<%-- 
    Document   : Kitchen
    Created on : Mar 31, 2019, 2:00:53 AM
    Author     : SOM
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String tableno=(String)request.getParameter("tableno");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps = con.prepareStatement("select * from order1");
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
                         <th>table no.</th>
                            <th>ItemName</th>
                            <th>Quantity</th>
                     </tr>
                    </thead>
                    <tbody>
                        <%
                        while(rs.next()){
                            String table=rs.getString(1);
                            String DishName=rs.getString(2);
                               String quantity=rs.getString(3);
                               
                        %>
                       
                        <tr>
                            <td><b><%=table%></b></td>
                            <td><b><a href="DishFeedback.jsp?a=<%=DishName%>"><%=DishName%></a></b></td>
                            <td><b><%=quantity%></b></td>
                            
                            
                            
                        </tr>
                        <%    
                        }
                        %>
                    </tbody>
        </table>
    </body>
</html>
