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
<script type="text/javascript">
	function update() {
		var formData = new FormData($("#form1")[0]);
		$.ajax({
			type : "post",
			url : "/update",
			data : formData,
			processData : false,
			contentType : false,
			success : function(flag) {
				if (flag) {
					alert("修改成功");
					location.href = "/list";
				} else {
					alert("修改失败");
					return;
				}
			}
		})
	}

	$(function() {
		$.get("/getBrandList", function(list) {
			for ( var i in list) {
				$("#bid").append(
						"<option value='"+list[i].id+"'>" + list[i].name
								+ "</option>")
			}
		})
	})

	$(function() {
		$.get("/getTypeList", function(list) {
			for ( var i in list) {
				$("#tid").append(
						"<option value='"+list[i].id+"'>" + list[i].name
								+ "</option>")
			}
		})
	})
</script>
</head>
<body>
	<form action="/update" method="post" id="form1">
		<table class="table" align="center">
			<tr>
				<td align="center"><input type="text" name="id"
					value="${goods.id }"></td>
			</tr>
			<tr>
				<td align="center">商品名称:<input type="text" name="name"
					value="${goods.name }"></td>
			</tr>
			<tr>
				<td align="center">英文名称:<input type="text" name="ename"
					value="${goods.ename }"></td>
			</tr>
			<tr>
				<td align="center">品牌: <select name="bid" id="bid"
					value="${goods.bid }">

				</select>
				</td>
			</tr>
			<tr>
				<td align="center">类型: <select name="tid" id="tid"
					value="${goods.tid }">

				</select>
				</td>
			</tr>
			<tr>
				<td align="center">尺寸:<input type="text" name="size"
					value="${goods.size }"></td>
			</tr>
			<tr>
				<td align="center">单价(元):<input type="text" name="price"
					value="${goods.price }"></td>
			</tr>
			<tr>
				<td align="center">数量:<input type="text" name="num"
					value="${goods.num }"></td>
			</tr>
			<tr>
				<td align="center">标签:<input type="text" name="tab"
					value="${goods.tab }"></td>
			</tr
			<tr>
				<td align="center">图片:<input type="file" name="file" ></td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="修改" onclick="update()"></td>
			</tr>
		
		</table>
	</form>
</body>
</html>