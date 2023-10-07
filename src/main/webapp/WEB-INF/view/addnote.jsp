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

<div style="display: inline;">
 <img alt="sjsk" src='<c:url value="/xyz/imgs/download (5).png"></c:url>'style="width: 100px; margin: auto;" height="70px">
</div>
  <h1 style="text-align: center; display: inline;">Add Your Notes</h1>

<c:if test="${ not empty suc}">
			  <p style="color: Green; text-align: center;">${suc }</p>
			  <c:remove var="suc"/>
			  </c:if>	

<form action="createNote" method="post">
	<div class="mb-3 form-check">
	<label class="form-check-label" for="exampleCheck1"> <h4>Title</h4> </label>
		 <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" > 
		 
	</div>

	<div class="form-floating">
	  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="about"></textarea>
	  <label for="floatingTextarea">About Your Note</label>
	</div><button  type="submit" class="btn btn-primary" id="d1">Add <i class="fa-solid fa-plus fa-lg"></i> </button>
	</form>
</div>

</div>


</body>
</html>