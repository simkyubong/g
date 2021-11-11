<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsModify.css">
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
                    <div class="admin_content_subject"><span>상품 수정</span></div>
                    <div class="admin_content_main">
                    	<form action="/admin/goodsModify" method="post" id="modifyForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsName" value="${goodsInfo.gdsName}">
                    				<span class="ck_warn gdsName_warn">상품 이름을 입력해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 카테고리</label>
                    			</div>
                    			<div class="form_section_content">
	                    			<div class="cate_wrap">
										<span>1차 분류</span>
										<select class="cate1" name="cateName">
											<option value="none">선택</option>
												<c:forEach var="cateList" items="${List}" varStatus="i">
											         <option value="${cateList.cateName}">${cateList.cateName}</option>
										    	</c:forEach>
										</select>
									</div>
									<div class="cate_wrap">
										<span>2차 분류</span>
										<select class="cate2"  name="cateCode">
											<option value="">선택</option>
										</select>
									</div>
								 </div>
                    		</div>
                    		
                    		<div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 사이즈</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="gdsSize" value="${goodsInfo.gdsSize}">
                    				<span class="ck_warn gdsSize_warn">상품 사이즈를 입력해주세요.</span>
                                </div>
                            </div>
                            
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 색상</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="gdsColor" value="${goodsInfo.gdsColor}">
                    				<span class="ck_warn gdsColor_warn">상품 색상을 입력해주세요.</span>
                                </div>
                            </div>
                            
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsPrice" value="${goodsInfo.gdsPrice}">
                    				<span class="ck_warn gdsPrice_warn">상품 가격을 입력해주세요.</span>
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsStock" value="${goodsInfo.gdsStock}">
                    				<span class="ck_warn gdsStock_warn">상품 재고를 입력해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 설명</label>
                    			</div>
                    			<div class="form_section_content bct">
                    				<textarea name="gdsDes" id="gdsDes_textarea">${goodsInfo.gdsDes}</textarea>
                    				<span class="ck_warn gdsDes_warn">상품 설명를 입력해주세요.</span>
                    			</div>
                    		</div>
                    		<input type="hidden" name='gdsNum' value="${goodsInfo.gdsNum}">
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    		<button id="deleteBtn" class="btn delete_btn">삭 제</button>
	                    	</div> 
                    </div>  
                	<form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
						<input type="hidden" name='gdsNum' value="${goodsInfo.gdsNum}">
                	</form>                     
                </div>
 
 				<%@include file="../includes/admin/footer.jsp" %>
 				
 <script>
 
 /* 위지윅 적용 */
 
	/* 상품 내용 */	
	ClassicEditor
		.create(document.querySelector('#gdsDes_textarea'))
		.catch(error=>{
			console.error(error);
	});
		 
		 
	// 상품 카테고리 1차 분류를 변경되면(change 이벤트)
	$(".cate1").on("change",function(){
		
		var cate1=$(".cate1").val();	
		var str="";
		$.getJSON("/admin/"+cate1+".json",	// getJSON 시작
				function(data){
					for(var i=0;i<data.length;i++){		
						//console.log(data[i].cateParent);
						str+="<option value="+data[i].cateName+">"+data[i].cateName+"</option>"
					}
					$(".cate2").html(str);
		})// getJSON 끝
		.fail(function(xhr,status,err){// fail 시작
			if(error){
				error();
			}
		});// fail 끝
	})

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
		moveForm.append('<input type="hidden" name="gdsNum" value="${goodsInfo.gdsNum}">');
		moveForm.attr("action", "/admin/goodsDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
 </script>
</body>
</html>