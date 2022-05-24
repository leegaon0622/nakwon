<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<style>
*폰트*/
	@font-face {
    font-family: 'Yeon Sung', cursive;
    src: url('https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap') ;
    font-weight: normal;
    font-style: normal;
	}
	
	body {font-family: 'Yeon Sung', cursive; font-color: #0D47A1;}
	
.menubody{
	margin:0;
	padding:0;
}
a{text-decoration:none;}
/* .wrap{
 width:100%;
	height:100%;
    background-color: yellow;
 padding: 50px 60px;
   
}
 */
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
position:fixed; 
top:0; 
left:0; 
 right:0; 
bottom:0;  
background:rgba(0,0,0,.5);
/*  transform: scale(1.1);  */
/* transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; */
font-size:0; 
text-align:center;
overflow:auto;/*스크롤*/
}
.menu:after{
display:inline-block; 
height:100%; 
vertical-align:middle;
content:'';
}
.menu .inner{
display:inline-block; 
padding:20px 30px;
background:#fff; 
width:50%; 
vertical-align:middle;
font-size:15px;
}
.btn_close {
display: block;
   width: 20px;
    height: 20px;
    margin: 5px auto;
    color: black;
font-size: 1rem;
border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: .3s linear;
float:right;
background-color:lightgray;
} 
.btn_next {
display: block;
width: 45px;
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
font-family: 'Yeon Sung', cursive; font-color: #0D47A1;
} 
.input {
    width: 70%;
    height: 30px;
    border: none;
    background-color: #ededed;
    border-radius: 4px;
    color: #333;
/*     font-size: 1.0rem; */
/*     font-weight: 700; */
 /*    padding: 17px 80px 0 60px; */
 padding:10px;
 margin-top:10px;
}
textarea {
    width: 70%;
    height: 20px;
    border: none;
    background-color: #ededed;
    border-radius: 4px;
    color: #333;
/*     font-size: 1.0rem; */
/*     font-weight: 700; */
 /*    padding: 17px 80px 0 60px; */
 padding:100px;
 margin-top:10px;
 vertical-align:top;
}
#label { 
  text-align:center;
  width:100px;
  height:20px;
         /* display: block; */
         margin-top: 20px;  
/* letter-spacing: 1px;  */
  float:left;
} 
#IntroImg {
display:none;
}
#labelImg{
font-size: 2rem;
text-align:center;
width:100px;
height:20px;
margin-top: 20px;  
float:left;
cursor: pointer;
}
</style>

<body class="menubody">
<% request.setCharacterEncoding("UTF-8"); %>
<header><%@ include file="../top.jsp" %></header>
<form class="menuAdd" name="menuAddform" method="post" accept-charset="utf-8">
	<div class="wrap">
		<a href="#add_menu" class="btn_add">소개 등록</a>
		<div id="add_menu" class="menu" style="display:none;">
	
		<div class="inner">
		
		<button type="button" class="btn_close"><i class="fa fa-close"></i></button>
		<h2 style="float:center;">소개 등록</h2>

		<br>
		<label for="IntroTitle" id="label"><b>제목</b></label>
		<input type="text" name="IntroTitle" id="IntroTitle"  class="input" required>
		<br>
		
		<label for="IntroContent" id="label"><b>상세 내용</b></label>
		<textarea id="IntroContent" name="IntroContent" cols="20" rows="20"></textarea>
		<br>		
	
		<label for="IntroImg" id="labelImg"><i class='fas fa-plus'></i></label>
		<input type="file" id="IntroImg" name="IntroImg"/>
		<!-- <button type="button" class="btn_img" onclick="imgupload()"><i class="fas fa-plus"></i></button> -->
		<br>
		
		<button type="button" class="btn_next" onclick="AddBtn()">등록</button>
		
		</div>
		</div>
	</div>
</form>

<table>
	<thead>
	<tr>
	<th>코드</th>
	<th>제목</th>
	<th>내용</th>
	</tr>
	</thead>
	 <c:forEach items="${list}" var="list">
            <tr>
            	<td><c:out value="${list.introCode}"/></td>
                <td><c:out value="${list.introTitel}"/></td>
                <td><c:out value="${list.introContent}"/></td>
            </tr>
</c:forEach> 
</table>

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
	
	function AddBtn() {
				
		if(document.menuAddform.MenuPrice.value=="") {
			alert("제목을 입력해주세요.");
			document.menuAddform.MenuPrice.focus();
			return;
		}
		if(document.menuAddform.MenuIngredients.value=="") {
			alert("상세 내용을 입력해주세요.");
			document.menuAddform.MenuIngredients.focus();
			return;
		}		
		
		alert("등록 성공");
		document.menuAddform.submit();
	}
	
	$("input[type=radio]").change(function() {
		
	})
</script>
</body>
</html> 