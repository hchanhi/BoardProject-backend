<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
    <title>게시판</title>
    <!-- 게시판 전체를 감싸는 영역 -->
  <body class="login_body">
    <div class="login_main">
      <h1>로그인</h1>
     <div>
              <c:if test="${check == 1 }">
                <script>
                	alert("아이디나 비밀번호가 일치하지 않습니다.");
                	location.href="/BoardProject/fialLogin.do"
                </script>
              </c:if>
              </div>
      <form method="post" action="/BoardProject/login.do">
        <div class="inp_field">
          <input type="text" required name="userID" id="userID" autocomplete="off">
          <span></span>
          <label>아이디</label>
        </div>

        <div class="inp_field">
          <input type="password" required name="userPassword" id="userPassword" autocomplete="off">
          <span></span>
          <label>비밀번호</label>
        </div>
        <div class="forgot">
         <a href="find_id_form.do" class="find_id">아이디 찾기 </a>

          <p>&nbsp/&nbsp</p>

         <a href="find_password_form.do" class="fidn_pw" > 비밀번호 찾기</a>
        </div>
        
        <button class="lg_submit" type="submit" onclick="Login()" >로그인</button>
        
        <div class="signup_link">아직 회원이 아니신가요?
          <a href="join.jsp">회원가입</a>
        </div>
      </form>
        
      </div>
  </body>
</html>
