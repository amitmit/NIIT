<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form {
    border: 80px light blue;
}
input[type=text] {
    width: 20%;
    padding: 12px 15px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
 input[type=password] {
    width: 20%;
    padding: 12px 15px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

button:hover {
    opacity: 0.7;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    border-radius: 15%;
}

.container {
    padding: 8px;
}
}
</style>
</head>
<body background='resources/images/login.jpg'>
<br>
<br>
${error }
${logout }
${registrationSuccess }
<form action="<c:url value="j_spring_security_check"></c:url>" method="post" >
<h1 align="center"style="color:white">Already a Member?</h1>
  <div class="imgcontainer">
    <img src="resources/images/loginimg.png" alt="LOGIN" class="avatar">
  </div>

  <div  align="center" class="container">
    <label><h3 style="color:white">Username</h3></label>
    <br>
    <input type="text" name="j_username" required>
</div>
  <div  align="center" class="container">
    <label><h3 style="color:white">Password</h3></label>
    <br>
    <input type="password" name="j_password" required>
    </div>
    
    <div align="center" class="container">
    <button type="submit">LOGIN</button>
    </div>
</form>
</body>
</html>