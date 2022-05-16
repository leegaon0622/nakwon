<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<style>
*{
	margin:0;
	padding:0;
}
a{text-decoration:none;}
.label { 
  font-weight: bold;
  font-size: 17px;
} 
#rsrvMInner{
	background-color: white;
	width: 1000px;
	height: 800px;
	margin: 0 auto;
	border: 1px solid black;
}
.title{
	width: 200px;
	text-align: center;
}
.content{width: 400px;}
.bigTitle{
	font-weight: bold;
	font-size: 30px;
	text-align: center;
	padding: 30px 0 20px 0;
}
/*노란 바*/
.all-wrap{
 	width:100%;
	height:100%;
    background-color: yellow;
 	padding: 50px 60px;
}
/*메뉴등록 버튼*/
.btn_add{
	position: fixed;
	font-weight:bold; 
	margin:50px;
	padding:4px 6px; 
	background:#000; 
	color:#fff;
	right: 20px;
}
.menu{
	width: 1000px;
	height: 800px;
	position:block; 
	/*overflow:auto; /*스크롤*/
	/*overflow-x: hidden; /*옆으로 스크롤 숨기기*/
	margin: 0 auto;
	/*top: 40px;*/ 
	/*left: 0; 
	right: 0;*/
	/*bottom: 40px;*/
	position: absolute;
	padding-bottom: 50px;
	
}
input {
    border: none;
    background-color: #ededed;
    border-radius: 4px;
    color: #333;
    padding: 10px;
    width: 200px;
}
textarea {
    border: none;
    background-color: #ededed;
    border-radius: 4px;
    color: #333;
 	resize: none;
 	padding: 10px;
 	width: 400px;
 	height: 200px;
}
select {
	width: 150px;
	height: 30px;
	text-align: center;
}
table{
	border-collapse: separate;
	border-spacing: 20px;
}
.btn_close {
	display: inline-block;
   	width: 20px;
    height: 20px;
    float:right;
    margin: 20px 20px 0 0;
    color: black;
    border-radius: 30px;
    cursor: pointer;
    transition: .3s linear;
	background-color:lightgray;
	font-size: 1rem;
	border: none;
} 
.btn_next {
	display: inline-block;
   	width: 80px;
    height: 40px;
    margin: 5px auto;
    color: black;
	font-size: 1rem;
	border: none;
	border-radius:10px;
    cursor: pointer;
    transition: .3s linear;
	float:right;
	background-color:lightgray;
} 
#at{margin-left: 8px;}
<!-- 달력의 주말 색상 다르게 변경(일: 빨강, 토: 파랑)-->
.ui-datepicker-calendar > tbody td.ui-datepicker-week-end:first-child a { color: red; }
.ui-datepicker-calendar > tbody td.ui-datepicker-week-end:last-child a { color: #0099ff; }
.ui-datepicker-calendar>thead>tr>th:first-child { color: red !important; } 
.ui-datepicker-calendar>thead>tr>th:last-child { color: #0099ff !important; } 
.ui-datepicker-calendar {
	background: white;
	border: 1px solid white;
	color: white;
}
.ui-datepicker-calendar>thead {
	background: white;
	color: black;
	font-weight: bold;
	font-size: 14px;
}
.ui-datepicker-calendar>tbody {font-size: 14px;}
.ui-widget-content .ui-state-highlight {background: #ffd700 !important;}
.ui-datepicker-title {font-size: 14px; padding: 5px;}
.ui-datepicker select.ui-datepicker-year, .ui-datepicker select.ui-datepicker-month {background: white;}
.ui-widget-content .ui-widget-header{background: white !important;}
.ui-state-default, .ui-widget-content .ui-state-default,
.ui-widget-header .ui-state-default, .ui-button,
html .ui-button.ui-state-disabled:hover, html .ui-button.ui-state-disabled:active {text-align: center;} 
.ui-widget.ui-widget-content { border: 1px solid #eee; }
.ui-datepicker-calendar>tbody>tr>td>a { 
	font-size: 12px !important; 
	font-weight: bold !important;
}
.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto; 
	background-color: white;
}
.ui-datepicker-calendar>tbody>tr>td:hover { 
	background-color: #0081cc; 
	opacity: 1; 
}
.ui-datepicker-calendar>tbody>tr>td { 
	border-radius: 50% !important; 
	width: 44px; 
	height: 30px;
	padding: 5px; 
	font-size: 12px; 
} 
</style>

<body>
<form class="rsrvAdd" name="rsrvAddform" action="rsrvAdd.do" method="post">
	<div class="all-wrap">
		<a href="#add_menu" class="btn_add">메뉴 등록</a>
		<div id="add_menu" class="menu" style="display:none;">

		<!-- 예약 등록 폼 -->
		<div id="rsrvMInner">
			<button type="button" class="btn_close"><i class="fa fa-close"></i></button>
		<table>
		<tr><td colspan="2" class="bigTitle">예약 등록</td></tr>
		<tr><td class="title"><label for="name" class="label">예약자명</label></td><td class="content"><input type="text" name="name" id="name" required></td></tr>
		<tr><td class="title"><label for="phone" class="label">연락처</label></td><td class="content"><input type="text" name="phone" id="phone" required></td></tr>
		<tr><td class="title"><label for="email" class="label">이메일</label></td>
			<td class="content">
				<input class="reservationInput" id="email" name="email" type="text" required><div id="at" style="display: inline-block"> @ </div> 
				<select id="domain" name="domain" onChange="direct(this)" required>
					<option value="">도메인 선택</option>
					<option value="naver.com">naver.com</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.com">hanmail.com</option>
					<option value="direct">직접입력</option>
				</select>
				<!-- 직접입력 누르면 나올 inputbox -->
				<input type="text" id="selBoxDirect" name="selBoxDirect" style="display: none;" onblur="directonblur()" required>
			</td></tr>
		<tr><td class="title"><label for="rsrvDate" class="label">예약일</label></td>
			<td class="content">
				<input type="text" required class="reservationInput" name="publeYear" placeholder="날짜선택(클릭해주세요)" autocomplete="off" >
				<select id="timeselect" name="timeselect" required>
					<option value="" selected>시간</option>
					<option value="16 : 00">16 : 00</option>
					<option value="16 : 30">16 : 30</option>
					<option value="17 : 00">17 : 00</option>
					<option value="17 : 30">17 : 30</option>
					<option value="18 : 00">18 : 00</option>
					<option value="18 : 30">18 : 30</option>
					<option value="19 : 00">19 : 00</option>
					<option value="19 : 30">19 : 30</option>
					<option value="20 : 00">20 : 00</option>
					<option value="20 : 30">20 : 30</option>
					<option value="21 : 00">21 : 00</option>
					<option value="21 : 30">21 : 30</option>
					<option value="22 : 00">22 : 00</option>
					<option value="22 : 30">22 : 30</option>
				</select>
			</td></tr>
		<tr><td class="title"><label class="label">예약인원</label></td>
			<td class="content">
				<select id="Pnum" name="Pnum" required>
					<option value="" selected>인원</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="20">20명 이상(대관)</option>
				</select>
			</td></tr>
		<tr><td class="title"><label class="label">메뉴</label></td>
			<td class="content">
				<select id="courseselect" name="courseselect" onchange="courseChange(this)" required>
					<option value="" selected>코스선택</option>
					<option value="a">만찬(풀코스)</option>
					<option value="b">정찬(세트메뉴)</option>
				</select>
				<select id="menuselect" name="menuselect" required>
					<option value="">메뉴선택</option>
				</select>
			</td></tr>
		<tr><td class="title"><label for="message" class="label">특별요청사항</label></td><td class="content"><textarea class="message"></textarea></td></tr>
		<tr><td colspan="2"><button type="button" class="btn_next" onclick="nextBtn()">등록</button></td></tr>
		</table>
		</div>
		</div>
	</div>
</form>

<script type="text/javascript">	
	var target=document.querySelectorAll('.btn_add');
	var targetID;
	var btnPopClose = document.querySelectorAll('.menu .btn_close');
	for(var i=0;i<target.length;i++) {
		target[i].addEventListener('click',function() {
			targetID=this.getAttribute('href');
			document.querySelector(targetID).style.display='block';
		});
	}
	
	// 팝업 닫기
	for(var j = 0; j < target.length; j++){
	  btnPopClose[j].addEventListener('click', function(){
	    this.parentNode.parentNode.style.display = 'none';
	  });
	}
	
	
	function nextBtn() {
		if(document.menuAddform.MenuTitle.value=="") {
			alert("메뉴명을 입력해주세요.");
			document.menuAddform.MenuTitle.focus();
			return;
		}
			
		if(document.menuAddform.MenuPrice.value=="") {
			alert("가격을 입력해주세요.");
			document.menuAddform.MenuPrice.focus();
			return;
		}
		if(document.menuAddform.MenuIngredients.value=="") {
			alert("재료를 입력해주세요.");
			document.menuAddform.MenuIngredients.focus();
			return;
		}
		if(document.menuAddform.MenuContent.value=="") {
			alert("내용을 입력해주세요.");
			document.menuAddform.MenuContent.focus();
			return;
		}
		if(document.menuAddform.MenuAllergy.value=="") {
			alert("알러지 정보를 입력해주세요.");
			document.menuAddform.MenuAllergy.focus();
			return;
		}
		document.menuAddform.submit();
	}
	
	//도메인 직접입력 눌렀을 경우 직접입력 input박스 보이게 하기
	function direct(e){
		$("#domain option:selected").each(function () { 
			if(e.value == "direct"){ //직접입력을 선택할 경우 
	        	$("#selBoxDirect").show(); //input박스 보이게 하기
	        	$("#selBoxDirect").val(""); //input박스 초기화(직접입력 후 select박스 선택 후 직접입력 하는 경우 이전에 작성한 기록이 남아있기 때문)
	        	$("#selBoxDirect").focus();//input박스에 포커스 두기
	      	} else { //직접입력 선택 안한 경우 
	          	$("#selBoxDirect").hide(); //input박스 숨기기
	          	emailPlusDomain();
	      	} 
		});
	}
	//직접입력 inputbox 포커스 잃을 때, email과 domain 합치는 함수 호출
	function directonblur(){
		email = $("#email").val(); //사용자 이메일 id 가져오기
		at = $.trim($("#at").text()); // '@' 가져오기
		if($("#selBoxDirect").val() != ""){ //직접입력 input박스가 빈칸이 아닐 경우
			domain = $("#selBoxDirect").val(); //input박스의 도메인 가져오기
			total = email + at + domain; //합치기
		}
	}
	//직접입력 안눌렀을 때, email과 domain 합치는 함수 호출
	function emailPlusDomain(){
		email = $("#email").val(); //사용자 이메일 id 가져오기
		at = $.trim($("#at").text()); // '@' 가져오기
		domain = $("#domain").val(); //도메인 가져오기(select박스)
		total = email + at + domain; //합치기
	}
	//달력 설정 
	const config = {
			dateFormat: 'yy-mm-dd', //형식을 yy-mm-dd로 바꿈 
			//한글 출력으로 바꾸기 
			prevText: '이전 달',
			nextText: '다음 달',
		    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		    dayNames: ['일','월','화','수','목','금','토'],
		    dayNamesShort: ['일','월','화','수','목','금','토'],
		    dayNamesMin: ['일','월','화','수','목','금','토'],
		    //연도와 년을 <select>태그 형식으로 선택하도록 설정 
		    changeMonth: true,
		    changeYear: true,
		    minDate: 0, //지난 날짜 비활성화
		    beforeShowDay: disableAllTheseDays,
		    showMonthAfterYear : true //달보다 월이 면저 표시
	}
	//달력 생성
	$(function(){
		$("input[name='publeYear']").datepicker(config);
		
	});
	//달력에서 특정 요일 비활성화
	function disableAllTheseDays(date){
		var day = date.getDay();
		return [(day != 0 && day != 1)]; //휴무일인 일, 월 비활성화
	}
	//코스선택 select박스 선택시 메뉴선택 select박스 value 변동
	function courseChange(e){
		var fullcourse = ["메뉴선택", "풀코스1", "풀코스2", "풀코스3", "풀코스4"];
		var setcourse = ["메뉴선택", "세트1", "세트2", "세트3"];
		var target = document.getElementById("menuselect");
		
		if(e.value == "a") var d = fullcourse;
		else if(e.value == "b") var d = setcourse;
		
		target.options.length = 0;
		
		for (i in d){
			var opt = document.createElement("option");
			opt.value = d[i];
			opt.innerHTML = d[i];
			target.appendChild(opt);
		}
	}
</script>
</body>
</html>