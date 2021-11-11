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
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
 
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
  
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>
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
                    		</div><!-- 제품이름 끝 -->
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
                    		</div><!-- 카테고리 끝-->
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 사이즈</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsSize" value="0">
                    			</div>
                    		</div><!-- 상품사이즈 끝 -->
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 색상</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsColor" value="0">
                    			</div>
                    		</div><!-- 상품색상 끝 -->
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 가격</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsPrice" value="0">
                    			</div>
                    		</div><!-- 상품가격 끝 -->
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 재고</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="gdsStock" value="0">
                    			</div>
                    		</div><!-- 상품 재고 끝 -->
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 내용</label>
                    			</div>
                    			<div class="form_section_content">
                    				<textarea name="gdsDes" id="goodsContents_textarea"></textarea>
                    			</div>
                    		</div><!-- 상품 내용 끝 -->
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" multiple id ="fileItem" name='uploadFile' style="height: 30px;">
									<div id="uploadResult">
										<!-- <div id="result_card">
											<div class="imgDeleteBtn">x</div>
											<img src="/display?fileName=attach.png">
										</div> -->
									</div>
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
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		/* if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		} */
		
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
	    	dataType : 'json',
	    	success : function(result){
	    		console.log(result);
	    		showUploadImage(result);
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
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
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr){
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
		
		str += "<div id='result_card'>";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
		str += "</div>";		
		
   		uploadResult.append(str);     
        
	}
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile(){
		
		let targetFile = $(".imgDeleteBtn").data("file");
		
		let targetDiv = $("#result_card");
		
		$.ajax({
			url: '/admin/deleteFile',
			data : {fileName : targetFile},
			dataType : 'text',
			type : 'POST',
			success : function(result){
				console.log(result);
				
				targetDiv.remove();
				$("input[type='file']").val("");
				
			},
			error : function(result){
				console.log(result);
				
				alert("파일을 삭제하지 못하였습니다.")
			}
		});
	}
	
</script> 	
 
</body>
</html>


