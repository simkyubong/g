<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="../includes/header.jsp" %>

<table border="1">
	<tr><td>번호</td><td><input type="text" id="bno" value="${read.bno}">${read.bno}</td></tr>
	
	<tr><td>제목</td><td>${read.title}</td></tr>
	<tr><td>내용</td><td>${read.content}</td></tr>
	<tr><td>작성자</td><td>${read.writer}</td></tr>
	<tr><td>작성일자</td><td>${read.regdate}</td></tr>
	<tr>
		<td colspan="2">
			<button><a href="/board/modify?bno=${read.bno}">글수정</a></button>
			<button><a href="/board/remove?bno=${read.bno}">글삭제</a></button>
		</td>
	</tr>
	
</table>

<div class="row"><!-- class="row" 시작 -->
	<div class="col-lg-12"><!-- class="col-lg-12" 시작 -->
		<div class="panel panel-default"><!-- class="panel panel-default" 시작 -->
			<div class="panel-heading"><!-- class="panel-heading" 시작 -->
			</div><!-- class="panel-heading" 끝 -->
			<div class="panel-body"><!-- class="panel-body" 시작 -->
				<div class="uploadResult"><!-- class="chat" 시작 -->
					<ul></ul>
				</div><!-- class="chat" 끝-->
			</div><!-- class="panel-body" 끝 -->
			<!-- .panel .chat-panel -->
		</div><!-- class="panel panel-default" 끝 -->
	</div><!-- class="col-lg-12" 끝 -->
</div><!-- class="row" 끝 -->

<div class="row"><!-- class="row" 시작 -->
	<div class="col-lg-12"><!-- class="col-lg-12" 시작 -->
		<div class="panel panel-default"><!-- class="panel panel-default" 시작 -->
			<div class="panel-heading"><!-- class="panel-heading" 시작 -->
				<i class="fa fa-comments fa-fw"></i>Reply
				<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글 쓰기</button>
			</div><!-- class="panel-heading" 끝 -->
			
			
			
			<div class="panel-body"><!-- class="panel-body" 시작 -->
				<ul class="chat"><!-- class="chat" 시작 -->

				</ul><!-- class="chat" 끝-->
			</div><!-- class="panel-body" 끝 -->
			<!-- .panel .chat-panel -->
			<div class="panel-footer">
			</div>
		</div><!-- class="panel panel-default" 끝 -->
	</div><!-- class="col-lg-12" 끝 -->
</div><!-- class="row" 끝 -->





<%@include file="../includes/footer.jsp" %>












