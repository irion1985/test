<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업로드</title>
</head>
<body>
	<form:form commandName="tcom" action="fileUpload.do" method="post" enctype="multipart/form-data">
<%-- 	<form action="fileUpload.do" method="post" enctype="multipart/form-data"> --%>
		<fieldset>
			<table>
				<tr>
					<th>이름</th>
					<td>
					<form:input path="name"/>
<!-- 					<input type="text" name="name" required="required" placeholder="이름"></td> -->
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
					<form:input path="pw"/>
<!-- 					<input type="password" name="pw" required="required" placeholder="비밀번호"></td> -->
				</tr>
				<tr>
					<th>파일</th>
					<td>
<%-- 					<form:input path="file"/> --%>
					<input type="file" name="up" required="required"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
					<form:input path="title"/>
<!-- 					<input type="text" name="title" required="required" placeholder="제목"></td> -->
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<form:textarea path="text"/>
<!-- 					<textarea rows="20" cols="40" name="content" required="required" placeholder="내용"></textarea></td> -->
				</tr>
				<tr>
					<td colspan="2">
<%-- 						<h1>${result}</h1> --%>
						<input type="submit" value="작성">
					</td>
				</tr>
			</table>
		</fieldset>
<%-- 	</form> --%>
	</form:form>
</body>
</html>