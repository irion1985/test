<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta charset="UTF-8">
<title>gallery</title>
<style type="text/css">
	body{background-color: #212121;}
	td {border: 1px solid silver;	background-color: #353535;	width: 470px;	height: 300px;	}
	tr {border: 0px;	width: auto;	height: auto;}
	img {width: 200px; height: 300px;}
	ul{list-style: none;}
	.btn{border: 1px;	background-color: blue;	width: 80px;	height: 20px;}
	.main{border: 0px;	width: 1040;	height: auto;	text-align: center;}
	.profileimg{width: 200px;	height: 300px;	float: left;}
	.profile{width: 170px;	height: 300px;	float: left;}
	.layout {border: 1px solid red;	width: 940px;	height: auto;	margin: auto;}
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
// a = 태그 / #a = id / .a = class
$(document).ready(function() {
	$('td').hover(
			function() {
			$(this).css('background-color' , 'silver');
			},
			function() {
			$(this).css('background-color' , '353535');
			});
	
});
</script>
</head>
<body>
<div class=".main" align="center">
	<h1>GALLERY</h1>
	<div class="layout">
		<table >
			<tr> 
				<th colspan="2"> MODELS </th>
			</tr>
			<tr>
				<td> 
					<div class="profileimg">
						<img src="resources/trs/red.jpg">
					</div>
					<div class="profile">
						<ul>
							<li>이름: ${trs.tr_name} </li><br>
							<li>영문이름: ${trs.tr_ename} </li><br>
							<li>나이: ${trs.tr_birth} </li><br>
							<li>성별: ${trs.tr_gender} </li><br>
							<li>키: ${trs.tr_height} </li><br>
							<li><a href="gallery2" class=".btn">상세정보</a></li><br>
							<li> <input type="button"> </li><br>
						</ul>					
					</div>
				</td>
				<td> 
					<div class="profileimg">
						<img src="resources/trs/red.jpg">
					</div>
					<div class="profile">
						<ul>
							<li>이름: ${trs.tr_name} </li><br>
							<li>영문이름: ${trs.tr_ename} </li><br>
							<li>나이: ${trs.tr_birth} </li><br>
							<li>성별: ${trs.tr_gender} </li><br>
							<li>키: ${trs.tr_height} </li><br>
							<li><a href="gallery2" class=".btn">상세정보</a></li><br>
							<li> <input type="button"> </li><br>
						</ul>					
					</div>
				 </td>
			</tr>
			<tr>
				<td> model1 </td>
				<td> model2 </td>
			</tr>
			<tr>
				<td> model1 </td>
				<td> model2 </td>
			</tr>
		</table>
	
	
	
	
	
	</div>

</div>

</body>
</html>