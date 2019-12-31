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
	function add() {
		var formData = new FormData($("#form1")[0]);
		$.ajax({
			type : "post",
			url : "/add",
			data : formData,
			processData : false,
			contentType : false,
			success : function(flag) {
				if (flag) {
					alert("添加成功");
					location.href = "/list";
				} else {
					alert("添加失败");
					return;
				}
			}
		})
	}

	
	$(function() {
				$.get("/getBrandList", function(list) {
					for ( var i in list) {
						$("#bid").append(
								"<option value='"+list[i].id+"'>"
										+ list[i].name + "</option>")
					}
				})
			})
			
			$(function() {
				$.get("/getTypeList", function(list) {
					for ( var i in list) {
						$("#tid").append(
								"<option value='"+list[i].id+"'>"
										+ list[i].name + "</option>")
					}
				})
			})
</script>
</head>
<body>
	<form action="/add" method="post" id="form1">
		<table class="table" align="center">
			<tr>
				<td align="center">商品名称:<input type="text" name="name"></td>
			</tr>
			<tr>
				<td align="center">英文名称:<input type="text" name="ename"></td>
			</tr>
			<tr>
				<td align="center">品牌: <select name="bid" id="bid">

				</select>
				</td>
			</tr>
			<tr>
				<td align="center">类型: <select name="tid" id="tid">

				</select>
				</td>
			</tr>
			<tr>
				<td align="center">尺寸:<input type="text" name="size"></td>
			</tr>
			<tr>
				<td align="center">单价(元):<input type="text" name="price"></td>
			</tr>
			<tr>
				<td align="center">数量:<input type="text" name="num"></td>
			</tr>
			<tr>
				<td align="center">标签:<input type="text" name="tab"></td>
			</tr
			<tr>
				<td align="center">图片:<input type="file" name="file"></td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="增加" onclick="add()"></td>
			</tr>
		</table>
	</form>
</body>
</html>