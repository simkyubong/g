<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/member/login.css">
</head>
<body>
	<div class="wrap">
		<form id="login_form" method="post">
 			<h2>로그인</h2>
			<div class="login_wrap"> 
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId" placeholder="아이디를 입력해주세요">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input type="password" class="pw_input" name="memberPw" placeholder="비밀번호를 입력해주세요">
					</div>
				</div>
				
				<c:if test = "${result == 0 }">
                	<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            	</c:if>
				<div class="login_button_wrap">
					<input type="button" class="login_button" value="로그인">
				</div>
				
				<div class="Login_find">
	                <a href="">아이디 찾기</a>
	                <span></span>
	                <a href="">비밀번호 찾기</a>
	            </div>
	
	            <div class="Login_join_button">
	                <a href="">회원가입하기</a>
	            </div>
			</div>
		</form>
	
	
	</div>
    <script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
        //alert("로그인 버튼 작동");
        
    	/* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
        
    });
 
	</script>
</body>
</html>