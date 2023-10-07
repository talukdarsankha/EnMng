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
.f{
   width: 1000px;
   box-shadow: 0px 0px 6px gray;
   margin: auto;
   padding: 35px;
   
   margin-top: 20px;
   background-color: wheat;   
}
#d1{
 width: 200px;
 margin: 20px;
 border-radius: 40px;
}

</style>
</head>
<body>
<%@include file="/WEB-INF/resource/nav.jsp" %>



<div class="f">

<div class="c2">
  <h1 style="text-align: center;">Edit Your Notes</h1>

<form action="${pageContext.request.contextPath}/user/updateNote" method="post">
	<div class="mb-3 form-check">
	<label class="form-check-label" for="exampleCheck1"> <h4>Title</h4> </label>
		 <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="${obj.title }" name="title"> 
		 
	</div>

	<div class="form-floating">
	  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="about">
	  ${obj.about}
	  </textarea>
	  <label for="floatingTextarea">About Your Note</label>
	</div>
	<input type="hidden" value="${obj.id}" name="id">
	</div><button type="submit" class="btn btn-primary" id="d1">Edit <i class="fa-regular fa-pen-to-square"></i>  </button>
	
	</form>
</div>

</div>


</body>
</html>