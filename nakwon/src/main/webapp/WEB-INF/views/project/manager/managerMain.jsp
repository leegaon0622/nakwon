<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>낙원 관리자 페이지</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
	/*폰트*/
	@font-face {
    font-family: 'HSGyoulnoonkot';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/HSGyoulnoonkot.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
	body {font-family: 'HSGyoulnoonkot';}
	
	.btn01{ width: 600px; height: 300px; text-align: center; font-size: 100px; margin-top: 75px; margin-left: 325px; position: absolute;}			
	.btn02{	width: 600px; height: 300px; text-align: center; font-size: 100px; margin-top: 75px; margin-left: 975px; }			
	.btn03{	width: 600px; height: 300px; text-align: center; font-size: 100px; margin-top: 50px; margin-left: 325px; }			
	.btn04{	width: 600px; height: 300px; text-align: center; font-size: 100px; margin-top: 50px; margin-left: 50px; position: absolute;}
	
</style>
</head>
<body>
<header><%@ include file="top.jsp" %></header>
<section>
<div class="wrap">
   <button type="button" class="btn01 btn-outline-primary">소개</button>
   <button type="button" class="btn02 btn-outline-primary">메뉴</button>
   <button type="button" class="btn03 btn-outline-primary">예약</button>
   <button type="button" class="btn04 btn-outline-primary">게시판</button>
   <br><br><br><br>
</div>
</section>
<footer><%@ include file="footer.jsp" %></footer>
</body>
</html>