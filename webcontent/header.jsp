<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/css.css" />
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script
      src="https://kit.fontawesome.com/c7e7ea80ae.js"
      crossorigin="anonymous"
    ></script>
    <script src="./js/navbar.js" defer></script>
    <script src="./js/login.js" defer></script>
    <script src="./js/signup.js" defer></script>
    
    <title>게시판</title>
  </head>
  <body>
    <div class="board_nav">
      <nav class="nav_bar">
        <a href="./index.jsp" class="logo">logohere</a>

        <ul class="menu">
          <li><a href="./index.jsp">HOME</a></li>
          <li><a href="/BoardProject/list.do">BOARD</a></li>
          <li><a href="/QnA/QnA.html">Q&A</a></li>
          <li><a href="/notice/notice.html">NOTICE</a></li>
        </ul>
        
        
        <c:choose>
		<c:when test="${empty sessionScope.loginUser}">
		<ul class="before_profile">
        		<li><a href="/BoardProject/login_form.do">login</a></li>
       			<li>/</li>
       			<li><a location href="/BoardProject/join_form.do">join</a></li>
     			</ul>
		</c:when>
		<c:otherwise>
		<ul class="before_profile">
          <li><a href=#>${sessionScope.loginUser.userID} </a></li>
          <li>/</li>
          <li><a onclick="location.href='/BoardProject/logout.do'">로그아웃</a></li>
        </ul>
		</c:otherwise>
		</c:choose>

        <a href="#" class="toggleButton">
          <i class="fa-solid fa-bars"></i>
        </a>
      </nav>
    </div>
    </body>