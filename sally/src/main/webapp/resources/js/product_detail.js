$(document).ready(function() {
	
	function displayTime(timeValue) {	// 시간 처리 함수 시작
		
		var today = new Date();	// 오늘 날짜
				// 현재 시간(today.getTime) - 화면에서 넘어온 시간(timeValue)
		var gap = today.getTime - timeValue;
		
		var dateObj = new Date(timeValue);
		var str = "";
		if (gap < (1000*60*60*24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
		} else {
			var yy=dateObj.getFullYear();
			var mm=dateObj.getMonth()+1	// getMonth()은 0,1,2,3,4,5,6,7,8,9,10,11이 되니 +1을 해줘야 함.
			var dd=dateObj.getDate();
			
			return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd].join('');
		}
	};	// 시간 처리 함수 끝

});

$(function() {

  // 컬러 클릭 이벤트
  $(".productInfo table .color li").click(function(e) {

    let s = $(this).hasClass("selected");
    if (s) {
      $(this).removeClass("selected");
    } else {
      $(".productInfo table .color li").removeClass("selected");
      $(this).addClass("selected");
    }

    e.preventDefault();
    
    totalPrice();
    
    return false;

  });


  // 사이즈 클릭 이벤트
  $(".productInfo table .size li").click(function(e) {

    let s = $(this).hasClass("selected");
    if (s) {
      $(this).removeClass("selected");
    } else {
      $(".productInfo table .size li").removeClass("selected");
      $(this).addClass("selected");
    }

    e.preventDefault();
    
    totalPrice();
    
    return false;

  });


  // 수량 변경 이벤트
  $(".productInfo table .mainAmount input").on("change", function() {

    let c = $(".productInfo table .color li").hasClass("selected");
    let s = $(".productInfo table .size li").hasClass("selected");

    if (!c || !s) {
      let result = "";
      if (!c && !s) {
        result += "컬러와 사이즈";
      } else if (!c) {
        result += "컬러";
      } else if (!s) {
        result += "사이즈";
      }
      result += "를 선택해주세요!";

      alert(result);

      amount = 1;
      $(this).val(1);
    }

    let amount = $(this).val();

    if (amount > 50) {
      alert("최대 구매 수량은 50개 입니다.");

      amount = 50;
      $(this).val(50);
    }

    totalPrice();
  });
  
  
  // 합계 function
  function totalPrice() {
	  
	  let color = $(".productInfo table .color li").hasClass("selected");
	  let size = $(".productInfo table .size li").hasClass("selected");
	  
	  if (!color || !size) {
		  return false;
	  }
	  
	  let amount = $(".productInfo table .mainAmount input").val();
	  
	  var tdArr = new Array();

	    var tr = $(".productInfo table tr");
	    var td = tr.children();

	    td.each(function(i) {
	      tdArr.push(td.eq(i).text());
	    });

	    let totalPrice = amount * parseInt(td.eq(1).text().replace(",", "").replace("원", ""));

	    let pdTP = $(".totalPrice p .productTotalPrice");
	    let pdAmount = $(".totalPrice p .productAmount");

	    pdTP.text(totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
	    pdAmount.text(amount);

  }
  
  
  // 상품문의 이벤트
  $('.productQna .pdQna table .pdQna_contentShow').click(function(e) {
		let d = $(this).hasClass("active");
		if (d) {
			$('.productQna .pdQna table .pdQna_contentShow').removeClass('active');
			$('.productQna .pdQna table .pdQna_content_wrap td').slideUp();
		} else {
			$('.productQna .pdQna table .pdQna_contentShow').removeClass('active');
			$('.productQna .pdQna table .pdQna_content_wrap td').slideUp();
			$(this).addClass('active').next().find('td').slideDown();
	    }

	    e.preventDefault();
	    return false;
	  });

});