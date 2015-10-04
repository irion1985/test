<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC >
<html>
<div >
<img src="resources/trs/red.jpg">


							<li>이름: ${list.tr_name} </li><br>
							<li>영문이름: ${list.tr_ename} </li><br>
							<li>나이: ${list.tr_birth} </li><br>
							<li>성별: ${list.tr_gender} </li><br>
							<li>키: ${list.tr_height} </li><br>
							<li>${(stat.count)%2 eq 0} </li><br>
							<li><a href="gallery2" class=".btn" >상세정보</a></li>
 

</div>

</html>