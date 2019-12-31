<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css" />
<link href="<%=request.getContextPath()%>/css/index_work.css" rel="stylesheet">
<!-- 引入样式 -->
<link href="/resource/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>

<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
</head>
<body>
<h1 align="center">商品详情</h1>
	<table align="center">
		<div class="container" style="float: left" align="center">
			<c:forEach items="${list }" var="g">
				<div style="float: left">
					<img alt="" src="/pic/${g.pic }" width="300px" height="200px">
					<hr>
					商品名称:${g.name } 英文名称:${g.ename } 品牌:${g.brand.name }<br>
					类型:${g.type.name } 价格:${g.price } 数量:${g.num } 标签:${g.tab }
					<br>
					<a href="list"><input type="button" value="返回" ></a>
				</div>
			</c:forEach>
		</div>
</body>
</html>