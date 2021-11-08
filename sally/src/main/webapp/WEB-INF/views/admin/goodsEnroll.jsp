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
 
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
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
										<select class="cate1" name="cateName">
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
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" multiple id ="fileItem" name='uploadFile' style="height: 30px;">
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

	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		
		/* for(let i = 0; i < fileList.length; i++){
			formData.append("uploadFile", fileList[i]);
		} */
		
		$.ajax({
			url: '/admin/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json'
		});
	});
	
	/* var, method related with attachFile */
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB	
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}
	
</script> 	
 
</body>
</html>
