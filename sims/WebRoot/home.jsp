<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<head>
<title>Home</title>
</head>
			<!-- 导航栏  -->
			<jsp:include page="navigation.jsp"></jsp:include>
			<!-- 以上导航栏  -->
			<!-- 当前用户课表 -->
			<div class="row">
				<div class="col-md-12">
				</div>				
			</div>
			<!-- 以上当前用户课表 -->
		</div>
		<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
		<script
			src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
