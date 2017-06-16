<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<title>Schedule</title>
</head>

			<!-- 导航栏  -->
			<jsp:include page="navigation.jsp"></jsp:include>
			<!-- 以上导航栏  -->
			<!-- 详细信息 -->
			<div class="row">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active">
					<a href="#basic" data-toggle="tab"> 我的课表 </a>
				</li>
				<li><a href="#ios" data-toggle="tab">教室安排</a></li>
				<li><a href="#sessions" data-toggle="tab">老师课表</a></li>
				<li class="dropdown">
					<a href="#" id="myTabDrop1" class="dropdown-toggle" 
							data-toggle="dropdown">课程科目 
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
						<li><a href="#jmeter" tabindex="-1" data-toggle="tab">Javase</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab">Javaee</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab">Html</a></li>
						<li><a href="#ejb" tabindex="-1" data-toggle="tab">SQL</a></li>
					</ul>
				</li>
			</ul>
			<!-- 以上详细信息导航 -->
			<!-- 详细信息内容 -->
			<div id="myTabContent" class="tab-content" class="btn-group">
				<div class="tab-pane fade in active" id="basic">
					<div class="row-md-1" id="myschedule">
						<h2>我的课表 <small>小标题</small></h2>

					</div>
					<!-- 上课周数 -->
					<div class="dropdown" class="row-md-2"class="btn-group">
						<span id="week">周数</span>
						<select id="week1" class="form-control" class="status" style="width:167px;">
						  <option class="btn btn-success"> </option>
						  <option>1101</option>
						  <option>1102</option>
						  <option>1103</option>
						  <option>1104</option>
						  <option>1105</option>
						  <option>1106</option>
						  <option>1107</option>
						  <option>1108</option>
						  <option>1109</option>
						  <option>1110</option>
						  <option>1111</option>
						  <option>1112</option>
						  <option>1113</option>
						  <option>1114</option>
						  <option>1115</option>
						  <option>1110</option>
						  <option>1111</option>
						  <option>1116</option>
						  <option>1117</option>
						  <option>1110</option>
						  <option>1111</option>
						</select>
						<button type="button" class="btn btn-success">Go</button>
					</div>	
					<!--我的课程表表格-->
					<div class="row-md-9">
						<table class="table table-bordered table-striped table-hover" id="kebiao">
							<tr>
								<td>时间</td>	<td>星期一</td>	<td>星期二</td>	
								<td>星期三</td>	<td>星期四</td>	<td>星期五</td>	
								<td>星期六</td> <td>星期日</td>	
							</tr>
							<tr>
								<td>08:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>09:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>10:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>11:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>12:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>13:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>14:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>15:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>16:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>17:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>18:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>19:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>20:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
							<tr>
								<td>&nbsp;</td>	 <td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td>	<td></td>	
							</tr>
							<tr>
								<td>21:00</td>	<td></td>	<td></td>	<td></td>	
								<td></td>	<td></td>	<td></td> <td></td>	
							</tr>
						</table>
					</div>							
				</div>
				<div class="tab-pane fade" id="ios">
					<div class="row-md-2" id="myschedule">
						<h2>教室安排 <small>小标题</small></h2>
					</div>
					<!--日期时间-->
					<div class="dropdown" class="row-md-10"class="btn-group">



<div class="container">
    <form action="" class="form-horizontal">
        <fieldset>
            <legend>Test</legend>
            <div class="control-group">
                <label class="control-label">DateTime Picking</label>
                <div class="controls input-append date form_datetime" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input size="16" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				<input type="hidden" id="dtp_input1" value="" /><br/>
            </div>
			<div class="control-group">
                <label class="control-label">Date Picking</label>
                <div class="controls input-append date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input size="16" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
            </div>
			<div class="control-group">
                <label class="control-label">Time Picking</label>
                <div class="controls input-append date form_time" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                    <input size="16" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				<input type="hidden" id="dtp_input3" value="" /><br/>
            </div>
        </fieldset>
    </form>
</div>

<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
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


	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
