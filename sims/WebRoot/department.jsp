<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

  <head>

    <title>Department</title>
	
	<style type="text/css">
		#type{display:inline-block;}
		#blankCheckbox{
			width:35px;
			height:35px;
		}
	</style>
  </head>
			<!-- 导航栏  -->
			<jsp:include page="navigation.jsp"></jsp:include>
			<!-- 以上导航栏  -->
			<!-- 基本信息 -->
				<div class="container">
					<h2>部门ID:001</h2>   
					<table class="table table-condensed">
							<colgroup>
							  <col style="width:10%">
							  <col style="width:90%">
							</colgroup>
						<!--<thead>
							<tr>
								<th>班级名称:</th>
								<th>一年级一班</th>
							</tr>
						</thead>-->
						<tbody>
							<tr>
								<td>部门名称:</td>
								<td>卫生部</td>
							</tr>
							<tr>
								<td>部门主任:</td>
								<td>Tomcat</td>
							</tr>
							<tr>
								<td>部门电话:</td>
								<td>110</td>
							</tr>
							<tr>
								<td>部门备注:</td>
								<td>210</td>
							</tr>
							<tr>
								<td><a href="#">添加人员</a></td>
								<td><a href="#">删除人员</a></td>
							</tr>
						</tbody>
					</table>
				</div>


<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#basic" data-toggle="tab">
			 基本信息
		</a>
	</li>
	<li><a href="#ios" data-toggle="tab">部门成员</a></li>
	<li><a href="#sessions" data-toggle="tab">部门介绍</a></li>
<!-- 	<li><a href="#qdao" data-toggle="tab">签到</a></li> -->
	<!-- <li class="dropdown">
		<a href="#" id="myTabDrop1" class="dropdown-toggle" 
		   data-toggle="dropdown">待定
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
			<li><a href="#jmeter" tabindex="-1" data-toggle="tab">jmeter</a></li>
			<li><a href="#ejb" tabindex="-1" data-toggle="tab">ejb</a></li>
		</ul>
	</li> -->
</ul>

<div id="myTabContent" class="tab-content">
<!--基本信息-->
	<div class="tab-pane fade in active" id="basic">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						  <div class="col-xs-10">
							<span>部门名称<span><input type="text" class="form-control" placeholder="" name="dept_name">
							<span>部门主任<span><select class="form-control input-sm">
								<option></option><option>xiao</option> <option>zhang</option> <option>zhao</option>
							</select>
							<span>部门电话<span><input type="text" class="form-control" placeholder="" name="dept_phone">
						  	<span>&nbsp;<span>
								<button type="button" class="btn btn-primary btn-lg btn-block">保存</button>
						  </div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="row">
						  <div class="col-xs-10">
							<span>部门状态<span><select class="form-control input-sm" name="dept_sta">
							<option></option> <option>运行</option> <option>关闭</option>
							</select>
							<span>校区<span><select class="form-control input-sm" name="dept_fk_sc_id">
							<option></option> <option>金水区</option> <option>新城区</option>
							</select>
									每周上班天数<br/>
								<div>
								  <label>
								  <input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>&nbsp; &nbsp; &nbsp;
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
								  <label>
									<input type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
								  </label>
							  </div>
								部门备注<textarea class="form-control" rows="2" id="exampleInputName2" name="dept_memo"></textarea>
							</div>
					</div>
				</div>
				<div class="col-md-2">
					<br/><br/><br/><br/><br/><br/><br/><br/>
					
				</div>
				<div class="col-md-2"></div>

				

			</div>
		</div>
	</div>
	<!-----------班级人数----------------->
	<div class="tab-pane fade" id="ios">
		<table class="table table-hover">
			<caption>部门人数</caption>
			<thead>
				<tr>
					<th>编号</th>
					<th>名字</th>
					<th>电话号码</th>
					<th>家庭住址</th>
					<th>入职日期</th>
					<th>结束日期</th>
					<th>更改信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>001</td>
					<td>Bangalore</td>
					<td>560001</td>
					<td>郑州市金水区杨金路科教园区</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>002</td>
					<td>Mumbai</td>
					<td>400003</td>
					<td>郑州市金水区杨金路科教园区</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>003</td>
					<td>Pune</td>
					<td>411027</td>
					<td>郑州市金水区杨金路科教园区</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>004</td>
					<td>Pune</td>
					<td>411027</td>
					<td>郑州市金水区杨金路科教园区</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>005</td>
					<td>Pune</td>
					<td>411027</td>
					<td>郑州市金水区杨金路科教园区</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
				<a href="#">上一页</a>  <a href="#">下一页</a>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<div>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>
