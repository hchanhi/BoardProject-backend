let inputId = document.getElementsByClassName('comment_id')[0];
let inputPw = document.getElementsByClassName('comment_pw')[0];
let inputText = document.getElementsByClassName('comment_text')[0];
let submitBtn = document.getElementsByClassName('submitBtn');

function addComment() {
  const box = document.getElementsByClassName('newComment')[0];

  const commentWrap = document.createElement('div');
  const comments = document.createElement('div');
  const userName = document.createElement('h3');
  const mainText = document.createElement('div');

  commentWrap.classList.add('comment_wrap');
  comments.classList.add('comment_info');
  mainText.classList.add('comment');

  userName.innerText = inputId.value;
  mainText.innerText = inputText.value;

  commentWrap.appendChild(comments);
  commentWrap.appendChild(userName);
  commentWrap.appendChild(mainText);

  box.appendChild(commentWrap);
}

function Submit() {
  if (inputId.value == '') {
    alert('닉네임을 입력해 주세요.');
    id.focus(); //포커스를 id박스로 이동.
    return false;
  }

  if (inputPw.value == '') {
    alert('비밀번호를 입력해 주세요.');
    pw.focus(); //포커스를 Password박스로 이동.
    return false;
  }

  if (inputText.value == '') {
    alert('댓글을 입력해 주세요.');
    pw.focus(); //포커스를 Password박스로 이동.
    return false;
  }

  addComment();
  inputId.value = '';
  inputPw.value = '';
  inputText.value = '';
  alert('댓글이 등록되었습니다.');
}
