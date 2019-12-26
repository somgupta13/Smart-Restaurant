<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" %>  
 <%
 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
//        String name=(String)request.getParameter("type");
//        int amt=0;
//        if(name.equals("1 month Rs.20000")){
//            amt=2;
//        }else if(name.equals("3 month Rs.50000")){
//            amt =5;
//        }else{
//            amt=1;
//        }
        int amt=Integer.parseInt(request.getParameter("amt"));
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>Merchant Check Out</title>
	<style type="text/css">
		.logo{
			color:white;
		}
		/*.content{
			margin-top: 20%;
		}*/
@media  (max-width: 600px){
			.content{
			margin-top: 20%;
		}
		}
		@media  (min-width: 600px){
			.content{
			margin-top: 10%;
		}
		}
	</style>
</head>
<body>
	<h1>Merchant Check Out Page</h1>
	<pre>
	</pre>
	<form method="post" action="pgRedirect.jsp">
		<table class="table table-bordered table-responsive" >
			<tbody>
				<tr>
					<th scope="col">S.No</th>
					<th scope="col">Label</th>
					<th scope="col">Value</th>
				</tr>
				<tr>
					<td scope="row">1</td>
					<td><label>ORDER_ID::*</label></td>
					<td><input id="ORDER_ID"
						name="ORDER_ID" autocomplete="off"
						value="ORDS_<%= randomInt %>">
					</td>
				</tr>
				<tr>
					<td scope="row">2</td>
					<td><label>CUSTID ::*</label></td>
					<td><input id="CUST_ID"  name="CUST_ID" autocomplete="off" value="CUST001"></td>
				</tr>
				<tr>
					<td scope="row">3</td>
					<td><label>INDUSTRY_TYPE_ID ::*</label></td>
					<td><input id="INDUSTRY_TYPE_ID"  name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail"></td>
				</tr>
				<tr>
					<td scope="row">4</td>
					<td><label>Channel ::*</label></td>
					<td><input id="CHANNEL_ID" 
						 name="CHANNEL_ID" autocomplete="off" value="WEB">
					</td>
				</tr>
				<tr>
					<td scope="row">5</td>
					<td><label>txnAmount*</label></td>
					<td><input title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="<%=amt%>">
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input value="CheckOut" type="submit"	onclick=""></td>
				</tr>
			</tbody>
		</table>
		* - Mandatory Fields
	</form>
</body>
</html>