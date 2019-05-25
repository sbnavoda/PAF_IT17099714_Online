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
<form method = "post" action = "entry/Order/addOrder">
	<input type = "text" name = "pid" placeholder = "pid"/>
	<input type = "text" name = "mid" placeholder = "mid"/>
	<input type = "text" name = "oid" placeholder = "oid"/>
	<input type = "submit" value = "Submit"/>
</form>
<a href = "entry/Shipping/viewShippingdetails">View order to edit or delete shipping details</a>

</body>
</html>