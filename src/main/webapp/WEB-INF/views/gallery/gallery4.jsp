<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>GALLERY</title>	
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=977px" /><!-- 제일긴 가로 사이즈에 맞게 px 밎춰주기(ⓜ) -->	
	<style type="text/css">
		body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,textarea,p,blockquote,th,td,input,select,textarea,button {margin:0;padding:0}
		fieldset,img {border:0 none}
		dl,ul,ol,menu,li {list-style:none}
		blockquote, q {quotes: none}
		blockquote:before, blockquote:after,q:before, q:after {content:'';content:none}
		input,select,textarea,button {vertical-align:middle}
		button {border:0 none;background-color:transparent;cursor:pointer}
		body {background:#fff}
		body,th,td,input,select,textarea,button {font-size:12px;line-height:1.5;font-family:'돋움',dotum,sans-serif;color:#333} /* color값은 디자인가이드에 맞게사용 */
		a {color:#2b51b2;text-decoration:none}
		a:active, a:hover {text-decoration:none}
		address,caption,cite,code,dfn,em,var {font-style:normal;font-weight:normal}
		
		/* 롤링 */
		.rolling_box{width:100%;}
		.rolling_box .rolling_box_inner{overflow:hidden;height:346px;}
		.rolling_box .rolling_box_inner .rolling_list li{display:none;}
		
		/* 롤링 버튼 */
		.rolling_btn{width:100%;text-align:center;position:absolute;bottom:0;}
		.rolling_btn a{margin-left:5px;display:inline-block;*display:inline;*zoom:1;width:10px;height:10px;font-size:0;background:url("http://image.champstudy.com/img/event/2014/common/rolling_btn.png") no-repeat 0 0;}
		.rolling_btn a:first-child{margin:0;}
		.rolling_btn a:hover,.rolling_btn a.on{background-position:0 -10px;}
		
		/* 화살표 버튼 */
		.rolling_arrow a{z-index:111;display:block;width:23px;height:46px;position:absolute;top:150px;font-size:0;background:url("http://image.champstudy.com/img/event/2014/common/rolling_arrow.png") no-repeat 0 0;}
		.rolling_arrow a.prev_btn{left:0;}
		.rolling_arrow a.prev_btn:hover{background-position:-23px 0;}
		.rolling_arrow a.next_btn{right:0;background-position:0 -46px;}
		.rolling_arrow a.next_btn:hover{background-position:-23px -46px;}

		/* 롤링 플러그인 사용 */
		.rolling_banner_box{overflow:hidden;position:relative;z-index:99;width:100%;height:346px;}
		.rolling_banner_box > a{font-size:0;display:block;z-index:99;position:absolute;top:150px;width:23px;height:46px;background:url("http://image.champstudy.com/img/event/2014/common/rolling_arrow.png") no-repeat 0 0;}
		.rolling_banner_box .prev{left:0;}
		.rolling_banner_box .prev:hover{background-position:-23px 0;}
		.rolling_banner_box .next{right:0;background-position:0 -46px;}
		.rolling_banner_box .next:hover{background-position:-23px -46px;}
		.rolling_banner_box .pagination {width:100%;overflow:hidden;z-index:99;text-align:center;position:absolute;left:0;bottom:10px;}
		.rolling_banner_box .pagination li {display:inline-block;*display:inline;*zoom:1;margin: 0 2px;}
		.rolling_banner_box .pagination li a {font-size:0;display:inline-block;*display:inline;*zoom:1;width:10px;height:10px;background:url("http://image.champstudy.com/img/event/2014/common/rolling_btn.png") 0 0;}
		.rolling_banner_box .pagination li.current a,
		.rolling_banner_box .pagination li a:hover{background-position: 0 -10px}
		.p_r{position:relative;}
	
	</style>
	<script src="http://image.champstudy.com/js/jquery-1.6.2.min.js"></script>
	<!-- <script src="http://image.champstudy.com/js/publish1.js"></script> -->
	<script type="text/javascript">
	$(document).ready(function(){
		//롤링
		if($(".js-rolling-type1").length > 0){
			$(".js-rolling-type1").each(function(){
				var t = 1;
				var time = 4000;
				var $this = $(this);
				var list = $(".js-rolling-list li",this);
				var btn = $(".js-rolling-btn",this);
				
				//버튼 셋팅
				list.each(function(){
					btn.append("<a href='#none;' class="+'paging0_'+t+">"+t+"</a>");
					t++;
				});
				btn.find("a").eq(0).addClass("on");
				list.eq(0).show();

				function rolling_show(obj){
					$(">a",btn).removeClass("on");
					$(">a",btn).eq(obj).addClass("on");
					list.hide();
					if($this.hasClass("fade")){
						list.eq(obj).fadeIn(500);
					}else{
						list.eq(obj).show();
					}
				}

				//자동롤링
				var autoTimer = null
				autoTimer = setTimeout(function(){
					fadeInOut();
				},time);

				function fadeInOut(){
					var next = $(">a.on",btn).index() + 1;
					if (next == list.size()){
						next = 0;
					}
					rolling_show(next);

					if(autoTimer) clearTimeout(autoTimer); //기존 auto값 지워주고
					autoTimer = setTimeout(function(){
						fadeInOut()
					},time); // auto 다시 저장후 호출
				}

				//이미지
				$(">a",btn).mouseenter(function(){
					var nm = $(this).index();
					rolling_show(nm);
					clearTimeout(autoTimer);
				});

				$this.mouseenter(function(){
					clearTimeout(autoTimer);
				});

				$this.mouseleave(function(){
					autoTimer = setTimeout(function(){
						fadeInOut()
					},time); // auto 다시 저장후 호출
				});
				
				//화살표 버튼
				//if($(".js-rolling-arrow").length == 1){
					//이전버튼
					$(".js-rolling-arrow .prev_btn",$this).click(function(){
						var nm = $(">a.on",btn).index();
						nm--;
						rolling_show(nm);
						clearTimeout(autoTimer);
					});

					//다음버튼
					$(".js-rolling-arrow .next_btn",$this).click(function(){
						var nm = $(">a.on",btn).index();
						if(nm == list.length - 1){
							nm = -1;
						}
						nm++;
						rolling_show(nm);
						clearTimeout(autoTimer);
					});
				//}
			});
		};
	});
	</script>
</head>
<body>
	<div style="width:1000px;margin:0 auto;">
		<div class="rolling_box p_r js-rolling-type1 fade">
			<div class="rolling_box_inner js-rolling-list">
				<ul class="rolling_list">
					<li><img src="http://www.champstudy.com/Champ_M/image_ssl/img/main_new/main_img01.jpg" alt="" /></li>
					<li><img src="http://www.champstudy.com/Champ_M/image_ssl/img/main_new/main_img02.jpg" alt="" /></li>
					<li><img src="http://www.champstudy.com/Champ_M/image_ssl/img/main_new/main_img03.jpg" alt="" /></li>
					<li><img src="http://www.champstudy.com/Champ_M/image_ssl/img/main_new/main_img04.jpg" alt="" /></li>
				</ul>
			</div>
			<p class="rolling_arrow js-rolling-arrow">
				<a href="#;" class="prev_btn">이전</a>
				<a href="#;" class="next_btn">다음</a>
			</p>
			<div class="rolling_btn js-rolling-btn">
			</div>
		</div>
	</div>
</body>
</html>