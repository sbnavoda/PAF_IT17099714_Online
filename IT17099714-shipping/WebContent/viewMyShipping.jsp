<%@page import="java.util.ArrayList"%>
<%@page import="com.hari.model.Shipping"%>
<%@page import="java.util.List"%>
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
List<Shipping> shippingList = new ArrayList<Shipping>();
shippingList = (List) session.getAttribute("shippingList");
for (Shipping temp : shippingList) {
	out.println(temp.getOid());
	out.println(temp.getMid());
	out.println(temp.getAddress());
%>
<a href = "entry/Shipping/deleteShippingDetails?id=<%=temp.getOid() %>">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href = "entry/Shipping/updateForm?id=<%=temp.getOid() %>">Update</a>
<br/>
<%} %>
</body>
</html>