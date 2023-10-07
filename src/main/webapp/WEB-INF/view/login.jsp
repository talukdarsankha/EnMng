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
.one{
 box-shadow: 0px 0px 12px gray;
 height: 450px;
 width: 1000px;
 margin: auto;
 margin-bottom: 70px;
 display: flex;
 padding: 30px;
}
.two{

 box-shadow: 0px 0px 12px gray;
 height: 550px;
 padding-top: 20px;
 margin-top: 0px;
 
}
h6{
color: gray;
}
#d1{
 width: 200px;
 
 border-radius: 40px;
}

.im{
  height: 35px;
  width: 35px;
  margin: 10px;
}
h5{
 color: gray;
 margin: 10px;
}

.form-control{
width: 300px;
display:  inline-block;
}

</style>
</head>
<body>
<%@include file="/WEB-INF/resource/nav.jsp" %>



<div class="two">
    
  <div class="one">
	  <div class="item1" style="width: 500px;">
	  <h4>Creative</h4>
	  <img alt="pic" src='<c:url value="/xyz/imgs/logcartoon.jpg"></c:url>'  style="width: 520px;">
	  </div>
	  
	  <div >
		  <div>
		  <h6 style="margin-left: 250px; ">New User?<a href="register">Register</a></h6>
		  </div>
	     <div class="item2">
		     <div style="margin-bottom: 30px;">
					<h1>Welcome Back!</h1>
					<h6>Login to Continue</h6>
			  </div>	
			  <c:if test="${ not empty unLog}">
			  <p style="color: red; text-align: center;">${unLog }</p>
			  <c:remove var="unLog"/>
			  </c:if>	     
			  <form action="userLogin" method="post">
				  <div class="mb-3">
				   
				    <i class="fa-solid fa-envelope"></i> <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder=" Enter Email" name="email">
				      </div>
				  <div class="mb-3">
				    
				  <i class="fa-solid fa-lock"></i>  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="  Enter Password" name="password" >
				  </div>
				  <div class="mb-3 form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div>
				  <button type="submit" class="btn btn-primary" id="d1">Login</button>
				  <button  class="btn btn-" id="d2">FORGOT PASSWORD</button>
				</form>
		  </div>
		  
		  <div style="display: flex; margin: 10px;">
		  <h5>Login With</h5>
		  
		  <div> <img alt="google" src='<c:url value="/xyz/imgs/download (4).png" ></c:url>' class="im"> </div>
		  <div><img alt="facebook" src='<c:url value="xyz/imgs/fb_icon_325x325.png"></c:url>' class="im"></div>
		  <div> <img alt="twitter" src= '<c:url value="/xyz/imgs/Logo_of_Twitter.svg.webp"></c:url>' class="im" ></div>
		  
		  </div>
		  
		</div>
		  
	  </div>
	
</div>

</body>
</html>