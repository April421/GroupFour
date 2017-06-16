<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<head>
<title>Create</title>
<style type="text/css">
#down {
	width: 30px;
}
#blankCheckbox{
	width:35px;
	height:35px;
}
#province,#server,#servers,#timetype{
		display:inline-block;
	}
#province1,#server1,#servers1{
		display:inline-block;
	}
#blankCheckbox {
	width: 35px;
	height: 35px;
}
</style>
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
</head>
		<!-- 导航栏  -->
		<jsp:include page="navigation.jsp"></jsp:include>
		<!-- 以上导航栏  -->
		<!-- 新建  -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<!-- 新建框导航栏  -->
				<ul id="myTab" class="nav nav-tabs"
					style="background: rgba(0,0,0,.2);">
					<li class="active"><a href="#student" data-toggle="tab"> <span
							class="glyphicon glyphicon-education" style="font-size:20px"
							aria-hidden="true"></span>新建学员 </a>
					</li>
					<li><a href="#class" data-toggle="tab"> <span
							class="glyphicon glyphicon-certificate" style="font-size:20px"
							aria-hidden="true"></span>新建班级 </a>
					</li>
					<li><a href="#teacher" data-toggle="tab"> <span
							class="glyphicon glyphicon-user" style="font-size:20px"
							aria-hidden="true"></span>新建老师 </a>
					</li>
					<li><a href="#department" data-toggle="tab"> <span
							class="glyphicon glyphicon-th-list" style="font-size:20px"
							aria-hidden="true"></span>新建部门 </a>
					</li>
					<li><a href="#subject" data-toggle="tab"> <span
							class="glyphicon glyphicon-book" style="font-size:20px"
							aria-hidden="true"></span>新建课程 </a>
					</li>
				</ul>
				<!-- 以上新建框导航栏  -->

				<div id="myTabContent" class="tab-content">
					<!--新建学员  -->
					<div class="tab-pane fade in active" id="student">
					  <form action="addStudent.action" method="post">
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-6">
										状态<select class="form-control" name="stu.stu_sta">
											<option value="在读">在读</option>
											<option value="已毕业">已毕业</option>				
										</select>
										学籍编号<input type="text" class="form-control" name="stu.stu_roll_id">
										密码：<input type="text" class="form-control" name="stu.stu_pwd">
										姓名<input type="text" class="form-control" name="stu.stu_name"> 
										性别<select class="form-control" name="stu.stu_gender">
											<option value="男">男</option>
											<option value="女">女</option>
										</select>									
										学历<select class="form-control" name="stu.stu_edu_level">
											<option></option>
											<option value="初中">初中</option>
											<option value="高中">高中</option>
											<option value="专科">专科</option>
											<option value="本科">本科</option>
											<option value="硕士研究生">硕士研究生</option>
											<option value="博士研究生">博士研究生</option>
										</select>
										毕业院校<input type="text" class="form-control" name="stu.stu_graduate_school">
										所学专业<input type="text" class="form-control" name="stu.stu_professional">
										学生档案备注<textarea class="form-control" rows="2" name="stu.stu_memo"></textarea>
									</div>
									<div class="col-md-6">
										校区<select class="form-control" name="stu.stu_fk_sc_id">
											<option value="1">金水科教园</option>
											<option value="2">二七区</option>
										</select>
										身份证号<input type="text" class="form-control" name="stu.stu_cardid"> 
										详细地址<br /> 
										<select id="province1" class="form-control"
											class="status" style="width:94px;" name="stu.stu_address_prov" onchange="showServer()">
											<option>省份</option>
											  <option value="河南">河南</option>
											  <option value="河北">河北</option>
											  <option value="湖南">湖南</option>
											  <option value="湖北">湖北</option>
										</select>省 
										<select id="server1" class="form-control" class="status" name="stu.stu_address_city"
											style="width:94px" onchange="showServers()">
											<option>市</option>
										</select> 市
										<select id="servers1" class="form-control" class="status" name="stu.stu_address_area"
											style="width:94px">
											<option>区/县 </option>

										</select>区/县 
										出生日期
										<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control" size="16" name="stu.stu_age" type="text" readonly>
						                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
										联系电话<input type="text" class="form-control" name="stu.stu_phone">
										QQ号<input type="text" class="form-control" name="stu.stu_qq">
										邮箱地址<input type="text" class="form-control" name="stu.stu_email">
										监护人姓名<input type="text" class="form-control" name="stu.stu_fama_name">
										监护人电话<input type="text" class="form-control" name="stu.stu_fama_phone">
										所在班级<select class="form-control" name="stu.stu_fk_class_id">
											<option value="1">QY68</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-3">	
										&nbsp;
									</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
									</div>
									<div class="col-md-3">	
										&nbsp;
									</div>
								</div>
							</div>
						</div>
					  </form>
					</div>	
					<!--以上新建学员  -->

					<!-- 新建班级  -->
			<div class="tab-pane fade" id="class">
				<form action="addClassroom.action" method="post">
					<div class="row">
						<div class="col-md-12">
							<div>
								<div class="col-md-6">
									班级状态
									<select class="form-control" name="cla.class_sta">
										<option>在读</option>
										<option>已关班</option>
									</select> 
									班级名称
									<input type="text" class="form-control" name="cla.class_name">
									班主任
									<select class="form-control" name="cla.db_fk_incharge_emp_id">
										<option></option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select> 
									开班时间
									<div class="form-group">
										<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd"
										 data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
											<input class="form-control" size="16" type="text" name="cla.class_create_date" readonly>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-remove"></span>
											</span> 
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
									毕业时间
									<div class="form-group">
										<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd"
										 data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
											<input class="form-control" size="16" type="text" name="cla.class_graduate_date" readonly> 
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-remove"></span>
											</span> 
											<span class="input-group-addon">
											   	<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
									班级备注
									<textarea class="form-control" rows="2" name="cla.class_memo"></textarea>
								</div>
								<div class="col-md-6">
									校区<select class="form-control" name="cla.class_fk_sc_id">
										<option value="1">金水科教园</option>
										<option value="2">二七区</option>
									  </select> 
									任课老师<select class="form-control" name="cla.db_fk_emp_id">
										<option value="1">张三</option>
										<option value="2">李四</option>
									  </select> 
									班级专业<select class="form-control" name="cla.class_fk_pro_id">
										<option></option>
										<option value="1">java</option>
										<option value="2">andriod</option>
										<option value="3">ios</option>
									</select> 
									课程类型 <select class="form-control" class="status" name="cla.class_fk_sub_id">
										<option></option>
										<option value="1">java课程</option>
										<option value="2">andriod课程</option>
										<option value="3">iso课程</option>
									</select> 
									教室<select class="form-control" name="cla.classs_fk_classsroom_id">
										<option value="1">第一机房</option>
										<option value="2">第二机房</option>
									</select> 每周上课天数<br />
									<div>
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Monday"> 
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Tuesday">
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Wednessday"> 
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Thursday">
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Friday"> 
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Saturday">
										<input type="checkbox" id="blankCheckbox" name="cla.class_days" value="Sunday">
										<br/> 
									上课时间<br/> <select id="timetype" class="form-control" class="status"
											style="width:145px" name="cla.class_time_begin">
											<option></option>
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
										To <select id="timetype" class="form-control" class="status"
											style="width:123px" name="cla.class_time_end">
											<option></option>
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
										<span class="glyphicon glyphicon-time" style="font-size:20px"></span>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-3">&nbsp;</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
									</div>
									<div class="col-md-3">&nbsp;</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<!-- 以上新建班级：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->

					<!-- 新建老师：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="teacher">
					  <form action="addTeacher.action" method="post">
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-6">
										校区<select class="form-control" name="teacher.emp_fk_sc_id">
											<option value="1">金水科教园</option>
											<option value="2">二七区</option>
										</select>
										姓名<input type="text" class="form-control" name="teacher.emp_name">
										用户名：<input type="text" class="form-control" name="teacher.emp_username">
										密码：<input type="text" class="form-control" name="teacher.emp_pass">
										性别<select class="form-control" name="teacher.emp_gender">
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
										学历<select class="form-control" name="teacher.emp_edu_level">
											<option value="专科">专科</option>
											<option value="本科">本科</option>
											<option value="硕士研究生">硕士研究生</option>	
											<option value="博士研究生">博士研究生</option>
										</select>
										毕业院校<input type="text" class="form-control" name="teacher.emp_graduate_school">
										教师档案备注<textarea class="form-control" rows="3" name="teacher.emp_memo"></textarea>
									</div>
									<div class="col-md-6">
										状态<select class="form-control" name="teacher.emp_sta">
											<option value="在职">在职</option>
											<option value="已离职">已离职</option>				
										</select>
										身份证号<input type="text" class="form-control" name="teacher.emp_cardid"> 
										详细地址<br /> 
										<select id="province" class="form-control"
											class="status" style="width:94px;" name="teacher.stu_address_prov" onchange="showServer()">
											  <option>省份</option>
											  <option value="河南">河南</option>
											  <option value="河北">河北</option>
											  <option value="湖南">湖南</option>
											  <option value="湖北">湖北</option>
										</select>省 
										<select id="server" class="form-control" class="status" name="teacher.stu_address_city"
											style="width:94px" onchange="showServers()">
											<option>市</option>
			
										</select> 市
										<select id="servers" class="form-control" class="status" name="teacher.stu_address_area"
											style="width:94px">
											<option>区/县</option>
											
										</select>区/县 
										出生日期
										<div class="input-group date form_date col-md-12" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
						                    <input class="form-control" size="16" name="teacher.emp_age" type="text" readonly>
						                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
											<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						                </div>
										联系电话<input type="text" class="form-control" name="teacher.emp_phone"> 
										QQ号<input type="text" class="form-control" name="teacher.emp_qq"> 
										邮箱地址<input type="text" class="form-control" name="teacher.emp_email"> 
										所属部门
										<select class="form-control" name="teacher.emp_fk_dept_id">
											<option value="1">教务部</option>
											<option value="2">财务部</option>
											<option value="3">睡觉部</option>				
										</select>
										所属职位
										<select class="form-control" name="teacher.emp_fk_posi_id">
											<option value="2">任课老师</option>				
										</select> 
									</div>
								</div>
							</div>
						</div>						
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-3">	
										&nbsp;
									</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
									</div>
									<div class="col-md-3">	
										&nbsp;
									</div>
								</div>
							</div>
						</div>
					  </form>
					</div>
					<!-- 以上新建老师：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->

					<!-- 新建部门：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="department">
					 <form action="DepartmentServlet" method="post">
					 	<input type="hidden" name="method" value="add">
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-6">
										校区<select class="form-control" name="dept_fk_sc_id">
											<option value="1">金水科教园</option>
											<option value="2">二七区</option>
										</select>
										部门名称<input type="text" class="form-control" name="dept_name"> 
										部门电话<input type="text" class="form-control"  name="dept_phone"> 
									</div>
									<div class="col-md-6">
										<!-- 部门负责人<input type="text" class="form-control" id="exampleInputName2" name=""> -->
										部门状态<select class="form-control" name="dept_sta">
													<option value="运行">运行</option>
													<option value="关闭">关闭</option>
												</select>
										部门备注<textarea class="form-control" rows="3"  name="dept_memo"></textarea>
									</div>
								</div>
							</div>
						</div>						
						<div class="row">
							<div class="col-md-12">
								<div>
									<div class="col-md-3">	
										&nbsp;
									</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
									</div>
									<div class="col-md-3">	
										&nbsp;
									</div>
								</div>
							</div>
						</div>
					  </form>
					</div>
					<!-- 以上新建部门：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					
					<!-- 新建课程：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="subject">
						<form action="addSubject.action" method="post">
							<div class="row">
								<div class="col-md-12">
									<div>
										<div class="col-md-6">
											课程名称<input type="text" class="form-control" name="subject.sub_name">
										</div>
										<div class="col-md-6">
											课程说明
											<textarea class="form-control" rows="3" name="subject.sub_memo"></textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div>
										<div class="col-md-3">&nbsp;</div>
										<div class="col-md-6">
											<button type="submit" class="btn btn-primary btn-lg btn-block">
												提交
											</button>
										</div>
										<div class="col-md-3">&nbsp;</div>
									</div>
								</div>
							</div>
							</form>
						</div>
					<!-- 以上新建课程：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<!-- 以上查询框  -->




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
