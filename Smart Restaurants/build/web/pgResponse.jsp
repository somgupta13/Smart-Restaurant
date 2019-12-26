
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%
    int flag=0;
Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
boolean isValideChecksum = false;
String outputHTML="";
 flag=0;
try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum("t!1NTmb!7Ck3XtGf",parameters,paytmChecksum);
	if(isValideChecksum && parameters.containsKey("RESPCODE")){
		if(parameters.get("RESPCODE").equals("01")){
			outputHTML = parameters.toString();
                        flag=1;
		}else{
			outputHTML="<b>Payment Failed.</b>";
		}
	}else{
		outputHTML="<b>Checksum mismatched.</b>";
	}
}catch(Exception e){
	outputHTML=e.toString();
}
String str=(String)session.getAttribute("tableNo");
%>

<%
        
      //  String tableno=(String)session.getAttribute("tableNo");
    Class.forName("com.mysql.jdbc.Driver");
    String tableno=(String)session.getAttribute("tableNo");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
    PreparedStatement ps = con.prepareStatement("select * from order1 where tableno=?");
    ps.setString(1,tableno);
  int netbill=0;
    ResultSet rs = ps.executeQuery();
 while(rs.next()){
    String quantity=rs.getString(3);
    int price=Integer.parseInt(rs.getString(4));
                               int totalamt=price*Integer.parseInt(quantity);
                                netbill=netbill+totalamt;
 }%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
    <%if(flag==1){ response.sendRedirect("bill?tableno="+str+"&total="+netbill);
}else{%>
<p>Payment Failed</p>
<a href="tablebill.jsp">Retry</a>
    <%}%>
</body>
</html>