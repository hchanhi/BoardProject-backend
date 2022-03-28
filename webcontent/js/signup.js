function signup() {
  let re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식
  let re2 =
    /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  // 이메일이 적합한지 검사할 정규식

  let nic = document.getElementById('userNicName');
  let id = document.getElementById('userID');
  let email = document.getElementById('userEmail');
  let pw = document.getElementById('userPassword');
  let pw_check = document.getElementById('pw_check');

  if (nic.value == '') {
    alert('닉네임을 입력해 주세요');
    nic.focus();
    return false;
  }

  if (id.value == '') {
    alert('아이디를 입력해 주세요');
    id.focus();
    return false;
  }

  if (email.value == '') {
    alert('이메일을 입력해 주세요');
    email.focus();
    return false;
  }

  if (pw.value == '') {
    alert('비밀번호를 입력해 주세요');
    pw.focus();
    return false;
  }

  if (pw_check.value == '') {
    alert('비밀번호 확인을 입력해 주세요');
    pw_check.focus();
    return false;
  }

  if (
    !check(re, id, '아이디는 4~12자의 영문 대소문자와 숫자로만 입력해 주세요')
  ) {
	id.focus();
    return false;
  }

  if (!check(re2, email, '이메일을 확인해 주세요.')) {
	
	email.focus();
    return false;
  }

  if (
    !check(re, pw, '패스워드는 4~12자의 영문 대소문자와 숫자로만 입력해 주세요')
  ) {
    return false;
  }

  if (pw.value != pw_check.value) {
    alert('비밀번호가 다릅니다. 다시 확인해 주세요.');
    pw_check.value = '';
    pw_check.focus();
    return false;
  }else{ 
	alert('회원가입이 완료되었습니다.');
  
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



