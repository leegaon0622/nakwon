<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <link rel="stylesheet" type="text/css" href="resources/css/fullPage.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>낙원</title>
</head>
<style>
html{overflow: hidden;}
 
html, body{width: 100%; height: 100%;}
 
.content{
	width: 100%; height: 100%;
	background-color: blueviolet;
	
	position: relative;
}
.content:nth-child(even){background-color: #333;}

</style>

<script src="resources/js/jquery.fullPage.js">
window.addEventListener("wheel", function(e){
	e.preventDefault();
},{passive : false});

var $html = $("html");

var page = 1;
 
var lastPage = $(".content").length;
 
$html.animate({scrollTop:0},10);

$(window).on("wheel", function(e){
	 
	if($html.is(":animated")) return;
 
	if(e.originalEvent.deltaY > 0){
		if(page== lastPage) return;
 
		page++;
	}else if(e.originalEvent.deltaY < 0){
		if(page == 1) return;
 
		page--;
	}
	var posTop = (page-1) * $(window).height();
 
	$html.animate({scrollTop : posTop});
 
});
</script>

<body>
<div>
    <div class="content">1</div>
    <div class="content">2</div>
    <div class="content">3</div>
    <div class="content">4</div>
</div>
</body>
</html> 