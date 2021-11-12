<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/memberModify.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
 <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
 <script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
</head>
<body>
				<%@include file="../includes/admin/header.jsp" %>
				
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>회원 정보 수정</span></div>
                    <div class="admin_content_main">
                    	<form action="/admin/memberModify" method="post" id="modifyForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>회원 ID</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="memberId" value="${memberInfo.memberId}">
                    				<span class="ck_warn memberName_warn">회원 이름을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		<div class="form_section">
                                <div class="form_section_title">
                                    <label>비밀번호</label>
                                </div>
                                <div class="form_section_content">
                                    <input type="password" name="memberPw" value="${memberInfo.memberPw}">
                    				<span class="ck_warn memberPw_warn">비밀번호를 입력해주세요.</span>
                                </div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>회원 이름</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="memberName" value="${memberInfo.memberName}">
                    				<span class="ck_warn gdsColor_warn">회원 이름을 입력해주세요.</span>
                                </div>
                            </div>
                            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>회원 이메일</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="memberEmail" value="${memberInfo.memberEmail}">
                    				<span class="ck_warn gdsPrice_warn">이메일을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		<input type="hidden" name="memberId" value="${memberInfo.memberId}">
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    		<button id="deleteBtn" class="btn delete_btn">삭 제</button>
	                    	</div> 
                    </div>  
                	<form id="moveForm" action="/admin/memberManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
						<input type="hidden" name='gdsNum' value="${goodsInfo.gdsNum}">
                	</form>                     
                </div>
 
 				<%@include file="../includes/admin/footer.jsp" %>
 	<script>
 	
 	/* 취소 버튼 */
	$("#cancelBtn").on("click", function(e){
		e.preventDefault();
		$("#moveForm").submit();
	});
	
	/* 수정 버튼 */
	$("#modifyBtn").on("click", function(e){
		e.preventDefault();
		$("#modifyForm").submit();
	});
	
	/* 삭제 버튼 */
	$("#deleteBtn").on("click", function(e){
		e.preventDefault();
		let moveForm = $("#moveForm");
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="memberId" value="${memberInfo.memberId}">');
		moveForm.attr("action", "/admin/memberDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
 	
 	</script>
 
 
 </body>
</html>