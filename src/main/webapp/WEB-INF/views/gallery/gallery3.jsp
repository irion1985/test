<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC >
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Opacity를 사용한 갤러리3</title>
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style type="text/css">
		* {margin:0; padding:0}
		ul, li {list-style:none; border: 1px dotted purple;}
		#wrapBox {position:relative; border: 1px solid black; }
		.imgBox {position:relative; width:678px; height:340px; margin:0 auto; border: 1px solid red;}
		.imgBox li {position:absolute; border: 1px solid blue;}
		.dotBox {position:relative; top:150px; margin:0 auto; width:400px; height:50px; border: 1px solid green;}
		.dotBox li {float:left;}
		.dotBox a {display:block; width:50px; height:50px; background:url("resources/etc/dot.png") no-repeat; background-position:0 0;}		
		.dotBox li.active a {background-position:0 -30px}
	</style>
</head>
<body>
<h1>GALLERY 3</h1>
	<div id="wrapBox">
		<ul class="imgBox">
			<li class="act"><img src="resources/imgs/1g.jpg" alt="" /></li>
			<li><img src="resources/imgs/2r.jpg" alt="" /></li>
			<li><img src="resources/imgs/3r.jpg" alt="" /></li>
			<li><img src="resources/imgs/4c.jpg" alt="" /></li>
		</ul>
		<ul class="dotBox">
			<li class="active"><a href="#"></a></li>
			<li><a href="#"></a></li>
			<li><a href="#"></a></li>
			<li><a href="#"></a></li>
		</ul>
	</div>
	<script>
		$(document).ready(function(){
			$('.imgBox li').css({display:'none',opacity:0});
			$('.imgBox li.act').css({display:'block',opacity:1});
			$('.dotBox a').click(function(){
				var imgNum=$('.dotBox a').index(this);
				$(this).parent().addClass('active').siblings().removeClass();
				$('.imgBox li.act').animate({opacity:0},1000,function(){$(this).css('display','none')}).removeClass('act');
				$('.imgBox li').eq(imgNum).css('display','block').animate({opacity:1}, 1000).addClass('act');
				});
		})
	</script>
</body>
</html>