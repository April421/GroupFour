<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<head>
<title>Search</title>

	<script type="text/javascript">
		function _go(select) {
			var index=select.selectedIndex;//得到选中的坐标
			var option=select.options[index];//通过下标得到option元素
			var value=option.value;//通过option得到对应的value值
			location="<c:url value='/TeacherServlet?method=query&pageCode='/>"+value+"${url}";
		}
	</script>

</head>
		<!-- 导航栏  -->
		<jsp:include page="navigation.jsp"></jsp:include>
		<!-- 以上导航栏  -->
		<!-- 查询框  -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- 查询框导航栏  -->
				<ul id="myTab" class="nav nav-tabs"
					style="background: rgba(0,0,0,.2);">
					<li class="active"><a href="#condition" data-toggle="tab"> <span
							class="glyphicon glyphicon-question-sign" style="font-size:20px"
							aria-hidden="true"></span>模糊查询 </a></li>
				</ul>
				<!-- 以上查询框导航栏  -->
					
					<!-- 模糊查询  -->
					<div class="tab-pane fade in active" id="condition">
						<!-- 添加条件 -->
						<div class="row">
							<div class="col-md-12">
								<button type="button" class="btn btn-default">添加条件</button>
							</div>
						</div>
						<!-- 以上添加条件 -->
						<!-- 查询按钮 -->
						<div class="row">
							<div class="col-md-12">
								<button type="button" class="btn btn-default">查询</button>
							</div>
						</div>
						<!-- 以上查询按钮 -->
						<!-- 结果显示 -->
						<div class="row">
							<div class="col-md-12">
								<div style="background: rgba(0,0,0,.2);">
									<span><span class="glyphicon glyphicon-th-list"
										style="font-size:20px" aria-hidden="true"></span>查询结果</span>
								</div>
								<!-- 结果显示表格 -->
								<table class="table table-hover"
									style="background: rgba(0,0,0,.1);">
									<thead>
										<tr>
											<th>学号</th>
											<th>名字</th>
											<th>剩余课时</th>
											<th>起始日期</th>
											<th>结束日期</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>001</td>
											<td>Bangalore</td>
											<td>560001</td>
											<td>1</td>
											<td>2</td>
										</tr>
										<tr>
											<td>002</td>
											<td>Mumbai</td>
											<td>400003</td>
											<td>1</td>
											<td>2</td>
										</tr>
										<tr>
											<td>003</td>
											<td>Pune</td>
											<td>411027</td>
											<td>1</td>
											<td>2</td>
										</tr>
										<tr>
											<td>004</td>
											<td>Pune</td>
											<td>411027</td>
											<td>1</td>
											<td>2</td>
										</tr>
										<tr>
											<td>005</td>
											<td>Pune</td>
											<td>411027</td>
											<td>1</td>
											<td>2</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 以上结果显示 -->
					</div>
					<!-- 以上模糊查询  -->
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<!-- 以上查询框  -->
	</div>



	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
