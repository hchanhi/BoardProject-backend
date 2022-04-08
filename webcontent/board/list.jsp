<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
    <title>게시판</title>
  </head>
  <body>
    <!-- 게시판 목록 영역 -->
    <!-- 게시판 전체를 감싸는 영역 -->
    <div class="board_wrap">
      <!-- 게시판 제목을 감싸는 영역 -->
      <div class="board_title">
        <a href="/BoardProject/list.do"><strong>게시판</strong></a>
        <p>게시판 입니다.</p>
      </div>

      <!-- 게시물 목록을 감싸는 영역 -->

      <div class="board_list_wrap">
        <div class="board_list">
          <div class="top">
            <div class="num">번호</div>
            <div class="title">제목</div>
            <div class="writer">작성자</div>
            <div class="date">작성일</div>
            <div class="count">조회</div>
          </div>
          
          <c:forEach items="${list}" var="list">
          <div>
            <div class="num">${lsit.bno}</div>
            <div class="title"><a href="boardView.html">${list.title}</a></div>
            <div class="writer">${list.writer}</div>
            <div class="date">${lsit.regdate}</div>
            <div class="count">${list.viewcnt}</div>
          </div>
          </c:forEach>
         

        <div class="board_page">
          <!-- 나중에 <<, <, >, >> 대신 이미지 사용하기 -->
          <a href="#" class="bt first"><<</a>
          <a href="#" class="bt prev"><</a>
          <a href="#" class="num on">1</a>
          <a href="#" class="num">2</a>
          <a href="#" class="num">3</a>
          <a href="#" class="num">4</a>
          <a href="#" class="num">5</a>
          <a href="#" class="bt next">></a>
          <a href="#" class="bt last">>></a>
        </div>
        
        <div class="btn_wrap">
          <button onclick="location.href='./boardProject/write.do'" class="list">
            글쓰기
          </button>
        </div>
      </div>
    </div>
    <footer class="footer">
      <div><a href="/notice/notice.html">공지사항</a></div>
      <div>이용약관</div>
      <div>CONTACT : aaaaa@gmail.com</div>
    </footer>
  </body>
</html>
