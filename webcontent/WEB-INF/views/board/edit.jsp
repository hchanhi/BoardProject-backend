<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
    <title>게시판</title>
  </head>
  			<c:if test="${empty sessionScope.loginUser}">
                <script>
                	alert("비회원은 접속이 불가능한 경로입니다.");
                	location.href="/BoardProject/fialLogin.do"
                </script>
              </c:if>
  
  
  <body>
     <!-- 게시판 전체를 감싸는 영역 -->
    <div class="board_wrap">
      <!-- 게시판 제목을 감싸는 영역 -->
      <div class="board_title">
        <a href="board.html"><strong>게시판</strong></a>
        <p>게시판 입니다.</p>
      </div>

      <!-- 게시물 목록을 감싸는 영역 -->
      
      <div class="board_write_wrap">
       <form method="post" action="/BoardProject/edit.do?bno=${view.bno}">
        <div class="board_write">
          <div class="title">
         
            <dl>
              <dt>제목</dt>
              <dd>
                <input
                  type="text"
                  name="title"
                  value="${view.title}"
                >
              </dd>
            </dl>
          </div>
          <div class="info">
          <dl>
            <dt>번호</dt>
              <dd>${view.bno}</dd>
            </dl>
            <dl>
              <dt>작성자</dt>
              <dd>${view.writer}</dd>
            </dl>
            
          </div>
          <div class="cont">
            <textarea name="content" placeholder="내용입력">
			 ${view.content}
        </textarea
            >
          </div>
        </div>

        <div class="btn_wrap">
          <button type="submit" class="list">
            수정
          </button>
          <button type="button" onclick="location.href='board.html'" class="">취소</button>
        </div>
          </form>
      </div>
      
    </div>
  
    <footer class="footer">
      <div><a href="/notice/notice.html">공지사항</a></div>
      <div>이용약관</div>
      <div>CONTACT : aaaaa@gmail.com</div>
    </footer>
  </body>
</html>
