<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    

<jsp:include page="header.jsp"></jsp:include>

      <div id="contents">
        <!-- 상품 정보 -->
        <section class="detailHead">
          <!-- 상품 이미지 -->
          <div class="dhImg">
            <img src="https://flymodel.co.kr/web/product/big/202106/0fe6be0bfa6de4a41f27193868ff0ce5.webp">
          </div>
          <div class="productInfo">
            <h2>상품 이름</h2>

            <table border="1px">
              <tr>
                <th>판매가</th>
                <td>26,000원</td>
              </tr>
              <tr>
                <th>컬러</th>
                <td>
                  <ul>
                    <li><a href="#">A</a></li>
                    <li><a href="#">B</a></li>
                  </ul>
                  <p>[필수] 옵션</p>
                </td>
              </tr>
              <tr>
                <th>사이즈</th>
                <td>
                  <ul>
                    <li><a href="#">S</a></li>
                    <li><a href="#">M</a></li>
                    <li><a href="#">L</a></li>
                    <li><a href="#">XL</a></li>
                  </ul>
                  <p>[필수] 옵션</p>
                </td>
              </tr>
            </table>

            <div class="totalPrice">
              <p>
                <span style="font-weight: bold;">합계</span>
                <span> : </span>
                <span style="font-weight: bold;">0</span>
                <span>원 (</span>
                <span class="productAmount">0</span>
                <span>개 )</span>
              </p>
            </div>

            <div class="buttons">
              <a href="#" class="btnBuy">구매하기</a>
              <a href="#" class="btnCart">장바구니 담기</a>
              <a href="#" class="btnWish">찜하기</a>
            </div>

          </div><!-- #productInfo End -->
        </section> <!-- .detailHead End -->

        <section class="detailBody">

          <!-- 상품 상세 페이지 -->
          <div id="productDetail">
            <ul class="pdMenu">
              <li class="selected"><a href="#productDetail">상품상세</a></li>
              <li><a href="#productRelated">관련상품</a></li>
              <li><a href="#productReview">상품후기</a></li>
              <li><a href="#productQna">상품문의</a></li>
            </ul>

            <div class="pdMain">
              <img src="" alt="">
              상품 상세 설명
            </div>
          </div>

          <!-- 관련상품 -->
          <div class="productRelated" id="productRelated">
            <ul class="pdMenu">
              <li><a href="#productDetail">상품상세</a></li>
              <li class="selected"><a href="#productRelated">관련상품</a></li>
              <li><a href="#productReview">상품후기</a></li>
              <li><a href="#productQna">상품문의</a></li>
            </ul>

            <div class="pdrList">
              <div class="pdrListIn">
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">A</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202108/2df7099ad3285dfde38a7844100b3586.webp"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">B</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/621b143ec8ee24b81d20de01103c4d9e.webp"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">C</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/64f5a596d576d0306f9dc38b953854c1.webp"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">D</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/big/202108/ead2f6e9e8e099fb51737c5d7e56d6f5.webp"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">E</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">F</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">G</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">H</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">I</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>
                <div class="box">
                  <p class="pdrImg">
                    <a href="#"><img
                        src="https://flymodel.co.kr/web/product/medium/202109/6575e238444fd0a0bc399eb0e1aea836.gif"></a>
                  </p>
                  <p class="pdrName">
                    <input type="checkbox">
                    <a href="#">J</a>
                  </p>
                  <p class="pdrPrice">00,000원</p>
                  <p class="pdrOption">
                    <select>
                      <option value="*">옵션선택</option>
                      <option value="**">-------------------</option>
                      <option value="AA">AA</option>
                      <option value="BB">BB</option>
                    </select>
                  </p>
                  <div class="pdrAmount">
                    <input type="text" value="1">
                    <div class="updown">
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                          alt="수량증가" class="up"></a>
                      <a href="#"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                          alt="수량감소" class="down"></a>
                    </div>
                  </div>
                </div>

              </div> <!-- .pdrListIn-->
            </div> <!-- .pdrList -->
            <div class="control">
              <p class="prev">이전으로</p>
              <p class="next">다음으로</p>
            </div>
            <div class="pdrBtn">
              <a href="#">선택상품 같이구매</a>
              <a href="#">선택상품 장바구니 담기</a>
            </div>
          </div>

          <!-- 상품후기 -->
          <div class="productReview" id="productReview">
            <ul class="pdMenu">
              <li><a href="#productDetail">상품상세</a></li>
              <li><a href="#productRelated">관련상품</a></li>
              <li class="selected"><a href="#productReview">상품후기</a></li>
              <li><a href="#productQna">상품문의</a></li>
            </ul>

            <div class="pdReview">
              <h3>REVIEW</h3>
              <p class="st">후기를 확인하세요</p>
              <ul class="rvList">
                <li>
                  <div class="rvListIn">
                    <div class="rvBody">
                      <p class="rvScore">4점</p>
                      <div class="rvContent">
                        <a href="#">
                          <p class="rvText">구입하길 잘했어요<br>
                            다음에도 다시 주문할 것 같아요~~</p>
                          <p class="rvImg">
                            <img
                              src="https://assets5.cre.ma/p/flymodel-co-kr/reviews/00/00/58/49/68/image1/thumbnail_cbbdc58a7224a380.jpg"
                              alt="리뷰이미지">
                          </p>
                        </a>
                      </div>
                    </div>
                    <div class="rvInfo">
                      <p class="rviTitle">작성자</p>
                      <p class="rviText">홍길동</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="rvListIn">
                    <div class="rvBody">
                      <p class="rvScore">5점</p>
                      <div class="rvContent">
                        <a href="#">
                          <p class="rvText">배송도 빠르고 만족합니다!</p>
                          <p class="rvImg">
                            <img
                              src="https://assets5.cre.ma/p/flymodel-co-kr/reviews/00/00/58/49/92/image1/thumbnail_04c685b0ebdb504e.jpg"
                              alt="리뷰이미지">
                          </p>
                        </a>
                      </div>
                    </div>
                    <div class="rvInfo">
                      <p class="rviTitle">작성자</p>
                      <p class="rviText">임꺽정</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>

            <div class="pdrPager">
              <a href="#">이전</a>
              <ul>
                <li><a href="#" class="active">1</a></li>
                <li><a href="#">2</a></li>
              </ul>
              <a href="#">다음</a>
            </div>
          </div>

          <!-- 상품문의 -->
          <div class="productQna" id="productQna">
            <ul class="pdMenu">
              <li><a href="#productDetail">상품상세</a></li>
              <li><a href="#productRelated">관련상품</a></li>
              <li><a href="#productReview">상품후기</a></li>
              <li class="selected"><a href="#productQna">상품문의</a></li>
            </ul>

            <div class="pdQna">
              <h3>Q&amp;A</h3>
              <p>상품에 대한 문의사항을 확인해보세요</p>
              <table border="1px">
                <tr>
                  <th class="t_num">번호</th>
                  <th class="t_title">제목</th>
                  <th class="t_writer">작성자</th>
                  <th class="t_date">작성일</th>
                  <th class="t_view">조회</th>
                </tr>
               	<c:forEach var="qnalist" items="${list}">
	                <tr class="pdQna_contentShow">
	                  <td>${qnalist.bno}</td>
	                  <td>
	                    ${qnalist.title}
	                  </td>
	                  <td>${qnalist.writer}</td>
	                  <td><fmt:formatDate pattern = "yyyy-MM-dd" value="${qnalist.regdate}"/></td>
	                  <td>${qnalist.views}</td>
	                </tr>
	                <tr class="pdQna_content_wrap">
	                  <td colspan="5">
	                    <div class="pdQna_content">${qnalist.content}</div>
	                  </td>
	                </tr>
                </c:forEach>
              </table>

              <div class="pdqPager">
                <ul class="pagination">
					<c:if test="${pageMaker.prev}">
    					<li class="paginate_button prev"><a href="/product/detail?pageNum=${pageMaker.pageStart-1}&amount=${pageMaker.cri.amount}#productQna">이전</a></li>
   					</c:if>
					<c:forEach var="num" begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}">
	    				<li class="paginate_button page-item ${pageMaker.cri.pageNum==num?'active':''}">
		    				<a href="/product/detail?pageNum=${num}&amount=${pageMaker.cri.amount}#productQna" class="page-link">${num}</a>
				    	</li>
   					</c:forEach>
     				<c:if test="${pageMaker.next}">
    					<li class="paginate_button next"><a href="/product/detail?pageNum=${pageMaker.pageEnd+1}&amount=${pageMaker.cri.amount}#productQna">다음</a></li>
    				</c:if>
    			</ul>
              </div>
            </div>

          </div>

        </section> <!-- .detailBody End -->
      </div> <!-- #contents End -->

	<script src="/resources/js/product_qna.js"></script>
    <script src="/resources/js/product_slide_slick.js"></script>
  
  	<jsp:include page="footer.jsp"></jsp:include>    