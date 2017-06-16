<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<title>Student</title>
<style type="text/css">

#type {
	display: inline-block;
}
</style>
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
						<h4>姓名: 曹聪</h4>
						<h4>性别:女</h4>
						<h4>电话: 13777849721</h4>
						<h4>邮箱: 124744674@qq.com</h4>
					</div>
					<div class="col-md-3">
						<h4>校区: 郑州金水</h4>
						<h4></h4>
						<h4>班号: QY68</h4>
						<h4>班主任: 罗丽丽</h4>
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
						<li><a href="#course" data-toggle="tab">课程情况</a></li>
						<li><a href="#ach" data-toggle="tab">课时</a></li>
						<li><a href="#score" data-toggle="tab">成绩</a></li>
						<li><a href="#comment" data-toggle="tab">备注</a></li>
						<li><a href="#job" data-toggle="tab">就业情况</a></li>
						<li><a href="#material" data-toggle="tab">下载资料</a></li>
						<li><a href="#judge" data-toggle="tab">评教</a></li>
					</ul>
					<!-- 以上详细信息导航 -->
					<!-- 详细信息内容 -->
					<div id="myTabContent" class="tab-content">
						<!-- 基本信息 -->
						<div class="tab-pane fade in active" id="basic">
							<div class="container">
								<div class="row">
									<div class="col-md-2">传照片</div>
									<div class="col-md-4">
										学籍编号<input type="text" class="form-control"
											id="exampleInputName2"> 姓名<input type="text"
											class="form-control" id="exampleInputName2"> 性别<select
											class="form-control">
											<option></option>
											<option>男</option>
											<option>女</option>
										</select>
										学历<select class="form-control">
											<option></option>
											<option>初中</option>
											<option>高中</option>
											<option>专科</option>
											<option>本科</option>
											<option>研究生</option>
										</select> 
										毕业院校<input type="text" class="form-control"> 
										所学专业<input type="text" class="form-control">
										班级编号<select class="form-control">
											<option></option>
											<option>QY66</option>
											<option>QY67</option>
											<option>QY68</option>
											<option>QY69</option>
										</select>  
										学生档案备注
										<textarea class="form-control" rows="2" id="exampleInputName2"></textarea>

									</div>
									<div class="col-md-4">
										身份证号<input type="text" class="form-control"
											id="exampleInputName2"> 详细地址<input type="text"
											class="form-control" id="exampleInputName2"> 联系电话<input
											type="text" class="form-control" id="exampleInputName2">
										QQ号<input type="text" class="form-control"
											id="exampleInputName2"> 邮箱地址<input type="text"
											class="form-control" id="exampleInputName2"> 监护人姓名<input
											type="text" class="form-control" id="exampleInputName2">
										监护人电话<input type="text" class="form-control"
											id="exampleInputName2"> 
										个人兴趣爱好
										<textarea class="form-control" rows="2" id="exampleInputName2"></textarea>
									</div>
									<div class="col-md-1"></div>
								</div>
								<!-- 保存按钮 -->
								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-10">
										<button type="button" class="btn btn-default">保存</button>
									</div>
									<div class="col-md-2"></div>
								</div>
								<!-- 以上保存按钮  -->
							</div>
						</div>
						<!-- 以上基本信息 -->
						<!-- 课程情况 -->
						<div class="tab-pane fade" id="course">
							<table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								<thead>
									<tr>
										<th>课程名称</th>
										<th>班级编号</th>
										<th>班主任</th>
										<th>老师</th>
										<th>起始日期</th>
										<th>结束日期</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Java</td>
										<td>QY68</td>
										<td>罗丽丽</td>
										<td>赵兵</td>
										<td>2017-2-18</td>
										<td>2017-7-18</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<!--  以上课程情况 -->
						<!-- 课时 -->
						<div class="tab-pane fade" id="ach">
							<table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								<thead>
									<tr>
										<th>课程名称</th>
										<th>班级编号</th>
										<th>班主任</th>
										<th>老师</th>
										<th>产出课时</th>
										<th>剩余课时</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Java</td>
										<td>QY68</td>
										<td>罗丽丽</td>
										<td>赵兵</td>
										<td>120</td>
										<td>150</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<!-- 以上课时 -->
						<!-- 成绩 -->
						<div class="tab-pane fade" id="score">
							<table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								<thead>
									<tr>
										<th>姓名</th>
										<th>课程1</th>
										<th>课程2</th>
										<th>课程3</th>
										<th>课程4</th>
										<th>课程5</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>曹聪</td>
										<td>68</td>
										<td>76</td>
										<td>78</td>
										<td>85</td>
										<td>65</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<div class="tab-pane fade" id="comment">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<br />
								<br />
								<br />
								<textarea class=form-control row="10"></textarea>
								<br /> <input type="submit" value="保存" />
							</div>
							<div class="col-md-1"></div>
						</div>
						<!-- 以上成绩 -->
						<!-- 以上就业情况 -->
						<div class="tab-pane fade" id="job"><table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								<thead>
									<tr>
										<th>姓名</th>
										<th>班级</th>
										<th>老师</th>
										<th>班主任</th>
										<th>就业城市</th>
										<th>就业单位</th>
										<th>薪资待遇</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>曹聪</td>
										<td>QY68</td>
										<td>赵兵</td>
										<td>罗丽丽</td>
										<td>郑州</td>
										<td>AAA</td>
										<td>？？？</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<!-- 以上就业情况 -->
						<!-- 下载资料 -->
						<div class="tab-pane fade" id="material"><table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								下载资料
						</div>
						<!-- 以上下载资料 -->
						<!-- 评教 -->
						<div class="tab-pane fade" id="judge"><table class="table table-hover"
								style="background: rgba(0,0,0,.1);">
								<thead>
									<tr>
										<th>姓名</th>
										<th>班级</th>
										<th>老师</th>
										<th>班主任</th>
										<th>就业城市</th>
										<th>就业单位</th>
										<th>薪资待遇</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>曹聪</td>
										<td>QY68</td>
										<td>赵兵</td>
										<td>罗丽丽</td>
										<td>郑州</td>
										<td>AAA</td>
										<td>？？？</td>
									</tr>									
								</tbody>
							</table>
						</div>
						<!-- 以上评教 -->						
					</div>
					<!-- 以上详细信息内容 -->

				</div>
			</div>
			<!-- 以上详细信息 -->

		</div>
	</div>


	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
