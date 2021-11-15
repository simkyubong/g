<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/memberDetail.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>

<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
</style>

</head>
<body>
        <%@include file="../includes/admin/header.jsp" %>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>회원 상세정보</span></div>

                    <div class="admin_content_main">
                           <div class="form_section">
                               <div class="form_section_title">
                                   <label>회원 ID</label>
                               </div>
                                <div class="form_section_content">
                                   <input name="memberId" value="<c:out value="${memberInfo.memberId}"/>" disabled>
                            	</div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>비밀번호</label>
                                </div>
                                <div class="form_section_content">
                                    <input type="password" name="memberPw" value="<c:out value="${memberInfo.memberPw}"/>" disabled>
                                </div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>회원 이름</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="memberName" value="<c:out value="${memberInfo.memberName}"/>" disabled>
                                </div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>회원 이메일</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="memberEmail" value="<c:out value="${memberInfo.memberEmail}"/>" disabled>
                                </div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>가입일</label>
                                </div>
                                <div class="form_section_content">
                                    <input value="<fmt:formatDate value='${memberInfo.regDate}' pattern='yyyy-MM-dd'/>" disabled>
                                </div>
                            </div>
                            
                            <div class="btn_section">
								<button id="cancelBtn" class="btn">상품 목록</button>
	                    		<button id="modifyBtn" class="btn enroll_btn">수정 </button>
                            </div>
                    </div>
                    
                    
                    <form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
                	</form>
                </div>

        <%@include file="../includes/admin/footer.jsp" %>

                 

     <script>
		
        /* 목록 이동 버튼 */
    	$("#cancelBtn").on("click", function(e){
    		e.preventDefault();
    		$("#moveForm").submit();	
    	});
        
    	/* 수정 페이지 이동 */
    	$("#modifyBtn").on("click", function(e){
    		e.preventDefault();
    		let addInput = '<input type="hidden" name="memberId" value="${memberInfo.memberId}">';
    		$("#moveForm").append(addInput);
    		$("#moveForm").attr("action", "/admin/memberModify");
    		$("#moveForm").submit();
    	});	
    	
    </script>

</body>
</html>