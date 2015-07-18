<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%
	/**
	 * Description: 404
	 * Author: liuqianming
	 * Since: 2015年6月30日21:04:11
	 * Update:
	 * Copyright 2015, 
	 */
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>请核对您输入的页面地址是否正确哦~码上天翼-中国电信</title>
<meta name="description" content="中国电信码上天翼官网，扫码购机" />
<meta name="Keywords" content="码上天翼，宝宝购机，合伙人">
<style type="text/css">
.errorbody{
	width: 520px;
	height: 530px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -260px;
	margin-top: -265px;
	text-align: center;
}
.errorDiv{
}
.backhomeDiv{
	margin-left: 4%;
	margin-top: -30px;
	cursor:pointer;
}
</style>
</head>
<body class="body_bak">
<div class="errorbody">
	<div class="errorDiv">
		<img src="<%=path %>/resources/images/common/error.png"/>
	</div>
	<div class="backhomeDiv">
		<a href="<%=path%>/cindex.jsp"><img src="<%=path %>/resources/images/common/backhome.png"/></a>
	</div>
</div>
</body>
</html>
