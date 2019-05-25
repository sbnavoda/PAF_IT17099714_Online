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
	String str = session.getAttribute("oid") + "";
	int oid = Integer.parseInt(str);
	//String str1 = session.getAttribute("mid") + "";
	//int mid = Integer.parseInt(str);
%>
<form method = "post" action = "entry/Shipping/addShipping">
	<! -- Mid is a session one -->
	<input type = "text" name = "mid" placeholder = "mid"/>
	<input type = "text" name = "oid" value = "<%=oid%>" hidden/>
	<textarea name = "address" placeholder = "Address"></textarea>
	<input type = "submit" value = "Submit"/>
</form>
</body>
</html>