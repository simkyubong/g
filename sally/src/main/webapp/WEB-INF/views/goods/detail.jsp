<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    

<%@include file="../include/include_header.jsp" %>

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
                <td class="price">26,000원</td>
              </tr>
              <tr>
                <th>컬러</th>
                <td>
                  <ul class="color">
                    <li><a href="#">A</a></li>
                    <li><a href="#">B</a></li>
                  </ul>
                  <p>[필수] 옵션</p>
                </td>
              </tr>
              <tr>
                <th>사이즈</th>
                <td>
                  <ul class="size">
                    <li><a href="#">S</a></li>
                    <li><a href="#">M</a></li>
                    <li><a href="#">L</a></li>
                    <li><a href="#">XL</a></li>
                  </ul>
                  <p>[필수] 옵션</p>
                </td>
              </tr>
              <tr>
                <th>수량</th>
                <td class="mainAmount">
                  <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                </td>
              </tr>
            </table>

            <div class="totalPrice">
              <p>
                <span style="font-weight: bold;">합계</span>
                <span> : </span>
                <span class="productTotalPrice" style="font-weight: bold;">0</span>
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
                    <input type="number" value="1"  min='0' max='50'  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
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
              	<c:forEach var="reviewlist" items="${reviewlist}">
                <li>
                  <div class="rvListIn">
                    <div class="rvBody">
                      <p class="rvScore">${reviewlist.rating}점</p>
                      <div class="rvContent">
                        <a href="#">
                          <p class="rvText">${reviewlist.content}</p>
                          <p class="rvImg">
                            <img src="${reviewlist.reviewimg}" alt="리뷰이미지">
                          </p>
                        </a>
                      </div>
                    </div>
                    <div class="rvInfo">
                      <p class="rviTitle">작성자</p>
                      <p class="rviText">${reviewlist.writer}</p>
                    </div>
                  </div>
                </li>
                </c:forEach>
              </ul>
            </div>

            <div class="pdrPager">
            	<ul class="pagination">
					<c:if test="${rvpageMaker.prev}">
   						<li class="paginate_button prev"><a href="/goods/detail?rvpageNum=${rvpageMaker.startPage-1}&rvamount=${rvpageMaker.rvcri.rvamount}#productReview">이전</a></li>
					</c:if>
					<c:forEach var="num" begin="${rvpageMaker.startPage}" end="${rvpageMaker.endPage}">
    					<li class="paginate_button page-item ${rvpageMaker.rvcri.rvpageNum==num?'active':''}">
		    				<a href="/goods/detail?rvpageNum=${num}&rvamount=${rvpageMaker.rvcri.rvamount}#productReview" class="page-link">${num}</a>
			    		</li>
					</c:forEach>
   					<c:if test="${rvpageMaker.next}">
	  					<li class="paginate_button next"><a href="/goods/detail?rvpageNum=${rvpageMaker.endPage+1}&rvamount=${rvpageMaker.rvcri.rvamount}#productReview">다음</a></li>
   					</c:if>
   				</ul>
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
	                  <td colspan="5" style="display: none;">
	                    <div class="pdQna_content">${qnalist.content}</div>
	                  </td>
	                </tr>
                </c:forEach>
              </table>

              <div class="pdqPager">
                <ul class="pagination">
					<c:if test="${pageMaker.prev}">
    					<li class="paginate_button prev"><a href="/goods/detail?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.qcri.amount}#productQna">이전</a></li>
   					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	    				<li class="paginate_button page-item ${pageMaker.qcri.pageNum==num?'active':''}">
		    				<a href="/goods/detail?pageNum=${num}&amount=${pageMaker.qcri.amount}#productQna" class="page-link">${num}</a>
				    	</li>
   					</c:forEach>
     				<c:if test="${pageMaker.next}">
    					<li class="paginate_button next"><a href="/goods/detail?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.qcri.amount}#productQna">다음</a></li>
    				</c:if>
    			</ul>
              </div>
            </div>

          </div>

        </section> <!-- .detailBody End -->
      </div> <!-- #contents End -->


	<script src="/resources/js/product_detail.js"></script>
	<script src="/resources/js/product_qna.js"></script>
    <script src="/resources/js/product_slide_slick.js"></script>
  
  <%@include file="../include/include_footer.jsp" %>