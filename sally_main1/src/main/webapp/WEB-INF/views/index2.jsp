<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <title>Document</title>    
    <link href="sresources/css/admin/reset.css" rel="stylesheet">
    <link href="resources/css/admin/style.css" rel="stylesheet">
    <link href="resources/css/admin/style_live_best.css" rel="stylesheet">
    <link href="resources/css/admin/header.css" rel="stylesheet">
    <script
  		src="https://code.jquery.com/jquery-3.4.1.js"
	  	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  	crossorigin="anonymous">
    </script>
</head>
<body>
    <div id="wrap">
        <div id="header">
            <div class="header_in"><%@ page contentType="text/html; charset=" %>
                <div class="header_banner">
                    <a href="">
                        <p>
                            코로나 19 관련 고객 전달사항 알림 
                            <img src="./img/gnb_icon/ic-clear.svg" alt="">
                        </p>
                    </a>
                </div>
                <div class="logo">
                    <div class="logo_in"></div>
                        <a href="">
                            <img src="./h_logo_2.svg" alt="">
                            <p class="h_logo_name">Sally</p>
                        </a>
                    </div>
                    <div class="serach_box">
                        <input type="text" placeholder="" class="ser_box_text">
                        <Button class="serach_box_btn">
                                <img src="./img/gnb_icon/ic_search.svg" alt="">
                        </Button>
                    </div>
                </div>
                <div class="gnb">
                    <div class="gnb_in">
                        <div class="g_logo">
                            <a href="">
                                <!-- <img src="./h_logo_2.svg" alt=""> -->
                            </a>
                        </div ><!-- g_logo -->
                        <div class="h_gnb">
                            <ul class="h_manu">
                                <li><a href="">Best50</a></li>
                                <li>
                                    <a href="">시그니처</a>
                                    <div class="sig_in">
                                        <ul>
                                            <li><a href="">155cm VER.</a></li>
                                            <li><a href="">160cm VER.</a></li>
                                            <li><a href="">165cm VER.</a></li>
                                            <li><a href="">airport</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="">당일발송</a></li>
                            </ul>    
                            <ul class="h_category">
                                <li>
                                    <a href="">TOP</a>
                                    <div class="TOP_in">
                                        <ul>
                                            <li><a href="">Tee</a></li>
                                            <li><a href="">BLOUSE</a></li>
                                            <li><a href="">SHIRT</a></li>
                                            <li><a href="">KNIT</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="">OUTER</a>
                                    <div class="OUTER_in">
                                        <ul>
                                            <li><a href="">JACKET</a></li>
                                            <li><a href="">CARDIGAN</a></li>
                                            <li><a href="">COAT</a></li>
                                            <li><a href="">JUMPER</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="">PANTS</a>
                                    <div class="PANTS_in">
                                        <ul>
                                            <li><a href="">DENIM</a></li>
                                            <li><a href="">SLACKS</a></li>
                                            <li><a href="">PANTS</a></li>
                                            <li><a href="">SHORT PANTS</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="">OPS/SKIRT</a>
                                    <div class="PANTS_in">
                                        <ul>
                                            <li><a href="">OPS</a></li>
                                            <li><a href="">MINI</a></li>
                                            <li><a href="">MIDI</a></li>
                                            <li><a href="">LONG</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <a href="">ACC</a>
                                    <div class="ACC_in">
                                        <ul>
                                            <li><a href="">HAIR</a></li>
                                            <li><a href="">RING</a></li>
                                            <li><a href="">EARRING</a></li>
                                            <li><a href="">BRACELET</a></li>
                                            <li><a href="">WATCH</a></li>
                                            <li><a href="">ETC</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="">SHOSE</a></li>
                                <li><a href="">BAG</a></li>
                                <!-- <li>
                                    <a href="">SUMMER</a>
                                    <div class="SUMMER_in">
                                        <ul>
                                            <li><a href="">BIKINI</a></li>
                                            <li><a href="">SWIMSUIT</a></li>
                                            <li><a href="">BEACHWEAR</a></li>
                                            <li><a href="">ETC</a></li>
                                        </ul>
                                    </div>
                                </li> -->
                                <li>
                                    <a href="">SEASON OFF</a>
                                    <div class="SEASIN_off_in">
                                        <ul>
                                            <li><a href="">TOP</a></li>
                                            <li><a href="">OUTERR</a></li>
                                            <li><a href="">PANTS</a></li>
                                            <li><a href="">OPS&SKIRT</a></li>
                                            <li><a href="">ACC&BAG&SHOES</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul><!-- h_category -->
                            <ul class="h_joinBar">
                                <li class="">
                                    <a href="">LOGIN</a>
                                </li>
                                <li class="">
                                    <a href="">JOIN</a>
                                </li>
                                <li class="my_page">
                                    <p>MYPAGE</p>
                                    <div class="my_page_in">
                                        <ul>
                                            <li><a href="">주문내역조회</a></li>
                                            <li><a href="">관심상품</a></li>
                                            <li><a href="">적립금내역</a></li>
                                            <li><a href="">쿠폰내역조회</a></li>
                                            <li><a href="">게시물관리</a></li>
                                            <li><a href="">배송주소록관리</a></li>
                                            <li><a href="">최근본상품</a></li>
                                        </ul>
                                    </div><!-- h_myPage -->
                                </li>
                                <li class="board">
                                    <p>BOARD</p>
                                    <div class="board_in">
                                        <ul>
                                            <li><a href="">NOTICE</a></li>
                                            <li><a href="">Q & A</a></li>
                                            <li><a href="">REVIEW</a></li>
                                            <li><a href="">MODEL</a></li>
                                        </ul>
                                    </div><!-- h_board -->
                                </li>
                                <li><a href=""></a></li>
                            </ul><!-- h_joinBar -->
                            <ul class="h_join_menu">
                                <li class="cart_in">
                                    <a href="">
                                        <p class="hide">찜목록</p>
                                        <img src="./img/gnb_icon/ic_wishlist.svg" alt="">
                                    </a>
                                    <div> </div>
                                </li> <!-- cart_in -->
                                <li class="cart_in">
                                    <a href="">
                                        <p class="hide">장바구니</p>
                                        <img src="./img/gnb_icon/ic_cart.svg" alt="">
                                    </a>
                                    <div> </div>
                                </li> <!-- cart_in -->
                                <!-- <li class="search_in">
                                    <a href="">
                                        <p class="hide">검색창</p>
                                        <img src="./img/gnb_icon/ic-my.svg" alt="">
                                    </a>
                                    <div></div> -->
                                </li><!-- search_in -->
                                <li class="category_in">
                                    <a href="">
                                        <p class="hide">햄버거</p>
                                        <img src="./img/gnb_icon/ic_hamburger.svg" alt="">
                                    </a>
                                    <div></div>
                                </li><!-- category_in -->
                            </ul><!-- h_join_menu -->
                        </div><!-- h_gnb -->   
                    </div><!-- gnb_in -->
                </div><!-- gnb -->
            </div><!-- header_int -->
        </div><!-- header -->

        <div id="container">
            <div class="main_slide">
                <div class="main_silde_in">
                    <a href="">
                        <img src="./img/main05.jpg" alt="">
                        <p class="">손쉽게 찾아가는 나만의 쇼핑</p>
                    </a>
                    <!-- <a href=""><img src="./img/main01.jpg" alt=""></a> -->
                </div>
            </div><!-- main_slide -->

            <div class="sec1_main_notice">
                <h2></h2>
                <p></p>
                <div class="sec1_main_notice_in">
                    <ul>
                        <li>
                            <h2></h2>
                            <a href="">
                                <img src="./img/sub_01.jpg" alt="">
                                <h2></h2>
                                <p></p>
                            </a>
                            <div>
                                <h2>Best</h2>
                                <p>가을베스트 10 </p>
                            </div>
                        </li>
                        <li>
                            <h2></h2>
                            <a href="">
                                <img src="./img/sub_02.jpg" alt="">
                                <h2></h2>
                                <p></p>
                            </a>
                            <div>
                                <h2>신상품</h2>
                                <p>샐리 메이드</p>
                            </div>
                        </li>
                        <li>
                            <h2></h2>
                            <a href="">
                                <img src="./img/sub_03.jpg" alt="">
                                <p></p>
                                <p></p>
                            </a>
                            <div>
                                <h2>Sally MADE</h2>
                                <p>155cm 160cm 160cm Line</p>
                            </div>
                        </li>
                        <li>
                            <h2></h2>
                            <div class="con">
                                <a href="">
                                    <img src="./img/sub_04.jpg" alt="">
                                    <p></p>
                                <p></p>
                                </a>
                                <div>
                                    <h2>Today List</h2>
                                    <p>개인별 추천상품List !!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <h2></h2>
                            <div class="con">
                                <a href="">
                                    <img src="./img/sub_05.jpg" alt="">
                                    <p></p>
                                <p></p>
                                </a>
                                <div>
                                    <h2>Notice</h2>
                                    <p>offline store closed!</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div><!-- section_main_notice -->

            <div class="sec2_nowLive_bset">
                <h2>실시간베스트</h2>
                <p>지금 사랑받는 실시간 베스트 아이템</p>
                <div class="tap_pager">
                    <ul>
                        <li class="live_today_hot">
                            <a href="">
                                <p class="live_today_hot_h">오늘의 실시간 HOT</p>
                            </a>
                            <div class="tap_pager_in">
                                <ul class="">
                                    <li><a href=""><img src="./img/blue/buleitem1.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem2.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem3.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem4.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem5.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem7.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem8.jpg" alt=""></a></li>
                                    <li><a href=""><img src="./img/blue/buleitem9.jpg" alt=""></a></li>

                                </ul>
                            </div>
                        </li>
                        <li class="live_today_outer">
                            <a href="">
                                <p class="live_today_outer_in">OUTER</p>
                            </a>
                            <div class="tap_pager_in_outer">
                                <ul class="">
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="live_today_top">
                            <a href="">
                                <p class="live_today_top_in">TOP</p>
                            </a>
                            <div class="tap_pager_in_top">
                                <ul class="">
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="live_today_bottom">
                            <a href="">
                                <p class="live_today_bottom_in">BOTTOM</p>
                            </a>
                            <div class="tap_pager_in_bottom">
                                <ul class="">
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="live_today_ops">
                            <a href="">
                                <p class="live_today_in">OPS</p>
                            </a>
                            <div class="tap_pager_in_ops">
                                <ul class="">
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                    <li><a href=""><img src="" alt=""></a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                <div class="sec2_btn">
                    <p class="sec2_btnR">
                        <img src="./img/gnb_icon/prev_left_icon.png" alt="">
                    </p>
                    <p class="sec2_btnL">
                        <img src="./img/gnb_icon/next_right_icon.png" alt="">
                    </p>
                </div>
                </div><!-- tap_pager -->
                <div class="live_best_list">
                    <ul class="">
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem1.jpeg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem2.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem3.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem4.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem5.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem6.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem7.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/navi/naviitem9.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="sec2_best_more">
                        <p>베스트 상품 더보기 ></p>
                    </div>
                </div><!-- live_best_list -->
                <!-- <div class="live_btn_Left">L_btn</div>
                <div class="live_btn_Right">R_btn</div> -->
            </div><!-- sec2_nowLive_best -->

            <div class="sec3_newArrival">
                <h2>NEW ARRIVAL</h2>
                <p>다가오는 가을신상! 이벤트기간동안 5% 할인</p>
                <div class="newArrIn">
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem1.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem2.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem3.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem4.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem5.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem6.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem7.jpeg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/pink/pinkitem8.jpeg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="sec3_best_more">
                        <p>
                            <a href="#">베스트 상품 더보기 ></a>
                        </p>
                    </div>
                </div><!-- newArrIn -->
            </div><!-- sec3_newArrival -->

            <div class="sec4_signature_item">
                <h2 class="sec4_head">SIGNATRURE ITEM</h2>
                <ul class="sec4_text">
                    <li class="sec4_t1">#made_denim</li>
                    <li class="sec4_t2">#made_slacks</li>
                </ul>
                <div class="signature_in">
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/burgundy/burgundy1.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                             </a>   
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/burgundy/burgundy2.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/burgundy/burgundy3.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/burgundy/burgundy4.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/brown/brown_item1.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/brown/brown_item2.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/brown/brown_item3.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/brown/brown_item4.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="sec4_best_more">
                        <p><a href="#">베스트 상품 더보기 ></a></p>
                    </div>
                </div><!-- signature_in  -->
            </div><!-- sec4_main_signature_item -->

            <div class="sec5_best">
                <h2 class="sec5_head">BEST 10</h2>
                <p class="sec5_text">1위 부터 10위 가지의 베스트 아이템</p>
                <div class="best_in">
                    <ul>
                        <li>
                            <a href="">
                                <img src="./img/yellow/yellowitem2.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/yellow/yellowitem1.jpg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/khaki/khakiitem2.jpeg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/khaki/khakiitem03.jpeg" alt="">
                                <div class="pic_text">
                                    <p class="productBarnd"><b>마르니</b></p>
                                    <p class="productName">자켓</p>
                                    <p class="productPirce">￦ 300,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <div class="sec5_best_more">
                        <p><a href="#">베스트 상품 더보기 ></a></p>
                    </div>
                </div><!-- signature_in  -->
            </div><!-- sec4_main_signature_item -->

            <div class="sec6_event">
                <div class="sec6_event_in">
                    <h2 class="event_ing">지금 뜨고있는 샐리 이벤트</h2>
                    <p>다양하게 누리는 혜택 골라보기</p>
                    <div class="envnt_list">
                        <ul class="envnt_list_1">
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                        </ul><!-- envnt_list_1 -->
                        <ul class="envnt_list_2">
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                            <li>
                                <a href=""><img src="" alt=""></a>
                            </li>
                        </ul><!-- envnt_list_2 -->
                    </div><!-- envnt_list -->
                    <div class="sec6_more_page">
                        <p class="more_1"><a href="">바로가기 -></a></p>
                        <p class="more_2"><a href="">바로가기 -></a></p>
                    </div>
                    <div class="sec6_btn">
                        <p class="sec6_btnL"><img src="./img/gnb_icon/prev_left_icon.png" alt=""></p>
                        <p class="sec6_btnR"><img src="./img/gnb_icon/next_right_icon.png" alt=""></p>
                        <a href=""></a>
                        <a href=""></a>
                    </div>
                    <div class="sec6_more">
                        <p><a href="#">베스트 상품 더보기 ></a></p>
                    </div>
                </div><!-- sec6_event_in -->
            </div><!-- sec6_event -->
            
            <div class="sec7_insta">
                <div class="">
                    <h2>1</h2>
                    <div class="">

                    </div>
                </div>
            </div>

        </div><!-- container -->



        <footer id="footer">
            <div class="f_in">
                <div class="f1">
                    <ul>
                        <li>
                            <h3>COMPANY. (주)Sally</h3>
                            <p>owner. 김샐리 tel. 1655-5555 <br>
                                business no. 201-82-55555 <br>
                                mail order license. 제2016-울산삼산-00555호 [사업자정보확인] <br>
                                personal info manager. 김 (ksr758305@nate.com) <br>
                                address. [133110] 울산광역시 남구 삼산동 101-55 1층~5층 <br>
                                copyright © (주)Sally all rights reserved / published by plain design <br>
                            </p>
                        </li>
                        <li>
                            <h3>C/S CENTER</h3>
                            <p>1644-7351</p>
                            <p>MON-FRI AM10:00 - PM17:00 <br>
                                LUNCH PM12:00 - PM13:00 <br>
                                SAT/SUN/HOLIDAY OFF
                            </p>
                        </li>
                        <li>
                            <h3>BANK ACCOUNT</h3>
                            <p>신한 100-025-30000 <br>
                                국민 300000-05-005555 <br>
                                농협 301-0101-5555-55 <br>
                                예금주 : (주)Sally
                            </p>
                        </li>
                        <li>
                            <h3>[교환/반품 주소]</h3>
                            <p>
                                울산광역시 북구 삼산<br>
                                울산 물류센터 2층 소포실<br>
                                * 공지사항 및 이용안내를 참고하여 <br>
                                 지정택배사로 반품요청해주세요.
                            </p>
                        </li>
                        <li>
                            <h3>SERVICE</h3>
                            <p>
                                고객님은 안전거래를 위해 <br>
                                현금 등으로 결제시 <br>
                                저희 쇼핑몰 에서 가입한 <br> 
                                구매안전 서비스를 이용하실 수 있습니다.
                            </p>
                        </li>
                    </ul>
                </div><!-- f1 -->
                <div class="f2">

                </div><!-- f2 -->
            </div><!-- f_in -->
            <div class="f_menu">
                <div class="f_menu_in">
                    <ul class="f_menu2">
                        <li><a href="">홈으로</a></li>
                        <li><a href="">회사소개</a></li>
                        <li><a href="">이용약관</a></li>
                        <li><a href="">개인정보처리방침</a></li>
                        <li><a href="">이용안내</a></li>
                        <li><a href="">고객센터</a></li>
                        <li><a href="">자주묻는질문</a></li>
                    </ul><!-- f_menu2 -->
                    <ul class="f_sns">
                        <li class="f_face"><a href=""><img src="./img/sns_icon/sns_facebook.png"alt=""></a></li>
                        <li class="f_yout"><a href=""><img src="./img/sns_icon/sns_insta_icon.png" alt=""></a></li>
                        <li class="insta"><a href=""><img src="./img/sns_icon/sns_twitter.png" alt=""></a></li>
                        <li class="insta"><a href=""><img src="./img/sns_icon/sns_yout_icon.png" alt=""></a></li>

                    </ul><!-- f_sns -->
                </div><!-- f_menu_in -->
            </div><!-- f_mneu -->
        </footer>
    </div><!-- wrap -->
</body>
</html>