/**
 * rest방식으로 댓글처리하기(ajax사용)
 */
//$(선택자).click(function(){

//})

$(document).ready(function(){
	var bnoValue=$("#bno").val();	// 게시판 번호(6)
	var replyUL=$(".chat")
	
	console.log(bnoValue);
	showList(1);// showList함수 호출

	// p440
	var pageNum=1;
	var replyPageFooter=$(".panel-footer");
	
	function showReplyPage(replyCnt){ //showReplyPage 함수 선언
		
		var endNum=Math.ceil(pageNum/10.0)*10;
		var startNum = endNum-9;
		
		var prev=startNum!=1;
		var next=false;
		
		if(endNum * 10 >= replyCnt){
			endNum = Math.ceil(replyCnt/10.0);
		}
		if(endNum*10 < replyCnt){
			next=true;
		}
		var str="<ul class='pagination pull-right'>";
		if(prev){
			str+="<li class='page-item'><a class='page-link' href='"+(startNum-1)+"'>Previous</a></li>"
		}
		
		for(var i=startNum;i<=endNum;i++){
			var active = pageNum==i?"active":"";
			str+="<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>"
		}
		
		if(next){
			str+="<li class='page-item'><a class='page-link' href='"+(endNum+1)+"'>Next</a></li>"
		}
		str+="</ul></div>";
		console.log(str);
		replyPageFooter.html(str);
	}
	function showList(page){ // showList함수 선언 시작
							// 6 : 6         1 :  1
		replyService.getList({bno:bnoValue,page:page||1},function(replyCnt,list){// getList 함수 호출 시작
			console.log("replyCnt : "+replyCnt)
			console.log("list : "+list)
			
			// page번호가 없으면
			if(page==-1){
				pageNum=Math.ceil(replyCnt/10.0);
				showList(pageNum);
				return;
			}
			
			var str="";
			
			// list가 null이거나 list의 길이가 0이면(select된 결과가 없으면)
			if(list==null || list.length==0){
				replyUL.html("");
				return;
			}
			console.log(list)
					// 초기화                                             조건식       증감식
			for(var i=0, len=list.length||0 ; i<len ; i++){
				str+="<li class='left clearfix' data-rno='"+list[i].rno+"'>"
				str+="<div>"
				str+="<div class='header'>"
				str+="<strong class='primary-font'>"+list[i].replyer+"</strong>"
				str+="<small class='pull-right text-muted'>"+replyService.displayTime(list[i].replydate)+"</small>"
				str+="</div>"
				str+="<p>"+list[i].reply+"</p>"
				str+="</div></li>";
			}
			replyUL.html(str);
			
			showReplyPage(replyCnt);
		})// getList 함수 호출 끝
	} // showList함수 선언 끝
	var modal=$(".modal")
	// <input class="form-control" name="reply" value="New Reply!!!"> 선택
	var modalInputReply=modal.find("input[name='reply']")
	// <input class="form-control" name="replyer" value="replyer"> 선택
	var modalInputReplyer=modal.find("input[name='replyer']")
	// <input class="form-control" name="replyDate" value=""> 선택
	var modalInputReplyDate=modal.find("input[name='replyDate']");
	// <button id="modalModBtn" type="button" class="btn btn-warning">Modify</button> 선택
	var modalModBtn=$("#modalModBtn")
	// <button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button> 선택
	var modalRemoveBtn=$("#modalRemoveBtn")
	// <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button> 선택
	var modalRegisterBtn=$("#modalRegisterBtn")
	
	
	
	// 댓글 쓰기버튼(id="addReplyBtn")을 클릭하면 modal창 띄워라
	$("#addReplyBtn").on("click",function(){
		//alert("댓글쓰기");
		// 모달창의 input태그의 값을 빈문자열로 세팅
		modal.find("input").val("")
		// 모달창의 작성일자는 댓글쓰기할 때 필요없으므로 숨김.
		modalInputReplyDate.closest("div").hide();
		// 모달창에서 close버튼을 제외하고 나머지 버튼은 숨김.
		modal.find("button[id!='modalCloseBtn']").hide();
		
		// 모달창에 댓글 쓰기버튼을 추가
		modalRegisterBtn.show();
		
		$(".modal").modal("show")
	})
	// 모달창 안에 있는 Register버튼을 클릭하면
	modalRegisterBtn.on("click",function(e){
		
		var reply={
					reply:modalInputReply.val(),
					replyer:modalInputReplyer.val(),
					bno:bnoValue
				}
		// replyService함수 호출
		replyService.add(reply,	
						 function(result){
								alert("Result : "+result);
								//showList(1);
								showList(-1);
						 }
		)// add함수 호출 끝
		modal.find("input").val("");
		modal.modal("hide");
		
	})
	// 특정 댓글 내용을 클릭 이벤트로 처리
	$(".chat").on("click","li",function(e){
		// data-rno => data("rno")
		var rno=$(this).data("rno");
		
		console.log(rno);
		
		replyService.get(rno,function(reply){
			modalInputReply.val(reply.reply);
			modalInputReplyer.val(reply.replyer);
			modalInputReplyDate.val(replyService.displayTime(reply.replydate)).attr("readonly","readonly");
			modal.data("rno",reply.rno);
			
			modal.find("button[id != 'modalCloseBtn']").hide();
			modalModBtn.show();
			modalRemoveBtn.show();
			
			$(".modal").modal("show");
		})
	})// 특정 댓글 내용을 클릭 이벤트로 처리 끝
	// 댓글 수정 처리
	modalModBtn.on("click",function(e){
		var reply={rno:modal.data("rno"),reply:modalInputReply.val()};
		
		replyService.update(
				reply,
				function(result){	// 수정이 성공했을 때 함수 시작
					alert("수정 완료");
					modal.modal("hide");
					showList(pageNum);
				}					// 수정이 성공했을 때 함수 끝
			)// update함수 호출 끝
	})
	// 댓글 삭제 처리
	modalRemoveBtn.on("click",function(e){
		var rno=modal.data("rno");
		
		replyService.remove(// remove함수 호출 시작
				rno,					// rno
				function(count){	// callback 함수 시작
				console.log(count);
				
					if(count === "success"){
						alert("removed");
						modal.modal("hide");
						showList(pageNum);
					}
				},					// callback 함수 끝
				function(error){	// 에러처리 함수 시작
					alert("error.....");
				}					// 에러처리 함수 끝
			)// remove함수 호출 끝
	})
	// 댓글의 페이징 버튼을 클릭하면
	replyPageFooter.on("click","li a",function(e){
		e.preventDefault();
		console.log("page click");
		var targetPageNum=$(this).attr("href");
		
		console.log("targetPageNum : "+targetPageNum);
		pageNum = targetPageNum;
		
		showList(pageNum);
	})
	
})

