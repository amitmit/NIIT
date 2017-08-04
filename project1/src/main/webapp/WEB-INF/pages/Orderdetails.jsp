<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	   <%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/resources/css"/>    
<spring:url var="js" value="/resources/js"/>
<spring:url var="image" value="/resources/images"/>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
	<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${css}/style.css">
<!-- style for carousel -->
 <style>
  .bg-4 { 
      background-color: #2f2f2f;
      color: #fff;
  }
  
  </style>
 
	
	</head>

	<body>
<sf:form modleAttribute="cart">
<center>
<table>

<caption>Order Details for ${pageContext.request.userPrincipal.name }</caption>
	<tr>
      
      <th>Cart Item Id</th>
      <th>Product </th>
      <th>Quantity</th>
      <th>Product Total</th>
      <th></th>
    </tr>
  
  <tbody>
 <c:set var="x" value="${1}"/>
  <c:set var="grandtotal" value="${0}" />
  
   <c:forEach  var="cartItem"   items="${cartItems}">

    
    <tr>
       
      <th>${cartItem.id}</th>
      <th>${cartItem.product.name}</th>
      <th>${cartItem.quantity}</th>
      <th>${cartItem.totalPrice}</th>
      
      <c:set  var = "grandtotal" value ="${grandtotal + cartItem.totalPrice} "  />
     
      
    </tr>
    <tr>
    
   
    </tr>
   
    </c:forEach>
    
   
    
   
     <tr>
      
      <th></th>
      <th><b><h3>Grand Total :</h3></th>
      <th><h3>${grandtotal}</b></h3></th>
    </tr>
    		<tr><td>	<input name="_eventId_submit" class="btn btn-info" type="submit" value="Submit" /></td></tr>
  
  </tbody>
  </table></center>
  </sf:form>
  
</body>
</html>
