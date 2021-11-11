<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsDetail.css">
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
                    <div class="admin_content_subject"><span>상품 상세정보</span></div>

                    <div class="admin_content_main">
                           <div class="form_section">
                               <div class="form_section_title">
                                   <label>상품 이름</label>
                               </div>
                                <div class="form_section_content">
                                   <input name="gdsName" value="<c:out value="${goodsInfo.gdsName}"/>" disabled>
                            	</div>
                            </div>
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>등록 날짜</label>
                                </div>
                                <div class="form_section_content">
                                    <input value="<fmt:formatDate value='${goodsInfo.gdsDate}' pattern='yyyy-MM-dd'/>" disabled>
                                </div>
                            </div>       

                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 카테고리</label>
                                </div>
                                <div class="form_section_content">
                                    <div class="cate_wrap">
                                        <span>1차분류</span>
                                        <select class="cate1" value="<c:out value="${goodsInfo.cateName}"/>" disabled>
                                            <option value="none">${goodsInfo.cateName}</option>
                                        </select>
                                    </div>
                                    <div class="cate_wrap">
                                        <span>2차분류</span>
                                        <select class="cate2" value="<c:out value="${goodsInfo.cateCode}"/>" disabled>
                                            <option value="none">${goodsInfo.cateCode}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 가격</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="gdsPrice" value="<c:out value="${goodsInfo.gdsPrice}"/>" disabled>
                                </div>
                            </div>
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 재고</label>
                                </div>
                                <div class="form_section_content">
                                    <input name="gdsStock" value="<c:out value="${goodsInfo.gdsStock}"/>" disabled>
                                </div>
                            </div>
                            <div class="form_section">
                                <div class="form_section_title">
                                    <label>상품 내용</label>
                                </div>
                                <div class="form_section_content bct">
                                    <textarea name="상품 내용" id="goodsContents_textarea" disabled>${goodsInfo.gdsDes}</textarea>
                                </div>
                            </div>
                            <div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">

									<div id="uploadReslut">
																		
									</div>
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
        $(document).ready(function(){

            ClassicEditor
            .create(document.querySelector('#goodsContents_textarea'))
            .catch(error=>{

                console.error(error);

            });
            
            /* 이미지 정보 호출 */
    		let gdsNum = '<c:out value="${goodsInfo.gdsNum}"/>';
    		let uploadReslut = $("#uploadReslut");		
			
			$.getJSON("/getAttachList", {gdsNum : gdsNum}, function(arr){
				
				if(arr.length === 0){
					
					let str = "";
					str += "<div id='result_card'>";
					str += "<img src='/resources/img/goodsNoImage.png'>";
					str += "</div>";
					
					uploadReslut.html(str);	
					
					return;
				}
				
				let str = "";
				let obj = arr[0];	
				
				let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
				str += "<div id='result_card'";
				str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
				str += ">";
				str += "<img src='/display?fileName=" + fileCallPath +"'>";
				str += "</div>";			
				
			});
            
        }); // $(document).ready
		
        /* 목록 이동 버튼 */
    	$("#cancelBtn").on("click", function(e){
    		e.preventDefault();
    		$("#moveForm").submit();	
    	});
        
    	/* 수정 페이지 이동 */
    	$("#modifyBtn").on("click", function(e){
    		e.preventDefault();
    		let addInput = '<input type="hidden" name="gdsNum" value="${goodsInfo.gdsNum}">';
    		$("#moveForm").append(addInput);
    		$("#moveForm").attr("action", "/admin/goodsModify");
    		$("#moveForm").submit();
    	});	
    	
    </script>

</body>
</html>