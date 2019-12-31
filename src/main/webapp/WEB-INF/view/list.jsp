<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css"
	rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
\
<script type="text/javascript">
   function add() {
	location.href="add"
}
   function look(id) {
	location.href="look?id="+id
}
   function del(id) {
	if(confirm("确定要删除吗?")){
		$.post(
		   "del",
		   {id:id},
		   function(flag) {
			if(flag){
				alert("删除成功");
				location.href="/list";
			}else{
				alert("删除失败");
				return;
			}
		},
		"json"
		)
	}
}
   
   function dels() {
	   if(confirm("确定要删除吗?")){
			$.post(
			   "del",
			   {id:id},
			   function(flag) {
				if(flag){
					alert("删除成功");
					location.href="/list";
				}else{
					alert("删除失败");
					return;
				}
			},
			"json"
			)
		}
	
}
   function update(id) {
	location.href="toUpdate?id="+id
}
</script>
</head>
<body>
	<h1 align="center">商品列表</h1>
	<form action="list" method="post">
		商品名称:<input type="text" name="name" value="${vo.name }"> <input
			type="submit" value="查询"><input type="button" value="增加"
			onclick="add()"> <input type="button" value="批量删除"
			onclick="dels(${g.id})">
	</form>
	<table align="center">
		<div class="container" style="float: left" align="center">
			<c:forEach items="${info.list }" var="g">
				<div style="float: left">
					<img alt="" src="/pic/${g.pic }" width="300px" height="200px">
					<hr>
					商品名称:${g.name } 英文名称:${g.ename } 品牌:${g.brand.name }<br>
					类型:${g.type.name } 价格:${g.price } 数量:${g.num } 标签:${g.tab } <br>
					<input type="checkbox" name="ck" value="${g.id }"> <input
						type="button" value="详情" onclick="look(${g.id})"> <input
						type="button" value="删除" onclick="del(${g.id})"> <input
						type="button" value="修改" onclick="update(${g.id})">
				</div>
			</c:forEach>
		</div>

		<div style="clear: both">

			<tr>
				<br>
				<td colspan="10">当前共${info.pageNum }/${info.pages }页--共${info.total }条数据
					<a href="list?pageNum=1">首页</a> <a
					href="list?pageNum=${info.prePage }">上一页</a> <a
					href="list?pageNum=${info.nextPage }">下一页</a> <a
					href="list?pageNum=${info.pages }">尾页</a>
				</td>
			</tr>
	</table>
	</div>
</body>
</html>