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
.msg{
 position: absolute;
 z-index: 100;

 top: 100px;
 left: 450px;
}

img {
	position: absolute;
	z-index: 20;
}
</style>
</head>
<body>




<%@include file="/WEB-INF/resource/nav.jsp" %>
<div>
<img alt="homeimg" src='<c:url value="/xyz/imgs/photo-1517842645767-c639042777db.avif"></c:url>' height="500ps;" width="1265px;">
</div>
<c:if test="${ not empty logout }">
<div class="msg">
<h3 style="color: white; text-align: center;">${logout}</h3>
<c:remove var="logout"/>
</div>
</c:if>

</body>
</html>