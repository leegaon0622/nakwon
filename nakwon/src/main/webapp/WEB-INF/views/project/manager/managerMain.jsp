<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>낙원 관리자 페이지</title>

<style>
	/*폰트*/
	@font-face {
    font-family: 'HSGyoulnoonkot';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/HSGyoulnoonkot.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	body {font-family: 'HSGyoulnoonkot';}

	$ease_out: cubic-bezier(0.165, 0.84, 0.44, 1);

@mixin transition() {
    transition: 700ms $ease_out;

    &:hover{
        transition: 400ms $ease_out;
    }
}

*, *:before, *:after {
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

.gradient-btn{
  display: inline-block;
    padding: 1em 2em;
    border-radius: 0;
  color: #b2876f;
    margin-top:2rem;
    font-weight: bold;
    font-size: 0.678rem;
    letter-spacing: 2px;
    text-transform: uppercase;
    text-decoration: none;
  background: linear-gradient(to right, rgba(#b2876f, 0) 25%, rgba(#b2876f, .8) 75%);
  background-position: 1% 50%;
  background-size: 400% 300%;
  border: 1px solid #b2876f;
  @include transition;
  
  &:hover{
    color: white;
      color: #fff;
      background-position: 99% 50%;
  }
}
</style>

</head>
<body>
<header><%@ include file="top.jsp" %></header>
<section>
<div class="wrap">
    <a class="btn01" href="#">Gradient</a>
</div>
</section>
<footer><%@ include file="footer.jsp" %></footer>
</body>
</html>