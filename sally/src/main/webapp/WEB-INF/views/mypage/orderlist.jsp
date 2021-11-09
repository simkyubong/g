<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/include_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/css/orderlist.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <div class="container_in">
            <h2>ORDER LIST</h2>
            <div class="order_list">
                <ul class="order_tab">
                    <li class="on"><a href="">주문내역조회<!--  (<span></span>)--> </a></li>
                    <li><a href="">취소/반품/교환 내역 <!--(<span>0</span> )--></a></li>
                    <li><a href="">과거주문내역 <!--(<span>0</span> )--></a></li>
                </ul>
                <form action="">
                    <fieldset>
                        <legend>기간 설정</legend>
                        <div>
                            <select name="order_state" id="order_state">
                                <option value="all">전체 주문처리상태</option>
                                <option value="deposit_before">입금전</option>
                                <option value="shipping_ready">배송준비중</option>
                                <option value="shipping_begin">배송중</option>
                                <option value="shipping_complete">배송완료</option>
                                <option value="cancel">취소</option>
                                <option value="exchange">교환</option>
                                <option value="return">반품</option>
                            </select>
                        </div>
                        <div class="order_period">
                            <ul>
                                <li><a href="">오늘</a></li>
                                <li><a href="">1주일</a></li>
                                <li><a href="">1개월</a></li>
                                <li><a href="">3개월</a></li>
                                <li><a href="">6개월</a></li>
                            </ul>
                        </div>
                        <div class="order_date">
                            <input type="text" id="order_start_date" name="order_start_date">~
                            <input type="text" id="order_end_date" name="order_end_date">
                            <input type="button" value="조회" class="order_date_btn">
                        </div>
                    </fieldset>
                </form>
                <div class="order_attention">
                    <ul>
                        <li>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 주문처리완료 후 15개월 이내의 주문내역을 조회하실 수 있습니다.</li>
                        <li>- 완료 후 15개월 이상 경과한 주문은 [과거주문내역]에서 확인할 수 있습니다.</li>
                        <li>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
                        <li>- 취소/교환/반품 신청은 배송완료일 기준 7일까지 가능합니다.</li>
                    </ul>
                </div>
                <div class="order_info">
                    <h3>주문 상품 정보</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>주문일자<br>
                                    [주문번호]
                                </th>
                                <th>이미지</th>
                                <th>상품정보</th>
                                <th>수량</th>
                                <th>상품구매금액</th>
                                <th>주문처리상태</th>
                                <th>취소/교환/반품</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderlist}" var="orderlist">
                            <tr class="order_info_box">
                                <td class="order_info_date">
                                    <p><fmt:formatDate value="${orderlist.orderDate}" pattern="yyyy-MM-dd"/></p>
                                    <p><a href="">[${orderlist.orderNumber}]</a></p>
                                </td>
                                <td class="order_info_image">
                                    <a href="">${orderlist.gdsImg}</a>
                                </td>
                                <td class="order_info_info">
                                    <p class="order_info_name"><a href="">${orderlist.gdsName}</a></p>
                                    <p class="order_info_option">${orderlist.orderOption}</p>
                                </td>
                                <td class="order_info_quantity">${orderlist.orderQuantity}</td>
                                <td class="order_info_price">${orderlist.orderPrice}</td>
                                <td class="order_info_state">${orderlist.orderState}</td>
                                <td class="order_info_do">-</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div> 
            </div>
            <div class="order_pager">
                <div class="order_pager_in">
                    <a href="" class="prev"><img src="../img/btn_page_prev.gif" alt=""></a>
                    <ul>
                        <li class="on"><a href="">1</a></li>
                    </ul>
                    <a href="" class="next"><img src="../img/btn_page_next.gif" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <%@include file="../include/include_footer.jsp" %>
</body>
</html>