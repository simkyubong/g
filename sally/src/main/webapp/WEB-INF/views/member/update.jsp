<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/member/update.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<div class="wrapper">
	<form id="modify_form" method="post">
		<div class="wrap">
				<h2>회원개인정보 수정</h2>
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<input class="id_input_box" class="form-control" type="text" id="memberId" name="memberId" value="${member.memberId}" readonly="readonly"/>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input type="password" class="pw_input" name="memberPw">
					</div>
					<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input type="password" class="pwck_input">
					</div>
					<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
					<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                	<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName">
					</div>
					<span class="final_name_ck">이름을 입력해주세요.</span>
				</div>
				<div class="mail_wrap">
					<div class="mail_name">이메일</div> 
					<div class="mail_input_box">
						<input class="mail_input" name="memberEmail">
					</div>
					<span class="final_mail_ck">이메일을 입력해주세요.</span>
					<div class="mail_check_wrap">
						<div class="mail_check_input_box">
							<input class="mail_check_input">
						</div>
						<div class="mail_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>				
				<div class="modify_button_wrap">
					<input type="button" class="modify_button" value="수정하기">
				</div>
			</div>
		</form>
	</div>
    
    <script>
    
    /* 유효성 검사 통과유무 변수 */
    var idCheck = false;            // 아이디
    var idckCheck = false;            // 아이디 중복 검사
    var pwCheck = false;            // 비번
    var pwckCheck = false;            // 비번 확인
    var pwckcorCheck = false;        // 비번 확인 일치 확인
    var nameCheck = false;            // 이름
    var mailCheck = false;            // 이메일
    var mailnumCheck = false;        // 이메일 인증번호 확인

	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".modify_button").click(function(){
			
			 /* 입력값 변수 */
	        var pw = $('.pw_input').val();                // 비밀번호 입력란
	        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
	        var name = $('.user_input').val();            // 이름 입력란
	        var mail = $('.mail_input').val();            // 이메일 입력란
	        
	        /* 비밀번호 유효성 검사 */
	        if(pw == ""){
	            $('.final_pw_ck').css('display','block');
	            pwCheck = false;
	        }else{
	            $('.final_pw_ck').css('display', 'none');
	            pwCheck = true;
	        }
	        /* 비밀번호 확인 유효성 검사 */
	        if(pwck == ""){
	            $('.final_pwck_ck').css('display','block');
	            pwckCheck = false;
	        }else{
	            $('.final_pwck_ck').css('display', 'none');
	            pwckCheck = true;
	        }
	        
	        /* 이름 유효성 검사 */
	        if(name == ""){
	            $('.final_name_ck').css('display','block');
	            nameCheck = false;
	        }else{
	            $('.final_name_ck').css('display', 'none');
	            nameCheck = true;
	        }
	        
	        /* 이메일 유효성 검사 */
	        if(mail == ""){
	            $('.final_mail_ck').css('display','block');
	            mailCheck = false;
	        }else{
	            $('.final_mail_ck').css('display', 'none');
	            mailCheck = true;
	        }
	        
	        /* 최종 유효성 검사 */
	        if(pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck){
	 		
	        	$("#modify_form").attr("action", "/member/update");
	            $("#modify_form").submit();   
	        } 
	        
	        return false; 
		});
	});
	
	
	/* 비밀번호 확인 일치 유효성 검사 */
	 
	$('.pwck_input').on("propertychange change keyup paste input", function(){
	 
	    var pw = $('.pw_input').val();
	    var pwck = $('.pwck_input').val();
	    $('.final_pwck_ck').css('display', 'none');
	 
	    if(pw == pwck){
	        $('.pwck_input_re_1').css('display','block');
	        $('.pwck_input_re_2').css('display','none');
	        pwckcorCheck = true;
	    }else{
	        $('.pwck_input_re_1').css('display','none');
	        $('.pwck_input_re_2').css('display','block');
	        pwckcorCheck = false;
	    }        
	    
	});    

	</script>
</body>
</html>