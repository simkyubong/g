/**
 * 
 */
$(document).ready(function(){
	var bno=$("#bno").val();
	console.log(bno)
	$.getJSON("/board/getAttachList",{bno:bno},function(arr){
		console.log(arr)
		var str="";
		$(arr).each(function(i,attach){
			console.log(attach.filetype);
			if(attach.filetype=="true"){// 이미지 파일이면,
				var fileCallPath =  encodeURIComponent( attach.uploadpath+ "/s_"+attach.uuid +"_"+attach.filename);
				str +="<li data-path='"+attach.uploadpath+"'";
				str +=" data-uuid='"+attach.uuid+"' data-filename='"+attach.filename+"' data-type='"+attach.filetype+"'>"
				str +"<div>";
				str += "<img src='/display?fileName="+fileCallPath+"'>";
				str += "</div>";
				str +"</li>";
			}else{	// 이미지 파일이 아니면,
				console.log('aaaa');
				str += "<li "
				str += "data-path='"+attach.uploadpath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.filename+"' data-type='"+attach.filetype+"'>";
				str += "<div><span> "+ attach.filename+"</span><br>";
				str += "<img src='/resources/img/attach.png'></a>";
				str += "</div>";
				str +"</li>";
			}
		})// $(arr).each(function(i,attach){끝
		$(".uploadResult ul").html(str);
	})
})