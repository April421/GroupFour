<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<title>Class</title>

<style type="text/css">
#blankCheckbox{
	width:35px;
	height:35px;
}
	#type{display:inline-block;}
</style>
</head>
			<!-- 导航栏  -->
			<jsp:include page="navigation.jsp"></jsp:include>
			<!-- 以上导航栏  -->
			<!-- 基本信息 -->
				<div class="container">
					<h2>班级ID:001</h2>   
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
								<td>班级名称:</td>
								<td>一年级一班</td>
							</tr>
							<tr>
								<td>班主任:</td>
								<td>Tom</td>
							</tr>
							<tr>
								<td>老师:</td>
								<td>金豆</td>
							</tr>
							<tr>
								<td>教室:</td>
								<td>210</td>
							</tr>
							<tr>
								<td><a href="#">添加学生</a></td>
								<td><a href="#">删除学生</a></td>
							</tr>
						</tbody>
					</table>
				</div>


<ul id="myTab" class="nav nav-tabs">
	<li class="active"><a href="#basic" data-toggle="tab">基本信息</a></li>
	<li><a href="#ios" data-toggle="tab">班级成员</a></li>
	<li><a href="#schedule" data-toggle="tab">课表</a></li>
	<li><a href="#sessions" data-toggle="tab">成绩</a></li>
	<li><a href="#attendance" data-toggle="tab">签到</a></li>
	<li><a href="#material" data-toggle="tab">上传资料</a></li>
</ul>

