<%@page import="com.hari.model.Shipping"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8">
<meta name= "viewpoint" content="width=device-width, initial-scale=1">
<link href ="css/boostrap.min.css" rel="stylesheet">
<script src="js/jquary-3.4.1.min.js" type="text/javascript"></script>
<script src ="js/validation.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
<%
Shipping shipping = (Shipping) session.getAttribute("ship");
%>
<form action = "entry/Shipping/updateShip" method = "post">
oid: <input type = "text" name = "oid" value = "<%=shipping.getOid()%>"/><br/>
mid: <input type = "text" name = "mid" value = "<%=shipping.getMid()%>"/><br/>
address: <input type = "" name = "address" value = "<%=shipping.getAddress()%>"/><br/>
<input type = "submit" value = "Submit"/>
</form>
</body>
</html>