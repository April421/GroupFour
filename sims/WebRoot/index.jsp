<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	 <script type="text/javascript">
		function _go(select) {
			var index=select.selectedIndex;//得到选中的坐标
			var option=select.options[index];//通过下标得到option元素
			var value=option.value;//通过option得到对应的value值
			location="<c:url value='/TeacherServlet?method=query&pageCode='/>"+value+"${url}";
		}
	</script>
  </head>
  
  <body>
  <form action="TeacherServlet" method="get">
  	<input type="hidden" name="method" value="query"/>
  	请输入页数:<input type="text" name="pageCode">
  	<input type="submit" value="提交">
  </form>
  
  <form action="TeacherServlet" method="get">
	  <input type="hidden" name="method" value="query"/>
	  	姓名:<input type="text" name="emp_name">性别:<input type="text" name="emp_sta"><br>
	  <input type="submit" value="查询">
  </form>
  
  <hr>
  <table border=1 width=300>
    <c:forEach items="${pb.datas}" var="s">
    	<tr><td>${s.emp_id}</td><td>${s.emp_name}</td><td>${s.emp_age}</td><td>${s.emp_qq}</td></tr>
    </c:forEach>
   </table>
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
  </body>
</html>
