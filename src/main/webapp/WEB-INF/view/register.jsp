<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/WEB-INF/resource/allCss.jsp" %>
<style type="text/css">

#d1{
 width: 333px;
 background-color: white;
 color: black;
 border-radius: 9px;
}


.item1{
 height:500px;
  width: 100%;
  position: absolute;
  z-index: -1;
}

.item2{
 height:435px;
  width: 400px;
  margin: auto;
  border: 3px solid white;
   position: absolute;
  z-index: 1;
  padding: 30px;
  border-radius: 9px;
  left: 440px;
  top: 80px;
}

h1{
 margin-bottom: 12px;
 text-align: center;
}
h5{
text-align: center;
color: green;
}

.form-control{
 display: inline-block;
 width: 300px;
}


</style>
</head>
<body>
<%@include file="/WEB-INF/resource/nav.jsp" %>



<div  class="one">
   <div class="item1">
   <img alt="iimhg" src='<c:url value="xyz/imgs/images (5).jpg"></c:url>' class="item1">
   </div>
   
   <div class="item2">
     <h1>Registration</h1>
     <c:if test="${not empty suc }">
     <p style="text-align: center; color: white;">${suc}</p>
     <c:remove var="suc"/>
     </c:if>
   <form action="userRegister" method="post">
   <div class="mb-3"> 
	       <i class="fa-solid fa-user"></i> <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Full Name" name="fullname" > 
			 </div>
	     <div class="mb-3"> 
	         <i class="fa-solid fa-envelope"></i> <input  type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder=" Enter Email" name="email">
			 </div>
				  <div class="mb-3">
				   <i class="fa-solid fa-lock"></i> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="  Enter Password" name="password">
				  </div>
				  
				  <div class="mb-3 form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="checked">
				    <label class="form-check-label" for="exampleCheck1"><h6 style="color: white;">I agree to the terms and conditions</h6></label>
				  </div>
				  <button type="submit" class="btn btn-primary" id="d1"> <h5>Register</h5></button>
				  
				</form>
				<h6 style="color: white;">Already have an account? <a href="login">Login</a></h6>
   </div>

 
</div>


</body>
</html>