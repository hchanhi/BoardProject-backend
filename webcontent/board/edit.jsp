<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
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
        <a href="./board/board.jsp"><strong>게시판</strong></a>
        <p>게시판 입니다.</p>
      </div>

      <!-- 게시물 목록을 감싸는 영역 -->
      <div class="board_write_wrap">
        <div class="board_write">
          <div class="title">
            <dl>
              <dt>제목</dt>
              <dd>
                <input
                  type="text"
                  placeholder="제목을 입력하세요."
                  value="글 제목이 들어갑니다."
                />
              </dd>
            </dl>
          </div>
          <div class="info">
            <dl>
              <dt>작성자</dt>
              <dd>
                <input type="text" placeholder="작성자 입력" value="아무개" />
              </dd>
            </dl>
            <dl>
              <dt>비밀번호</dt>
              <dd>
                <input
                  type="password"
                  placeholder="비밀번호를 입력하세요"
                  value="1234"
                />
              </dd>
            </dl>
          </div>
          <div class="cont">
            <textarea placeholder="내용입력">
글 내용이 들어갑니다.
글 내용이 들어갑니다.
글 내용이 들어갑니다.
글 내용이 들어갑니다.
글 내용이 들어갑니다.
        </textarea
            >
          </div>
        </div>

        <div class="btn_wrap">
          <button onclick="location.href='./board/boardView.jsp'" class="list">
            수정
          </button>
          <button onclick="location.href='./board/board.jsp'" class="">취소</button>
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
