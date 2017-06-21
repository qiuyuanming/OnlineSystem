<%-- 
    Document   : register
    Created on : 2017-6-21, 9:20:18
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css"> 
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
        

	</head>

	<body>

		<div class="login-boxtitle">
                    <a href="index.jsp"><img alt="" src="../images/logobig.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li style="text-align:center;font-weight:bold;">手机号注册</li>
							</ul>
                 
                 </form>
                 
								<div class="am-tab-panel">
									<form method="post">
                                    <div class="user-number">
								    <label for="number"><i class="am-icon-user-plus am-icon-sm"></i></label>
								    <input type="tel" name="" id="phone" placeholder="用户编号">
                 </div>	
                 <div class="user-phone">
								    <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
								    <input type="tel" name="" id="phone" placeholder="请输入手机号">
                 </div>																			
					<div class="user-name">
								    <label for="name"><i class="am-icon-user am-icon-sm"></i></label>
								    <input type="tel" name="" id="phone" placeholder="设置昵称">
                 </div>	
                 <div class="user-gender">
								    <label for="gender" style="position:relative"><i class="am-icon-transgender-alt am-icon-sm"></i></label>
                                    <select class="ggg" style="height:26px; position:absolute;backgrounnd:red!important;left:50px;bottom:10px;">
                                    	<option value="男">男</option>
                                        <option value="女">女</option>
                                    </select>
                                    
								    
                                    </div>	
                                    <div class="user-address">
								    <label for="address"><i class="am-icon-home am-icon-sm"></i></label>
								    <input type="tel" name="" id="phone" placeholder="地址">
                 </div>						
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="password" placeholder="设置密码">
                 </div>										
                 <div class="user-account">
								    <label for="account"><i class="am-icon-money"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="账户">
                 </div>	
                 <div class="user-balance">
								    <label for="balance"><i class="am-icon-jpy"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="余额">
                 </div>	
									</form>
								 <div class="login-links">&nbsp;&nbsp;&nbsp;
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
										</label>
							  	</div>
										<div class="am-cf" style="margin:auto">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

							</div>
						</div>

				</div>
			</div>
			
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# "> Java 13&14 </a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<<a href="# ">关于我们</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2014-2018 中华牙膏 版权所有.</em>
							</p>
						</div>
					</div>
	</body>

</html>
