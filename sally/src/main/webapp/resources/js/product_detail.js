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

});