<div id="myTabContent" class="tab-content">
<!--基本信息-->
	<div class="tab-pane fade in active" id="basic">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="row">
						  <div class="col-xs-10">
							<span>班级名称<span><input type="text" class="form-control" placeholder="">
							<span>班主任<span><select class="form-control input-sm">
							<option>xiao</option> <option>zhang</option> <option>zhao</option>
							</select>
							<span>级别</span><br><span>High Flyers - HFE </span><br>
							<span>起始日期:</span><br><span>2017-04-28 </span><br>
							<span>结束日期:</span><br>
							<span>开始周:</span><br><span>第5周</span><br>
							<span>结束周:</span><br><span>第6周:</span><br>
						  </div>
					</div>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-4">
					<div class="row">
						  <div class="col-xs-10">
							<span>老师<span><select class="form-control input-sm">
							<option>xiao</option> <option>zhang</option> <option>zhao</option>
							</select>
							<span>班级<span><select class="form-control input-sm">
							<option>xiao</option> <option>zhang</option> <option>zhao</option>
							</select>
						
									每周上课天数<br/>
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

									上课时间<br/>
							  <select id="type" class="form-control" class="status" style="width:110px">
								  <option class="btn btn-success"> </option>
								  <option>08:00</option>
								  <option>08:30</option>
								  <option>09:00</option>
								  <option>09:30</option>
								  <option>10:00</option>
								  <option>10:30</option>
								  <option>11:00</option>
								  <option>11:30</option>
								  <option>12:00</option>
								  <option>12:30</option>
								  <option>13:00</option>
								  <option>13:30</option>
								  <option>14:00</option>
								  <option>14:30</option>
								  <option>15:00</option>
								  <option>15:30</option>
								  <option>16:00</option>
								  <option>17:30</option>
								  <option>18:00</option>
								  <option>18:30</option>
								  <option>19:00</option>
								  <option>19:30</option>
								  <option>20:00</option>
								</select>
								<span class="glyphicon glyphicon-time"style="font-size:20px"></span> To
								<select id="type" class="form-control" class="status" style="width:110px">
								  <option class="btn btn-success"> </option>
								  <option>08:00</option>
								  <option>08:30</option>
								  <option>09:00</option>
								  <option>09:30</option>
								  <option>10:00</option>
								  <option>10:30</option>
								  <option>11:00</option>
								  <option>11:30</option>
								  <option>12:00</option>
								  <option>12:30</option>
								  <option>13:00</option>
								  <option>13:30</option>
								  <option>14:00</option>
								  <option>14:30</option>
								  <option>15:00</option>
								  <option>15:30</option>
								  <option>16:00</option>
								  <option>17:30</option>
								  <option>18:00</option>
								  <option>18:30</option>
								  <option>19:00</option>
								  <option>19:30</option>
								  <option>20:00</option>
								</select> <span class="glyphicon glyphicon-time" style="font-size:20px"></span>
							</div>

					</div>
				</div>
				<div class="col-md-2"></div>

				

			</div>
		</div>
	</div>
	<!-----------班级成员----------------->
	<div class="tab-pane fade" id="ios">
		<table class="table table-hover">
			<caption>班级人数</caption>
			<thead>
				<tr>
					<th>学号</th>
					<th>名字</th>
					<th>电话号码</th>
					<th>家庭住址</th>
					<th>剩余课时</th>
					<th>起始日期</th>
					<th>结束日期</th>
					<th>更改信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>001</td>
					<td>Bangalore</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>560001</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>002</td>
					<td>Mumbai</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>400003</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>003</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>004</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>005</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
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
	<!-----------课表----------------->
	<div class="tab-pane fade" id="schedule">
		<table class="table table-hover">
			<caption>班级人数</caption>
			<thead>
				<tr>
					<th>学号</th>
					<th>名字</th>
					<th>电话号码</th>
					<th>家庭住址</th>
					<th>剩余课时</th>
					<th>起始日期</th>
					<th>结束日期</th>
					<th>更改信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>001</td>
					<td>Bangalore</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>560001</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>002</td>
					<td>Mumbai</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>400003</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>003</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>004</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
					<td>1</td>
					<td>2</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>005</td>
					<td>Pune</td>
					<td>15886772276</td>
					<td>郑州市金水区杨金路</td>
					<td>411027</td>
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
<!-------------------------成绩------------------------------>
	<div class="tab-pane fade" id="sessions">

		<table class="table table-hover">
			<caption>学生成绩</caption>
			<thead>
				<tr>
					<th rowspan="2">学号</th>
					<th rowspan="2">名字</th>
				</tr>
				<tr>
					<th>语文</th>
					<th>数学</th>
					<th>英语</th>
					<th>物理</th>
					<th>化学</th>
					<th>政治</th>
					<th>历史</th>
					<th>地理</th>
					<th>更改信息</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>0001</td>
					<td>Bangalore</td>
					<td>88</td>
					<td>78</td>
					<td>89</td>
					<td>76</td>
					<td>50</td>
					<td>60</td>
					<td>68</td>
					<td>77</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>0002</td>
					<td>Mumbai</td>
					<td>88</td>
					<td>78</td>
					<td>89</td>
					<td>76</td>
					<td>50</td>
					<td>60</td>
					<td>68</td>
					<td>77</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>0003</td>
					<td>Pune</td>
					<td>88</td>
					<td>78</td>
					<td>89</td>
					<td>76</td>
					<td>50</td>
					<td>60</td>
					<td>68</td>
					<td>77</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
				<tr>
					<td>0004</td>
					<td>Pune</td>
					<td>88</td>
					<td>78</td>
					<td>89</td>
					<td>76</td>
					<td>50</td>
					<td>60</td>
					<td>68</td>
					<td>77</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				<tr>
					<td>0005</td>
					<td>Pune</td>
					<td>88</td>
					<td>78</td>
					<td>89</td>
					<td>76</td>
					<td>50</td>
					<td>60</td>
					<td>68</td>
					<td>77</td>
					<td><a href="#">修改</a><a href="#"> 删除</a></td>
				</tr>
			</tbody>
			<tr>
				<a href="#">上一页</a>  <a href="#">下一页</a>
			</tr>
		</table>
	</div>
<!----------------------------签到------------------------------->
	<div class="tab-pane fade" id="attendance">
		   <label>
			  <input type="radio" name="optionsRadios" id="optionsRadios1" 
				 value="option1" checked> 签到
		   </label>
		   <label>
		   <input type="radio" name="optionsRadios" id="optionsRadios2" 
				 value="option2">请假
		   </label>
		   <label>
		   <input type="radio" name="optionsRadios" id="optionsRadios3" 
				 value="option2"> 旷课
		   </label>
		   <label>
		   <input type="radio" name="optionsRadios" id="optionsRadios4" 
				 value="option2"> 清除
		   </label>
	</div>
	<!----------------------------签到------------------------------->
	<div class="tab-pane fade" id="material">
		   <label>
			  <input type="radio" name="optionsRadios" id="optionsRadios1" 
				 value="option1" checked> 签到
		   </label>
		   <label>
		   <input type="radio" name="optionsRadios" id="optionsRadios2" 
				 value="option2">请假
		   </label>
	</div>
</div>

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>