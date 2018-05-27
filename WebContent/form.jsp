<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자기소개서 폼</title>
<link rel="stylesheet" type="text/css" href="form.css">
</head>
<body>
	<input type="button" value="관리자계정" style="float: right;"
		onclick="location='readlist.jsp'">
	<center>
		<fieldset>
			<legend>설문조사</legend>
			<form action="process.jsp" method="post">
				<h5>좋아하는 노래 장르</h5>
				 kpop : <input type="radio" name=chk_info value="kpop"><br>
				pop : <input type="radio" name=chk_info value="pop"><br>
				jazz : <input type="radio" name=chk_info value="jazz"><br>
				ballad : <input type="radio" name=chk_info value="ballad"><br>
				dance : <input type="radio" name=chk_info value="dance">
				<br> <input type="submit" value="제출"><input	type="reset" value="초기화">
			</form>
		</fieldset>
	</center>
</body>
</html>