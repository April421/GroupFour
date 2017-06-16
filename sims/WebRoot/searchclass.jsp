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
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
					<li class="active"><a href="#class" data-toggle="tab"> <span
							class="glyphicon glyphicon-certificate" style="font-size:20px"
							aria-hidden="true"></span>班级查询 </a></li>

				</ul>
				<!-- 以上查询框导航栏  -->


					<!-- 班级查询  -->
					<div class="tab-pane fade in active" id="class">
						<div class="row">
							<div class="col-md-6">
								状态<select class="form-control">
									<option></option>
									<option>在读</option>
									<option>已关班</option>
								</select> 
								班级<select class="form-control">
									<option></option>
									<option>qy68</option>
								</select>  
								班主任<select class="form-control">
									<option></option>
									<option>张三</option>
								</select> 
								专业<select class="form-control">
									<option></option>
									<option>java</option>
									<option>andriod</option>
									<option>iso</option>
								</select>
								课程<select class="form-control">
									<option></option>
									<option>java</option>
									<option>andriod</option>
									<option>iso</option>
								</select>
							</div>
							<div class="col-md-6">
								老师<select class="form-control">
									<option class="btn btn-success"></option>
									<option>张三</option>
								</select> 教室<select class="form-control">
									<option></option>
									<option>第一机房</option>
									<option>第二机房</option>
								</select> 
								起始日期 
								<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						            <input class="form-control" size="16" name="stu.stu_age" type="text" readonly>
						            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						        </div>
						                     结束日期 
								<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						            <input class="form-control" size="16" name="stu.stu_age" type="text" readonly>
						            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						        </div>
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
											<th><input type="button" style="border:0px;" value="aaa"/></th>
											<th>班主任</th>
											<th>老师</th>
											<th>起始日期</th>
											<th>结束日期</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="button" style="border:0px;" value="aaa" readonly/></td>
											<td>罗丽丽</td>
											<td><input type="button" style="border:0px;" value="aaa"/></td>
											<td>2017-2-18</td>
											<td>2017-7-18</td>
										</tr>
										<tr>
											<td>QY68</td>
											<td>罗丽丽</td>
											<td>赵兵</td>
											<td>2017-2-18</td>
											<td>2017-7-18</td>
										</tr>
										<tr>
											<td>QY68</td>
											<td>罗丽丽</td>
											<td>赵兵</td>
											<td>2017-2-18</td>
											<td>2017-7-18</td>
										</tr>
										<tr>
											<td>QY68</td>
											<td>罗丽丽</td>
											<td>赵兵</td>
											<td>2017-2-18</td>
											<td>2017-7-18</td>
										</tr>
										<tr>
											<td>QY68</td>
											<td>罗丽丽</td>
											<td>赵兵</td>
											<td>2017-2-18</td>
											<td>2017-7-18</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 以上结果显示 -->
					</div>
					<!-- 以上班级查询  -->
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<!-- 以上查询框  -->
	</div>



	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
    
  	function  showServer()
	{	
		var  arr=new Array();
		arr["省份"]=["市"];
 		arr["河南"]=["平顶山","郑州","洛阳"];
 		arr["河北"]=["邢台","保定","唐山"];
		arr["湖南"]=["湘潭","长沙","鹰潭"];
		arr["湖北"]=["荆门","武汉","孝感"];
		var  province=document.getElementById("province").value;
		document.getElementById("server").options.length=0;
		for(var i in arr[province])
		{
				var op=document.createElement("option");
				op.text=arr[province][i];
				op.value=arr[province][i];
				document.getElementById("server").options.add(op);
		}
			showServers();
	}
	
	function  showServer()
	{	
		var  arr=new Array();
		arr["省份"]=["市"];
 		arr["河南"]=["平顶山","郑州","洛阳"];
 		arr["河北"]=["邢台","保定","唐山"];
		arr["湖南"]=["湘潭","长沙","鹰潭"];
		arr["湖北"]=["荆门","武汉","孝感"];
		var  province=document.getElementById("province1").value;
		document.getElementById("server1").options.length=0;
		for(var i in arr[province])
		{
				var op=document.createElement("option");
				op.text=arr[province][i];
				op.value=arr[province][i];
				document.getElementById("server1").options.add(op);
		}
			showServers();
	}
	
	function showServers(){
		var  arrs=new Array();
		arrs["市"]=["区/县"];
		arrs["邢台"]=["桥东区","邢台县","内丘"];
		arrs["平顶山"]=["新城区","宝丰县","鲁山县"];
		arrs["郑州"]=["二七区","金水区","惠济区"];
		arrs["湘潭"]=["长沙县","天心区","开福区"];
		arrs["荆门"]=["东宝区","京山县","沙洋县"];
		var  ser=document.getElementById("server").value;
		document.getElementById("servers").options.length=0; 
		for(var i in arrs[ser])
		{
				var opt=document.createElement("option");
				opt.text=arrs[ser][i];
				opt.value=arrs[ser][i];
				document.getElementById("servers").options.add(opt);
		}
	}
	
	function showServers(){
		var  arrs=new Array();
		arrs["市"]=["区/县"];
		arrs["邢台"]=["桥东区","邢台县","内丘"];
		arrs["平顶山"]=["新城区","宝丰县","鲁山县"];
		arrs["郑州"]=["二七区","金水区","惠济区"];
		arrs["湘潭"]=["长沙县","天心区","开福区"];
		arrs["荆门"]=["东宝区","京山县","沙洋县"];
		var  ser=document.getElementById("server1").value;
		document.getElementById("servers1").options.length=0; 
		for(var i in arrs[ser])
		{
				var opt=document.createElement("option");
				opt.text=arrs[ser][i];
				opt.value=arrs[ser][i];
				document.getElementById("servers1").options.add(opt);
		}
	}
	
	$('.form_datetime').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
</body>
</html>
