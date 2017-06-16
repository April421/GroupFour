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
					<li class="active"><a href="#department" data-toggle="tab"> <span
							class="glyphicon glyphicon-th-list" style="font-size:20px"
							aria-hidden="true"></span>部门查询 </a></li>				
				</ul>
				<!-- 以上查询框导航栏  -->

					<!-- 部门查询  -->
					<div class="tab-pane fade in active" id="department">
						<div class="row">
							<div class="col-md-6">
								部门号<select class="form-control">
									<option class="btn btn-warning"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 
								电话号码<input type="text" class="form-control"> 
								
							</div>
							<div class="col-md-6">
									部门名称<select class="form-control">
									<option></option>
									<option value="1">教务部</option>
									<option value="2">财务部</option>
									<option value="3">睡觉部</option>
									</select>
							</div>
						</div>
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
											<th>部门编号</th>
											<th>部门名称</th>
											<th>电话号码</th>
											
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>001</td>
											<td>教务部</td>
											<td>560001</td>
										</tr>
										<tr>
											<td>001</td>
											<td>教务部</td>
											<td>560001</td>
										</tr>
										<tr>
										<td>001</td>
											<td>教务部</td>
											<td>560001</td>
										<tr>
											<td>001</td>
											<td>教务部</td>
											<td>560001</td>
										</tr>
										<tr>
											<td>001</td>
											<td>教务部</td>
											<td>560001</td>                                                                         
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 以上结果显示 -->
					</div>
					<!-- 以上部门查询  -->
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
