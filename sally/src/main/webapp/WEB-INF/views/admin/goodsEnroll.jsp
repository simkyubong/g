<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
</head>
</head>
<body>
 
    <%@include file="../includes/admin/header.jsp" %>
    
                <div class="admin_content_wrap">
                    <div class="admin_content_main">
                    	<form action="/admin/goodsEnroll" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>제품 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsName">
                    			</div>
                    		</div>           
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 카테고리</label>
                    			</div>
                    			<div class="form_section_content">
	                    			<div class="cate_wrap">
										<span>1차 분류</span>
										<select class="cate1">
										
											<option value="none">선택</option>
											
											      <c:forEach var="cateList" items="${cateList}" varStatus="i">
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
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsPrice" value="0">
                    			</div>
                    		</div>               
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsStock" value="0">
                    			</div>
                    		</div>    		
                    		<!-- <div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 요약</label>
                    			</div>
                    			<div class="form_section_content">
                    				<textarea name="goodsIntro" id="goodsIntro_textarea"></textarea>
                    			</div>
                    		</div>       -->  		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 내용</label>
                    			</div>
                    			<div class="form_section_content">
                    				<textarea name="gdsDes" id="goodsContents_textarea"></textarea>
                    			</div>
                    		</div>
                   		</form>
                   			<div class="btn_section">
	                    		<button id="enrollBtn" type="submit" class="btn enroll_btn">등 록</button>
                   				<button id="cancelBtn" type="reset" class="btn">취 소</button>
	                    	</div> 
                    </div>  
                </div>
      <%@include file="../includes/admin/footer.jsp" %>
 
<script>

	let enrollForm = $("#enrollForm")
	
	
	/* 상품 등록 버튼 */
	$("#enrollBtn").on("click",function(e){
		
		e.preventDefault();
		
		enrollForm.submit();
		
	});
	
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
		
		location.href="/admin/goodsManage"
		
	});
	
	
	/* 위지윅 적용 */
	 
	/* 상품 소개 */
	/* ClassicEditor
		.create(document.querySelector('#goodsIntro_textarea'))
		.catch(error=>{
			console.error(error);
		});
		 */
	/* 상품 내용 */	
	ClassicEditor
		.create(document.querySelector('#goodsContents_textarea'))
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
						str+="<option value="+data[i].cateParent+">"+data[i].cateParent+"</option>"
					}
					$(".cate2").html(str);
		})// getJSON 끝
		.fail(function(xhr,status,err){// fail 시작
			if(error){
				error();
			}
		});// fail 끝
	})

	
	
	
</script> 	
 
</body>
</html>
