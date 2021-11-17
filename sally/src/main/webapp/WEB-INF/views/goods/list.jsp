<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/include_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/css/top.css" rel="stylesheet"/>

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
        <div class="container_in">
        <!-- 카테고리 이름 출력-->
            <div class="menu_top">
			<c:forEach items="${list}" var="list" begin="0" end="0">
				<h2>${list.cateParent}</h2>
			</c:forEach>
				<ul>
					<c:forEach items="${list}" var="list" begin="0" end="0">
						<c:if
							test="${list.cateParent eq 'TEE'|| list.cateParent eq 'BLOUSE'|| list.cateParent eq 'SHIRT' || list.cateParent eq 'KNIT'}">
							<%@include file="../include/cateList/top.jsp"%>
						</c:if>
						<c:if
							test="${list.cateParent eq 'JACKET'|| list.cateParent eq 'CARDIGAN'|| list.cateParent eq 'COAT' || list.cateParent eq 'JUMPER'}">
							<%@include file="../include/cateList/outer.jsp"%>
						</c:if>
						<c:if
							test="${list.cateParent eq 'DENIM'|| list.cateParent eq 'SLACKS'|| list.cateParent eq 'PANTS' || list.cateParent eq 'SHORT PANTS'}">
							<%@include file="../include/cateList/pants.jsp"%>
						</c:if>
						<c:if
							test="${list.cateParent eq 'OPS'|| list.cateParent eq 'MINI'|| list.cateParent eq 'MIDI' || list.cateParent eq 'LONG'}">
							<%@include file="../include/cateList/ops&skirt.jsp"%>
						</c:if>
						<c:if
							test="${list.cateParent eq 'HAIR'|| list.cateParent eq 'RING'|| list.cateParent eq 'EARRING' || list.cateParent eq 'BRACELET' || list.cateParent eq 'WATCH' || list.cateParent eq 'ETC'}">
							<%@include file="../include/cateList/acc.jsp"%>
						</c:if>
					</c:forEach>
				</ul>
			</div>
            <div class="item_list">
                <div class="item_list_menu">
                    <div class="item_count">

                      <!--   Total : <span>1</span>items -->
                    </div>
                    <div class="item_sort">
                        <ul><!--  
                            <li><a href="">신상품</a></li>
                            <li><a href="">상품명</a></li>
                            <li><a href="">낮은가격</a></li>
                            <li><a href="">높은가격</a></li>
                            <li><a href="">제조사</a></li>
                            <li><a href="">사용후기</a></li>-->
                        </ul>
                    </div>    
                </div>
                <div class="item">
                    <ul>  
                    	<c:forEach items="${list}" var="list">
                        <li>
                            <div class="item_photo">
                                <a href="">
                                	<img src="/resources/img/goods/${list.cateName}/${list.gdsName}.webp" alt="">
                                </a>
                            </div>
                            <div class="item_text">
                                <p class="item_name">
                                    <a href="">${list.gdsName}</a>
                                </p>
                                <p class="item_price">
                                    <span>${list.gdsPrice}</span>원
                                </p>
                            </div>
                        </li>
                        </c:forEach>
                    </ul>
<!--  
                    <div class="item_pager">
                        <div class="item_pager_in">
                            <a href="" class="first"><img src="../top/btn_page_first.gif" alt=""></a>
                            <a href="" class="prev"><img src="../top/btn_page_prev.gif" alt=""></a>
                            <ul>
                                <li class="on"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">4</a></li>
                                <li><a href="">5</a></li>
                            </ul>
                            <a href="" class="next"><img src="../top/btn_page_next.gif" alt=""></a>
                            <a href="" class="last"><img src="../top/btn_page_last.gif" alt=""></a>
                        </div>
                    </div>
                    -->
                </div>
            </div>
        </div>
    </div>
    
    <%@include file="../include/include_footer.jsp"%>
    <script>
	    $('.menu_top li a').on('click', function(){
	        $('.menu_top li a').removeClass("on");
	        $(this).addClass("on");
	    })
    </script>
    <%@include file="../main_footer.jsp" %>
</body>
</html>