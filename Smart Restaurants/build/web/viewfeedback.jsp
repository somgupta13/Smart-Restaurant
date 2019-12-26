<%-- 
    Document   : viewfeedback
    Created on : Apr 24, 2019, 12:38:09 AM
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
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps=con.prepareStatement("select * from feedback");
   ResultSet rs= ps.executeQuery();
%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>BitesToBits</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <style>
                    .container{
                        margin-top:10%;
                    }
                    form{
                        margin-top: 50%;
                    }
/*                    body{
                        color:white;
          background: url(a1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color:white;
      
                    }*/
                </style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		  <a class="navbar-brand" href="Owner.jsp">BitesToBits</a>
		  <ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="menu.jsp">Add Item</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="billpaid.jsp">Bill Status</a>
		    </li>
                    <li class="nav-item">
		      <a class="nav-link" href="viewfeedback.jsp">View Feedback</a>
		    </li>
		  </ul>
		</nav>
        <h1>View Feedback</h1>
        <%
                        while(rs.next()){
                            String name=rs.getString(1);
                            String message=rs.getString(2);
                            %>
                            <h4>Feedback</h4><p><%=name%>-<%=message%></p>
        
        <%
                        }
                        %>
    </body>
</html>
