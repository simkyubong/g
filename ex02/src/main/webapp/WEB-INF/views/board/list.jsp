<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%@include file="../includes/header.jsp" %>
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
<table  class="table table-bordered" id="dataTable" width="100%" cellspacing="0" border="1">
	<tr>
		<td>No.</td><td>제목</td><td>작성자</td><td>작성일</td>
	</tr>
	<!--             변수명                          배열명 -->
	<c:forEach var="boardlist" items="${list}">
		<tr>
			<td>${boardlist.bno}</td>
			<td><a href="/board/read?bno=${boardlist.bno}">${boardlist.title}</a>[${boardlist.replycnt}]</td>
			<td>${boardlist.writer}</td>
			<td>${boardlist.regdate}</td>
		</tr>
	</c:forEach>
</table>

    <div class="row">
    	<div class="col-lg-12">
    		<form id="searchForm" action="">
    			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
    			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
    			<select name="type">
    				<!-- 
    				<option value="">--</option>
    				<option value="T">제목</option>
    				<option value="C">내용</option>
    				<option value="W">작성자</option>
    				<option value="TC">제목+내용</option>
    				<option value="TW">제목+작성자</option>
    				<option value="TWC">제목+작성자+내용</option>
    				 -->
    				<option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}" />>--</option>
    				<option value="T" <c:out value="${pageMaker.cri.type=='T'?'selected':''}" /> >제목</option>
    				<option value="C" <c:out value="${pageMaker.cri.type=='C'?'selected':''}" /> >내용</option>
    				<option value="W" <c:out value="${pageMaker.cri.type=='W'?'selected':''}" /> >작성자</option>
    				<option value="TC" <c:out value="${pageMaker.cri.type=='TC'?'selected':''}" /> >제목+내용</option>
    				<option value="TW" <c:out value="${pageMaker.cri.type=='TW'?'selected':''}" /> >제목+작성자</option>
    				<option value="TWC" <c:out value="${pageMaker.cri.type=='TWC'?'selected':''}" />>제목+작성자+내용</option>

    			</select>

    			<input type="text" name="keyword" value="${pageMaker.cri.keyword}">
<!-- 
    			 <input type="text" name="keyword">
 -->
    			<button class="btn btn-primary">검색</button>
    			<!-- 
    			<input type="submit">
    			 -->
    		</form>
    	</div>
    </div>




	<ul class="pagination">
	<c:if test="${pageMaker.prev}">
    	<li class="paginate_button prev"><a href="/board/list?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">Previous</a></li>
    </c:if>
    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	    	<li class="paginate_button page-item ${pageMaker.cri.pageNum==num?'active':''}">
	    		<a href="/board/list?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}" class="page-link">${num}</a>
	    	</li>
    </c:forEach>
     <c:if test="${pageMaker.next}">
    	<li class="paginate_button next"><a href="/board/list?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">Next</a></li>
    </c:if>
    </ul>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="/resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="/resources/js/demo/datatables-demo.js"></script>
<%@include file="../includes/footer.jsp" %>    