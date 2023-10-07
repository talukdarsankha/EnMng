<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"> <i class="fa-solid fa-book"></i> Enote Trackers</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home"> <i class="fa-solid fa-house-user fa-xl"></i>Home</a>
        </li>
        
        <c:if test="${not empty userLog }">
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/user/addNote"><i class="fa-solid fa-clipboard fa-bounce fa-lg"></i>Add Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/user/viewNote"><i class="fa-regular fa-eye fa-lg"></i>View Notes</a>
        </li>
        </c:if>
        
        
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      <c:if test="${not empty userLog}">
       <a href="#" style="margin: 5px;"><button class="btn btn-warning"> <i class="fa-solid fa-circle-user fa-lg"></i> ${userLog.fullname}</button> </a>
        <a href="${pageContext.request.contextPath}/user/logout" style="margin: 5px;"><button class="btn btn-primary">Logout &nbsp<i class="fa-solid fa-right-to-bracket fa-xl"></i></button> </a>
      
      </c:if>
      <c:if test="${empty userLog }">
       <a href="login" style="margin: 5px;"><button class="btn btn-warning"><i class="fa-solid fa-right-to-bracket fa-xl"></i>Login</button> </a>
        <a href="register" style="margin: 5px;"><button class="btn btn-primary"> <i class="fa-regular fa-id-card fa-xl"></i>Register</button> </a>
      
      </c:if>
               
        
    </div>
  </div>
</nav>


</body>
</html>