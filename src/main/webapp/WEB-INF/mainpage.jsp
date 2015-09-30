<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pro Health</title>
<style type="text/css">
a{text-decoration:none; font-weight:bold;color:#ffffff;} /* 링크부분 글자모양 없음, 글자굵게, 흰색 */
#menu{float:left; width:100px; height:200px; background-color:#666666; text-align:center;}
/*      왼쪽정렬,가로 100px, 세로(높이) 200px, 배경색 #666666 글자 가운데로~ */

body {
	border: 0px; width: 940; height: auto;
	text-align: center;
}
</style>
</head>
<body style="background-color: ;">
<div align="center" >
	<div style="border: 0px; width: 940px; height: auto; text-align: center;" id="wrap">
		<h1 align="center">Main</h1>
			<div align="center" >
				<table style="text-align: center;">
					<tr>
						<td><img src="img\buddy.png" style="border: 0px; width: 50px; height: 50px;"></td>
						<td valign="middle"><img src="img\neverlogo.png" style="border: 0px; width: 140px; height: 35px; margin-top: 5px;"></td>
<%-- 						<td><jsp:include page="nsbox.jsp"></jsp:include></td> --%>
<%-- 						<td><jsp:include page="ggbox.jsp"></jsp:include></td> --%>
					</tr>
				</table>
			</div>
		<jsp:include page="mainmenu.jsp"></jsp:include>
	<%
		String id = request.getParameter("id");
	%>
			<div style="border: 0px; width: 940;  text-align: center;">
  				<div style="border: solid 0px; width: 340px;  float: left;">
<%--   					<jsp:include page="loginform.jsp"></jsp:include> --%>
<!--    <iframe src="loginform.jsp" scrolling="no" width="400" height="400" name="ppp" frameborder="0"></iframe> -->
<!--   - 아이프레임 주소는 src, 가로크기 400px, 세로(높이) 200px, 이름은 ppp,  경계선은 보이지 않음 -->
 				</div>
			</div>
		<div style="border: 0px; width: 595px; float: right;"  >
<%-- 			<jsp:include page="footer.jsp"></jsp:include> --%>
		</div>
	</div>
</div>
</body>

</html>