console.log("Reply Module.......");
// replyService함수 선언
var replyService = (function(){
	
	function add(reply,callback,error){	// 댓글을 쓰기 위한 함수 선언
		console.log("reply.....")
		
		
		$.ajax({
			type:"post",
			url:"/replies/new",
			data:JSON.stringify(reply),
			contentType:"application/json; charset=UTF-8",
			success:function(result,status,xhr){
				if(callback){
					callback(result);
				}
			},
			error:function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})// ajax 끝
	}// add함수 끝
	function getList(param,callback,error){// getList함수 시작(댓글 목록리스트를 처리하기 위한 함수 선언)
		var bno = param.bno;	// 게시판번호
		var page = param.page || 1;	// 페이지번호
		//                 /pages/6/1.json
		$.getJSON("/replies/pages/"+bno+"/"+page+".json",	// getJSON 시작
				function(data){
					if(callback){
						callback(data.replyCnt,data.list);
					}
		})// getJSON 끝
		.fail(function(xhr,status,err){// fail 시작
			if(error){
				error();
			}
		});// fail 끝
	} // getList함수 끝
	
	function remove(rno,callback,error){// 댓글 삭제를 하기 위한 함수 선언(remove 함수 시작)
		$.ajax({	// ajax 시작
			type:"delete",
			url:"/replies/"+rno,
			success:function(result,status,xhr){// 삭제 성공했을 때 시작
				if(callback){
					callback(result);
				}
			},	// 삭제 성공했을 때 끝
			error:function(xhr,status,er){	// 삭제에 실패 했을 때 시작
				if(error){
					error(er);
				}
			}	// 삭제에 실패 했을 때 끝
		})	// ajax 끝
	}
	// remove 함수 끝
	function update(reply, callback, error){	// update함수 선언 시작
		console.log("RNO = "+reply.rno);
		$.ajax({								// ajax 시작
			type:"put",
			url:"/replies/"+reply.rno,
			data:JSON.stringify(reply),
			contentType:"application/json; charset=UTF-8",
			success:function(result,status,xhr){// 수정 성공했을 때 시작
				if(callback){
					callback(result);
				}
			},	// 수정 성공했을 때 끝
			error:function(xhr,status,er){	// 수정에 실패 했을 때 시작
				if(error){
					error(er);
				}
			}	// 수정에 실패 했을 때 끝
		})		// ajax 끝
	}	// update함수 선언 끝
	
	function get(rno,callback,error){// 댓글 상세페이지 처리하는 함수 (get함수 시작)
		$.get("/replies/"+rno+".json",function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr,status,err){
			if(error){
				error();
			}
		});
	}// 댓글 상세페이지 처리하는 함수 (get함수 끝)
	function displayTime(timeValue){// 시간 처리 함수 시작
		
		var today = new Date();// 오늘 날짜
				// 현재 시간(today.getTime) - 화면에서 넘어온 시간(timeValue)
		var gap = today.getTime - timeValue;
		
		var dateObj = new Date(timeValue);
		var str="";
		if(gap<(1000*60*60*24)){
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh>9 ? '':'0')+hh,':',(mi>9?'':'0')+mi,
				':',(ss>9 ? '':'0')+ss].join('');
		}else{
			var yy=dateObj.getFullYear();
			var mm=dateObj.getMonth()+1	// getMonth()은 0,1,2,3,4,5,6,7,8,9,10,11이 되니 +1을 해줘야 함.
			var dd=dateObj.getDate();
			
			return [yy,'/',(mm > 9?'':'0')+mm,'/',
				(dd > 9?'':'0')+dd].join('');
		}
	};// 시간 처리 함수 끝
	return {
		add:add,
		getList:getList,
		remove:remove,
		update:update,
		get:get,
		displayTime:displayTime
	};
})();

