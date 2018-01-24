<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="reg_box">
		<form action="insertService" method="post">
			userName:<input type="text" name="e_name"><br>
			passWord:<input type="text" name="e_password"><br>
			email:<input type="text" name="e_email"><br>
			gander:<input type="text" name="e_gander"><br>
			regDate:<input type="date" name="e_data"><br>
			<input type="submit" value="submit">
		</form>
		<br>用户更新s
		<form action="addNews" method="post">
			newsTitle:<input type="text" name="newsTitle"><br>
			newsContent:<input type="text" name="newsContent"><br>
			catelogId:<input type="text" name="catelogId"><br>
			author:<input type="text" name="author"><br>
			newsData:<input type="date" name="newsData"><br>
			<input type="submit" value="submit">
		</form>
	</div>
</body>
</html>