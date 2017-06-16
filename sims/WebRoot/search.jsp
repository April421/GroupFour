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
					<li class="active"><a href="#student" data-toggle="tab"> <span
							class="glyphicon glyphicon-education" style="font-size:20px"
							aria-hidden="true"></span>学生查询 </a></li>
					<li><a href="#class" data-toggle="tab"> <span
							class="glyphicon glyphicon-certificate" style="font-size:20px"
							aria-hidden="true"></span>班级查询 </a></li>
					<li><a href="#teacher" data-toggle="tab"> <span
							class="glyphicon glyphicon-user" style="font-size:20px"
							aria-hidden="true"></span>老师查询 </a></li>
					<li><a href="#department" data-toggle="tab"> <span
							class="glyphicon glyphicon-th-list" style="font-size:20px"
							aria-hidden="true"></span>部门查询 </a></li>
					<li><a href="#condition" data-toggle="tab"> <span
							class="glyphicon glyphicon-question-sign" style="font-size:20px"
							aria-hidden="true"></span>条件查询 </a></li>
				</ul>
				<!-- 以上查询框导航栏  -->

				<!--个人查询：状态（在读和不在读）、学号、班主任、老师、姓名、电话号码  -->
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="student">
						<div class="row">
							<div class="col-md-6">
								状态<select class="form-control">
									<option class="btn btn-warning"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 
								学号<input type="text" class="form-control"
									id="exampleInputName2">
								姓名<input type="text" class="form-control"
									id="exampleInputName2">
								电话号码<input type="text" class="form-control"
									id="exampleInputName2"> 
								
							</div>
							<div class="col-md-6">
								邮箱<input type="text" class="form-control" id="exampleInputName2">
								身份证号<input type="text" class="form-control"
									id="exampleInputName2"> 
									班主任<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									</select>
									老师<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
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
											<th>学号</th><th>名字</th><th>剩余课时</th><th>起始日期</th><th>结束日期</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>001</td><td>Bangalore</td><td>560001</td><td>1</td><td>2</td>
										</tr>
										<tr>
											<td>002</td><td>Mumbai</td><td>400003</td><td>1</td><td>2</td>
										</tr>
										<tr>
										<td>003</td><td>Pune</td><td>411027</td><td>1</td><td>2</td>
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
					<!-- 以上个人查询：状态（在读和不在读）、学号、班主任、老师、姓名、电话号码  -->


					<!-- 班级查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="class">
						<div class="row">
							<div class="col-md-6">
								状态<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 班号<input type="text" class="form-control"
									id="exampleInputName2"> 班主任<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 级别<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
							<div class="col-md-6">
								老师<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 教室<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 起始日期 <input type="text" class="form-control"
									id="exampleInputName2">
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
											<th>班级编号</th>
											<th>班主任</th>
											<th>老师</th>
											<th>起始日期</th>
											<th>结束日期</th>
										</tr>
									</thead>
									<tbody>
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
					<!-- 以上班级查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<!-- 老师查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="teacher">  
					  <form action="TeacherServlet" method="get">
						<div class="row"> 
						  <input type="hidden" name="method" value="query"/>
							<div class="col-md-6">
								状态<select class="form-control" name="emp_sta">
									<option class="btn btn-success"></option>
									<option value="在职">在职</option>
									<option value="已离职">已离职</option>
								</select> 
								姓名<input type="text" class="form-control"
									id="exampleInputName2" name="emp_name">
								电话号码<input type="text" class="form-control"
									id="exampleInputName2" name="emp_phone"> 
								
							</div>
							<div class="col-md-6">
								学历<select class="form-control" name="emp_edu_level">
									<option class="btn btn-success"></option>
									<option value="专科">专科</option>
									<option value="本科">本科</option>
									<option value="硕士研究生">硕士研究生</option>	
									<option value="博士研究生">博士研究生</option>
								</select>
									部门<select class="form-control" name="emp_fk_dept_id">
									<option class="btn btn-success"></option>
									<option value="1">教务部</option>
									<option value="2">财务部</option>
									<option value="3">睡觉部</option>
									</select>
							</div>
						</div>
						<!-- 查询按钮 -->
						<div class="row">
							<div class="col-md-12">
								<button type="submit" class="btn btn-default">查询</button>
							</div>
						</div>
						</form>
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
											<th>员工号</th>
											<th>姓名</th>
											<th>性别</th>
											<th>电话号码</th>
											<th>邮箱</th>
											<th>学历</th>
											<th>状态</th>
										</tr>
									</thead>
											    
									<tbody>
										<c:forEach items="${pb.datas}" var="s">
								    		<tr><td>${s.emp_id}</td><td>${s.emp_name}</td><td>${s.emp_gender}</td><td>${s.emp_phone}</td><td>${s.emp_email}</td><td>${s.emp_edu_level}</td><td>${s.emp_sta}</td></tr>
								   		</c:forEach>
									</tbody>
																		
																		
									<br>
									  	当前第${pb.pageCode}页/共${pb.totalPage}页 
									  <a href="<c:url value='/TeacherServlet?method=query'/>${url}">首页</a>
									  <c:if test="${pb.pageCode>1}">
									  <a href="<c:url value='/TeacherServlet?method=query&pageCode=${pb.pageCode-1}'/>${url}">上一页</a>
									  </c:if>
									  <c:set var="begin" value="1"/>
									  <c:set var="end" value="10"/>
									  <%--定位begin 和 end --%>
									  <c:choose>
									  	<c:when test="${pb.totalPage<=10}">
										  	<c:set var="begin" value="1"/>
										  	<c:set var="end" value="${pb.totalPage}"/>
									  	</c:when>
									  	<c:otherwise>
									  		<c:choose>
										  		<c:when test="${pb.pageCode-4<1}">
												  	<c:set var="begin" value="1"/>
												  	<c:set var="end" value="10"/>
										  		</c:when>
										  		<c:when test="${pb.pageCode+5>pb.totalPage}">
												  	<c:set var="begin" value="${pb.totalPage-9}"/>
												  	<c:set var="end" value="${pb.totalPage}"/>
										  		</c:when>
										  		<c:otherwise>
												  	<c:set var="begin" value="${pb.pageCode-4}"/>
												  	<c:set var="end" value="${pb.pageCode+5}"/>
										  		</c:otherwise>
										  	</c:choose>
									  	</c:otherwise>
									  </c:choose>
									  <c:forEach begin="${begin}" end="${end}" var="i">
									  	<c:choose>
									  		<c:when test="${pb.pageCode eq i}">${i}</c:when>
									  		<c:otherwise>
									  			<a href="<c:url value='/TeacherServlet?method=query&pageCode=${i}'/>${url}">[${i}]</a>
									  		</c:otherwise>
									  	</c:choose>
									  </c:forEach>
									  
									  <c:if test="${pb.pageCode<pb.totalPage}">
									  <a href="<c:url value='/TeacherServlet?method=query&pageCode=${pb.pageCode+1}'/>${url}">下一页</a>
									  </c:if>
									  <a href="<c:url value='/TeacherServlet?method=query&pageCode=${pb.totalPage}'/>${url}">尾页</a>
									  <select name="pageCode" onchange="_go(this)">
									  	<c:forEach begin="1" end="${pb.totalPage}" var="i">
									  		<option value="${i}"<c:if test="${pb.pageCode eq i}">selected='selected'</c:if>>${i}</option>
									  	</c:forEach> 	
									  </select>
									
									
									
									
									
								</table>
							</div>
						</div>
						<!-- 以上结果显示 -->
					</div>
					<!-- 以上老师查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<!-- 部门查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					<div class="tab-pane fade" id="department">
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
								电话号码<input type="text" class="form-control"
									id="exampleInputName2"> 
								
							</div>
							<div class="col-md-6">
									部门名称<select class="form-control">
									<option class="btn btn-success"></option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
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
					<!-- 以上部门查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
					
					<!-- 条件查询  -->
					<div class="tab-pane fade" id="condition">
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
					<!-- 以上条件查询  -->
					<div class="tab-pane fade" id="jmeter"></div>
					<div class="tab-pane fade" id="ejb">
						<p>Enterprise Java
							Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web
							Logic 等）的 J2EE 上。</p>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
		<!-- 以上班级查询：状态（正在进行和关闭）、班号、班主任、级别、起始日期、老师、教室  -->
		<!-- 以上查询框  -->
	</div>



	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
