<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../../../header.jsp" %>
<html>
<head>

<meta charset="UTF-8">
    <title>비밀번호 찾기</title>
    <!-- 게시판 전체를 감싸는 영역 -->
  <body class="login_body">
    <div class="login_main">
      <h1>비밀번호 찾기</h1>
     <div>
              
              </div>
      <form method="post" action="/BoardProject/find_password.do">
        <div class="inp_field">
          <input type="text" required name="userID" id="userID" autocomplete="off">
          <span></span>
          <label>아이디</label>
        </div>
        
         <div class="inp_field">
          <input type="text" required name="userNicName" id="userNicName" autocomplete="off">
          <span></span>
          <label>이름</label>
        </div>

        <div class="inp_field">
          <input type="text" required name="userEmail" id="userEmail" autocomplete="off">
          <span></span>
          <label>이메일</label>
        </div>
        <div class="forgot">
          <a href="./login.jsp" class="find_id">로그인 </a>

          <p>&nbsp/&nbsp</p>
		<a class="fidn_pw" onclick="location.href='/BoardProject/find_id_form.do'">아이디 찾기</a>
        </div>
        
        <input class="lg_submit" type="submit" value="비밀번호 찾기" >
        
        <c:if test="${findPw == 1}">
			<script>
				alert("일치하는 정보가 존재하지 않습니다.")
				location.href="/BoardProject/resetFindPw.do"
			</script>
		
		</c:if>

		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<c:if test="${findPw == 0 }">
		<script>
				alert("찾으시는 비밀번호는' ${userPw}' 입니다.")
				location.href="/BoardProject/resetFindPw.do"
		</script>

		</c:if>
		
        
        <div class="signup_link">아직 회원이 아니신가요?
          <a href="join.jsp">회원가입</a>
        </div>
      </form>
      
      
        
      </div>
  </body>
</html>
