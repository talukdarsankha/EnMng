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
a {
	margin: 5px;
}

.f{
   width: 1000px;
   box-shadow: 0px 0px 6px gray;
   margin: auto;
   padding: 25px;
   
   margin-top: 20px;
   background-color: wheat; 
   margin-bottom: 50px;  
}
</style>
</head>
<body>

<%@include file="/WEB-INF/resource/nav.jsp" %>

<h1 style="text-align: center; color: gray;">View All Notes</h1>

<c:if test="${not empty succ}">
 <h4 style="color: green; text-align: center;">${succ}</h4>
 <c:remove var="succ"/>
</c:if>

<c:forEach var="e" items="${notes}">

<div class="f">
  <div style="width: 100px; margin: auto;">
  <img alt="notes" src='<c:url value="/xyz/imgs/images.png" ></c:url>' style="width: 100px; margin: auto;" height="100px">
  </div>
  
  <div >
      <h1>${e.title }</h1>
      <p> About :${e.about}</p>
      <h5>Last Update: ${e.saveDate}</h5>
  </div>
  
  <div style="display: flex; width: 300px; margin: auto;">
  <a href="editNote/${e.id}"> <button  class="btn btn-primary" id="d2">Edit Note</button> </a>
  <a href="deleteNote/${e.id }"> <button  class="btn btn-danger" id="d2">Delete Note</button> </a>
  </div>


</div>

</c:forEach>

  
  

</div>


</body>
</html>