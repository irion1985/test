<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC >
<html lang="UTF-8">
<head>
	<meta charset="UTF-8">
	<title>썸네일 형 갤러리</title>
	<style type="text/css">
		* {margin:0; padding:0;}
		ul, li {list-style:none;}
		body {background-color:#333;}
		img {border:0;}
		#wrap {margin:100px auto; width:640px;}
		#nav li {float:left;}
		#nav img { width:70px;}
		#nav a{display:block; border:2px solid #bbb;margin:0 6px 10px 0; -webkit-border-radius:5px;}
		#nav a.active {border:2px solid #fff;}
		#window {clear:both;}
	</style>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script></head>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#nav a').mouseover(function(e){
				e.preventDefault();
				$('#nav a').removeClass('active');
				$(this).addClass('active');
				img_url = $(this).attr('href');
				$('#window img').attr('src',img_url);
				});
			})
	</script>
<body>
<h1>GALLERY2</h1>
	<div id="wrap">
		<ul id="nav">
			<li><a href="resources/imgs/10b.jpg" class="active"><img src="resources/imgs/10b.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/1g.jpg"><img src="resources/imgs/1g.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/2s.jpg"><img src="resources/imgs/2s.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/3r.jpg"><img src="resources/imgs/3r.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/4c.jpg"><img src="resources/imgs/4c.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/5c.jpg"><img src="resources/imgs/5c.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/6b.jpg"><img src="resources/imgs/6b.jpg" alt="" /></a></li>
			<li><a href="resources/imgs/7c.jpg"><img src="resources/imgs/7c.jpg" alt="" /></a></li>
		</ul>
		<div id="window"><img src="resources/imgs/10b.jpg" alt="" /></div>
	</div>
	
</body>
</html>