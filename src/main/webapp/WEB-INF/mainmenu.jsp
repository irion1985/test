<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body { margin: 0; }
.zeta-menu-bar {
  background: grey;
  display: inline-block;
  width: 100%;
}
.zeta-menu { margin: 0; padding: 0; }
.zeta-menu li {
  float: left;
  list-style:none;
  position: relative;
}
.zeta-menu li:hover { background: grey; }
.zeta-menu li:hover>a { color: lightblue; }
.zeta-menu a {
  color: white;
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.zeta-menu ul {
  background: #eee;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 180px;
}
.zeta-menu ul li { float: none; }
.zeta-menu ul li:hover { background: grey; }
.zeta-menu ul li:hover a { color: black; }
.zeta-menu ul a { color: black; }
.zeta-menu ul ul { left: 100%; top: 0; }
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(function(){
  $(".zeta-menu li").hover(function(){
    $('ul:first',this).show();
  }, function(){
    $('ul:first',this).hide();
  });
  
  $(".zeta-menu>li:has(ul)>a").each( function() {
    $(this).html( $(this).html()+' &or;' );
  });
  $(".zeta-menu ul li:has(ul)")
    .find("a:first")
    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
});
</script>
<div class='zeta-menu-bar'>
  <ul class="zeta-menu">
    <li><a href="mainpage">HOME</a></li>
    <li><a href="http://localhost:8080/ExPro/BoardList.bo">1번 메뉴:게시판</a></li>
    <li><a href="#">2번 메뉴:프로젝트 팀</a>
      <ul>
        <li><a href="#">2-A 메뉴: <br>팀장 프로필</a></li>
        <li><a href="#">2-B 메뉴: <br>팀원 프로필</a>
          <ul>
            <li><a href="#">2-B-1 <br>메뉴: ym</a></li>
            <li><a href="#">2-B-2 <br>메뉴: ds</a></li>
          </ul>
        </li>
        <li><a href="#">2-C 메뉴: <br>기술제공</a></li>
        <li><a href="#">2-D 메뉴: <br>도와주신분들</a>
          <ul>
            <li><a href="#">2-D-1 <br>메뉴: 철수</a></li>
            <li><a href="#">2-D-2 <br>메뉴: 영희</a></li>
            <li><a href="#">2-D-3 <br>메뉴: 창수</a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="#"> 갤러리 </a>
      <ul>
        <li><a href="gallery"> 갤러리 ver 0.1 <br> 갤러리1 </a></li>
        <li><a href="gallery2"> 갤러리 ver 0.5 <br> 갤러리2 </a></li>
        <li><a href="gallery3"> 갤러리 ver 0.5 <br> 갤러리3 </a></li>
        <li><a href="gallery4"> 갤러리 ver 0.5 <br> 갤러리4 </a></li>
      </ul>
    </li> 
    <li><a href="#">4번 메뉴: 잠온다</a></li> 
  </ul>
</div>
</head>
</html>