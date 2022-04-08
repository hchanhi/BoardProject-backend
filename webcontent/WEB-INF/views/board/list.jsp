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
        <a href="./board.jsp"><strong>게시판</strong></a>
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
            <div class="count">조회수</div>
          </div>
          
          <c:forEach items="${list}" var="list">
          <div>
            <div class="num">${list.bno}</div>
            <div class="title"><a href="/BoardProject/view.do?bno=${list.bno}">${list.title}</a></div>
            <div class="writer">${list.writer}</div>
            <div class="date"><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${list.regdate}"/></div>
            <div class="count">${list.viewcnt}</div>
          </div>
          </c:forEach>
          </div>
      
        <div class="board_page">
          <!-- 나중에 <<, <, >, >> 대신 이미지 사용하기 -->
         <c:if test="${pageMaker.prev}">
          <a href="listPage${pageMaker.makeQuery(pageMaker.startPage)}" class="bt first"><<</a>
          <a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}" class="bt prev"><</a>
         </c:if>
         <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
  			<li><a href="listPage?page=${idx}">${idx}</a></li>
  		 </c:forEach>
         <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
          <a href="listPage${pageMaker.makeQuery(pageMaker.endPage + 1)}" class="bt next">></a>
          <a href="listPage${pageMaker.makeQuery(pageMaker.endPage)}" class="bt last">>></a>
 		 </c:if> 
        </div>
       
        <c:if test="${!empty sessionScope.loginUser}">
        <div class="btn_wrap">
          <button onclick="location.href='/BoardProject/write_form.do'" class="list">
            글쓰기
          </button>
        </div>
        </c:if>
      </div>
    </div>
    <footer class="footer">
      <div><a href="/notice/notice.html">공지사항</a></div>
      <div>이용약관</div>
      <div>CONTACT : aaaaa@gmail.com</div>
    </footer>
  </body>
</html>
