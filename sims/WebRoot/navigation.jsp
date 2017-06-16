<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

#tab {
	line-height: 70px;
}
</style>

</head>
<body style="background: rgba(0,0,0,.1);">
	<div class="container">
		<div class="row">
			<!-- 导航栏  -->
			<div class="row" id="tab" style="background: rgba(0,0,0,.05);">
				<!-- 图标 -->
				<div class="col-md-2" style="text-align:right;">
					<img src="image/logo.png" class="img-rounded" style="width:70%;" />
				</div>
				<!-- 主页 -->
				<div class="col-md-1">
					<span class="glyphicon glyphicon-home" style="font-size:20px"
						aria-hidden="true"></span> <a role="menuitem" tabindex="-1"
						href="home.jsp">主页</a>
				</div>
				<!-- 查找 -->
				<div class="col-md-1">
					<div class="dropdown">
						<span class="glyphicon glyphicon-search" style="font-size:20px"
							aria-hidden="true"></span> <a id="dLabel" role="button"
							data-toggle="dropdown" data-target="#" href="search.html"> 查找
							<span class="caret"></span> </a>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								id="down" href="student.jsp">学生</a>
							</li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="class.jsp">班级</a>
							</li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
							href="teacher.jsp">老师</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
							href="department.jsp">部门</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
							href="search.jsp">条件</a></li>
						</ul>
					</div>
				</div>
				<!-- 新建 -->
				<div class="col-md-1">
					<div class="dropdown">
						<span class="glyphicon glyphicon-plus-sign" style="font-size:20px"
							aria-hidden="true"></span> <a id="dLabel" role="button"
							data-toggle="dropdown" data-target="create.html" href="create.html"> 创建
							<span class="caret"></span> </a>
						<ul class="dropdown-menu" role="menu"
							aria-labelledby="dropdownMenu1">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="create.jsp">学生</a>
							</li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#">班级</a>
							</li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">老师</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
							href="#">部门</a></li>
						</ul>
					</div>
				</div>
				<!-- 课表 -->
				<div class="col-md-1">
					<span class="glyphicon glyphicon-calendar" style="font-size:20px"
						aria-hidden="true"></span> <a role="menuitem" tabindex="-1"
						href="schedule.jsp">课表</a>
				</div>
				<div class="col-md-2"></div>
				<!-- 模糊查询 -->
				<div class="col-md-2" style="margin-top:10px;">
					<input type="text" class="form-control" id="exampleInputName2">
				</div>
				<!-- 当前用户 -->
				<div class="col-md-2">
					<div class="dropdown">
						<span class="glyphicon glyphicon-user" style="font-size:20px"
							aria-hidden="true"></span> <a id="dLabel" role="button"
							data-toggle="dropdown" data-target="#" href="/page.html">
							当前用户 <span class="caret"></span> </a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="login.jsp">退出登录</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 以上导航栏  -->
