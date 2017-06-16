<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<title>Teacher</title>
</head>
			<!-- 导航栏  -->
			<jsp:include page="navigation.jsp"></jsp:include>
			<!-- 以上导航栏  -->
			<!-- 基本信息 -->
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-2">
						<img src="image/1.jpg" style="width:80%;height:25%;" />
					</div>
					<div class="col-md-3">
						<h4>姓名: 赵兵</h4>
						<h4>性别: 男</h4>
						<h4>电话: 11111111111</h4>
						<h4>邮箱: 1342534654@qq.com</h4>
					</div>
					<div class="col-md-3">
						<h4>校区: 郑州金水</h4>
						<h4>所在部门: 教学部</h4>
						<h4>毕业院校:清华</h4>
					</div>
				</div>
			</div>
			<!-- 以上基本信息 -->
			<!-- 详细信息 -->
			<div class="row">
				<div class="col-md-12">
					<!-- 详细信息导航 -->
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="#basic" data-toggle="tab">基本信息</a>
						</li>
						<li><a href="#schedule" data-toggle="tab">课表</a>
						<li><a href="#judge" data-toggle="tab">评教结果</a>
						</li>
					</ul>
					<!-- 以上详细信息导航 -->
					<!-- 详细信息内容 -->
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="basic">
							<div class="container">
								<div class="row">
									<div class="col-md-2">
										传照片
									</div>
									<div class="col-md-4">
										状态<select class="form-control">
											<option class="btn btn-warning"></option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select> 
										员工号<input type="text" class="form-control" id="exampleInputName2">
										姓名<input type="text" class="form-control" id="exampleInputName2"><br/>
										性别&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name=" gender" checked>男
										   &nbsp;&nbsp;<input type="radio" name=" gender">女<br/><br/>
										身份证号<input type="text" class="form-control" id="exampleInputName2">
										地址<input type="text" class="form-control" id="exampleInputName2">
										
									</div>
									<div class="col-md-4">
										联系电话<input type="text" class="form-control" id="exampleInputName2">
										QQ号<input type="text" class="form-control" id="exampleInputName2">
										邮箱<input type="text" class="form-control" id="exampleInputName2">
										学历<input type="text" class="form-control" id="exampleInputName2">
										毕业院校<input type="text" class="form-control" id="exampleInputName2">
										班级<select class="form-control">
											<option class="btn btn-success"></option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select> 
									</div>
									<div class="col-md-1">2</div>
								</div>
							</div>
						</div>
						<!-- 课表 -->
						<div class="tab-pane fade" id="schedule">
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
						<!--  课程情况 -->
						<div class="tab-pane fade" id="judge">评教结果</div>
					</div>
					<!-- 以上详细信息内容 -->
					<!-- 保存按钮 -->
						<div class="row">
						<div class="col-md-2"></div>
							<div class="col-md-10">
								<button type="button" class="btn btn-default">保存</button>
							</div>
							<div class="col-md-2"></div>
						</div>
						<!-- 以上保存按钮 -->
				</div>
			</div>
			<!-- 以上详细信息 -->
			
		</div>
	</div>


	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>