<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
  <title>회원가입 페이</title>

  <body class="login_body">
    <div class="login_main">
      <h1>회원가입</h1>
      <form action="/BoardProject/join_action.do" id="joinform" method="POST">
        <div class="inp_field">
          <input type="text" id="userNicName" name="userNicName" required autocomplete="off">
          <span></span>
          <label>이름</label>
        </div>

        <div class="inp_field">
         <input type="text" id = "userID" name="userID" autocomplete="off" required  /> 
          
          
          <label>아이디</label>
         
        </div>
		
        <div class="inp_field">
            <input type="email" id="userEmail" name="userEmail" required autocomplete="off">
            <span></span>
            <label>이메일</label>
          </div>
          <div class="inp_field">
            <input type="password" id="userPassword" name="userPassword" required autocomplete="off">
            <span></span>
            <label>비밀번호 4 ~ 12자의 영문과 숫자로만 입력</label>
          </div>
          <div class="inp_field">
            <input type="password" type="hidden" id="pw_check" required autocomplete="off" >
            <span></span>
            <label>비밀번호 확인</label>
          </div>
        
          <button class="lg_submit" type="submit" onclick="signup()" value="Register" >
          회원가입
          </button>
        <div class="signup_link">이미 회원이신가요?
          <a href="/BoardProject/login_form.do">로그인 하기</a>
        </div>
      </form>
        
      </div>
  </body>
</html>
