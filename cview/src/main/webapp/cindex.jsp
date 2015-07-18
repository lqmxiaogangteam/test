<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/base.jsp"%>
	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link href="<%=path %>/resources/css/base/base.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/resources/css/index/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/resources/js/home/index.js"></script>
</head>
<script>
$(function(){
	index.init();
});
</script>
<body>
	<%@include file="/WEB-INF/pages/include/head.jsp"%>
	
	<div class="w_990 content">
		<div class="search_con">
			<div class="search">
				<div class="boxbg">
                <div class="inner">
                	<input  class="search_txt" maxlength="50" autocomplete="off" value="" type="text">
                    <a href="javascript:void(0);" class="btn_search" onclick="doSearch()">搜索</a>
                </div>
            </div>
			</div>
		</div>
		
		<div style="position:relative;">
			<div class="category">
				<h2>
					<a>全部商品分类</a>
				</h2>
				<ul class="menu">
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
					<li>
						<i class="img"></i>
						<a>餐具/厨具</a>
					</li>
				</ul>
			</div>
			<div class="banner">
				
			</div>
		</div>
		
		<div class="product">
			<div class="p_left">
				<div class="pro1">
					<table>
						<tr>
							<td>
								<a target="_blank" href="#">
									<img src="resources/images/index/left11.jpg"/>
								</a>
							</td>
							<td>
								<a target="_blank" href="#">
									<img src="resources/images/index/left11.jpg"/>
								</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="p_right">
				<div class="like">
					<h2>猜你喜欢</h2>
					<ul class="hot_pro">
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						<li>
							<i class="num">1</i>
							<a class="pro_pic"></a>
							<p class="pro_title">微软 Surface3 专业键盘盖</p>
							<p class="price">
								<span>3000</span>积分
								<span>+</span>
								￥<span>888</span>
							</p>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="p_left">
				<div class="pro1">
					<table>
						<tr>
							<td>
								<a target="_blank" href="#">
									<img src="resources/images/index/left11.jpg"/>
								</a>
							</td>
							<td>
								<a target="_blank" href="#">
									<img src="resources/images/index/left11.jpg"/>
								</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="p_left new_pro">
				<h2>淘新品</h2>
				<div class="pro_2">
					<table>
						<tr>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							
						</tr>
					</table>
				</div>
			</div>
			
			<div class="p_left new_pro">
				<h2>挑礼物</h2>
				<div class="pro_2">
					<table>
						<tr>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							
						</tr>
					</table>
				</div>
			</div>
			
			<div class="p_left new_pro">
				<h2>抢优惠</h2>
				<div class="pro_2">
					<table>
						<tr>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							<td>
								<div class="pro">
				                    <div class="img">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            <img src="http://img.jf.cmbchina.com/images/CM/P160/A07-10Y-01I.jpg" alt="雷柏无线键鼠套装8000当即新品" title="雷柏无线键鼠套装8000当即新品">
				                        </a> 
				                    </div>
				                    <p class="tit">
				                        <a target="_blank" href="http://jf.cmbchina.com/Product/A07-10Y-01I.htm" title="雷柏无线键鼠套装8000当即新品">
				                            雷柏无线键鼠套装8000</a>
				                    </p>
				                    <p class="ele"><span class="credit">4990</span>积分</p>
				                    <p class="total">市场价：<span class="price">129.00</span></p>
				                </div>
							</td>
							
						</tr>
					</table>
				</div>
			</div>
			
			
		</div>
	</div>
</body>
</html>

