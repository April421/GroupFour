<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'forgetpassword.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body style="background: rgba(0,0,0,.1);">
	<div class="container">
		<div class="row"><br/><br/><br/><br/><br/><br/></div>
		<div class="row">
			<div class="col-md-4"></div>
			
			<div class="col-md-4">
				<form action="" method="post">
					请输入身份证号：<input type="text" class="form-control" name="cartid">
					请输入姓名：<input type="text" class="form-control" name="name">
					请输入手机号码：<input type="text" class="form-control" name="phone">
					<br/> 
					<input type="submit" class="btn btn-primary btn-lg btn-block" value="提交" />
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>


	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
