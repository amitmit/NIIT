<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>Online Shopping</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${css}/style.css">
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		<style>
		  .bg-4 { 
      background-color: #2f2f2f;
      color: #fff;
  }
  .help-block{
       color:#ff0000;
  }
  
		</style>
	</head>

	<body>
	<%@include file="header.jsp" %>
	
	<h2>
							</h2>
		<div class="content">
		 <div class="col-md-2 col-md-offset-5">
			<fieldset>
				<legend>Become Member</legend>
				
				<sf:form modelAttribute="address" ><br />
				    
					 <sf:label path="shipping" >Shipping Address:</sf:label>
					<sf:input path="shipping" placeholder="Enter the shipping address" class="form-contrlo"/><br /><br/>
					 <sf:errors path="shipping" cssClass="help-block" element="em"/>
					
					<sf:label path="city" >City: </sf:label>
					<sf:input  path="city" placeholder="Enter the city name"/><br /><br/>
	                 <sf:errors path="city" cssClass="help-block" element="em"/>   
	
					<sf:label path="pin" >Pin: </sf:label>
					<sf:input  path="pin" placeholder="Enter the pin"/><br /><br/>
	                <sf:errors path="pin" cssClass="help-block" element="em"/>					
					
					
					<input name="_eventId_submit" class="btn btn-info" type="submit" value="Bank" /><br />
				</sf:form>
			</fieldset>
			</div>
		</div>
				<%@include file="footer.jsp" %>
		
	</body>
</html>