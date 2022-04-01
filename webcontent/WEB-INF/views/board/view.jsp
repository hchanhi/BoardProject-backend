<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
    <title>게시판</title>
  </head>
  <body>
     <!-- 게시판 전체를 감싸는 영역 -->
    <div class="board_wrap">
      <!-- 게시판 제목을 감싸는 영역 -->
      <div class="board_title">
        <a href="board.html"><strong>게시판</strong></a>
        <p>게시판 입니다.</p>
      </div>

      <!-- 게시물을 감싸는 영역 -->
      <div class="board_view_wrap">
        <div class="board_view">
          <div class="title">${view.title}</div>
          <div class="info">
            <dl>
              <dt>번호</dt>
              <dd>${view.bno}</dd>
            </dl>
            <dl>
              <dt>작성자</dt>
              <dd>${view.writer}</dd>
            </dl>
            <dl>
              <dt>작성일</dt>
              <dd><fmt:formatDate pattern = "yyyy/MM/dd hh:mm:ss" value="${view.regdate}"/></dd>
            </dl>
            <dl>
              <dt>조회</dt>
              <dd>${view.viewcnt}</dd>
            </dl>
          </div>
          <div class="cont">
            ${view.content}
          </div>
        </div>

        <div class="btn_wrap">
          <button type="button" onclick="location.href='/BoardProject/list.do'" class="list">
            목록
          </button>
          <button onclick="location.href='/BoardProject/edit_form.do?bno=${view.bno}'" class="">
            수정
          </button>
        </div>
      </div>
    </div>

    <div class="newComment">
      <div class="comment_wrap">
        <div class="comment_info">
          <h3>아무개</h3>
        </div>
        <div class="comment">
          댓글 내용이 들어갑니다. 댓글 내용이 들어갑니다. 댓글 내용이
          들어갑니다.
        </div>
      </div>
    </div>
    <div class="comment_write_wrap">
      <div class="comment_title">
        <h1>댓글 작성</h1>
      </div>
      <div class="comment_info">
        <input
          type="text"
          class="comment_id"
          id="comment_id"
          name="commnet_id"
          placeholder="닉네임"
        />

        <input
          class="comment_pw"
          type="password"
          id="comment_pw"
          name="commnet_pw"
          placeholder="비밀번호"
        />
      </div>
      <div class="comment_input">
        <input
          class="comment_text"
          type="text"
          name="commnet_com"
          id="commnet_com"
          placeholder="댓글을 작성해 주세요."
        />
        <button class="submitBtn" onclick="Submit()">등록</button>
      </div>
    </div>
    <footer class="footer">
      <div><a href="/notice/notice.html">공지사항</a></div>
      <div>이용약관</div>
      <div>CONTACT : aaaaa@gmail.com</div>
    </footer>
  </body>
</html>
