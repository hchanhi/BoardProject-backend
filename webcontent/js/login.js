function Login() {
  let re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식

  let id = document.getElementById('userID');
  let pw = document.getElementById('userPassword');
  let chk = "${check}"
  
  //아이디에서 입력 조건
  if (id.value == '') {
    alert('아이디를 입력해 주세요.');
    id.focus(); //포커스를 id박스로 이동.
    return false;
  }

  if (pw.value == '') {
    alert('비밀번호를 입력해 주세요.');
    pw.focus(); //포커스를 Password박스로 이동.
    return false;
  }

  if (
    !check(re, id, '아이디는 4~12자의 영문 대소문자와 숫자로만 입력해 주세요')
  ) {
    return false;
  }

  if (
    !check(re, pw, '패스워드는 4~12자의 영문 대소문자와 숫자로만 입력해 주세요')
  ) {
    return false;
  }  
}

function check(re, what, message) {
  if (re.test(what.value)) {
    return true;
  }
  alert(message);
  what.value = '';
  what.focus();
  //return false;
}

function failLogin(){
	alert("아이디나 비밀번호가 일치하지 않습니다.");
}