<%-- 
    Document   : pay
    Created on : 2017-6-20, 17:02:10
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <title>结算页面</title>

        <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

        <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
        <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />

        <link href="../css/jsstyle.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="../js/address.js"></script>

    </head>

    <body>

        <!--顶部导航条 -->
        <div class="am-container header">
            <ul class="message-l">
                <div class="topMessage">
                    <div class="menu-hd">
                        <a href="#" target="_top" class="h">亲，请登录</a>
                        <a href="#" target="_top">免费注册</a>
                    </div>
                </div>
            </ul>
            <ul class="message-r">
                <div class="topMessage home">
                    <div class="menu-hd"><a href="index.jsp" target="_top" class="h">商城首页</a></div>
                </div>
                <div class="topMessage my-shangcheng">
                    <div class="menu-hd MyShangcheng"><a href="personalinfo.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                </div>

            </ul>
        </div>

        <!--悬浮搜索框-->

        <div class="nav white">
            <div class="logo"><img src="../images/logo.png" /></div>
            <div class="logoBig">
                <li><img src="../images/logobig.png" /></li>
            </div>

            <div class="search-bar pr">
                <a name="index_none_header_sysc" href="#"></a>
                <form>
                    <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                    <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                </form>
            </div>
        </div>

        <div class="clear"></div>
        <div class="concent">
            <!--地址 -->
            <div class="paycont">
                <div class="address">
                    <h3>确认收货地址 </h3>
                    
                    <div class="clear"></div>
                    <ul>
                        <div class="per-border"></div>
                        <li class="user-addresslist defaultAddr">

                            <div class="address-left">
                                <div class="user DefaultAddr">

                                    <span class="buy-address-detail">   
                                        <span class="buy-user">艾迪 </span>
                                        <span class="buy-phone">15871145629</span>
                                    </span>
                                </div>
                                <div class="default-address DefaultAddr">
                                    <span class="buy-line-title buy-line-title-type">收货地址：</span>
                                    <span class="buy--address-detail">
                                        <span class="province">山东</span>省
                                        <span class="city">青岛</span>市
                                        <span class="dist">崂山</span>区
                                        <span class="street">浮山小区608号</span>
                                    </span>

                                    </span>
                                </div>

                            </div>
                            <div class="address-right">
                                <a href="../person/address.html">
                                    <span class="am-icon-angle-right am-icon-lg"></span></a>
                            </div>
                            <div class="clear"></div>

                            <div class="new-addr-btn">
                                <span class="new-addr-bar hidden">|</span>
                                <a href="#">编辑</a>
                                <span class="new-addr-bar">|</span>
                                <a href="javascript:void(0);" onclick="delClick(this);">删除</a>
                            </div>

                        </li>
                        <div class="per-border"></div>

                    </ul>

                    <div class="clear"></div>
                </div>
                <!--物流 -->
                <div class="clear"></div>

                <!--支付方式-->

                <div class="clear"></div>

                <!--订单 -->
                <div class="concent">
                    <div id="payTable">
                        <h3>确认订单信息</h3>
                        <div class="cart-table-th">
                            <div class="wp">

                                <div class="th th-item">
                                    <div class="td-inner">商品信息</div>
                                </div>
                                <div class="th th-price">
                                    <div class="td-inner">单价</div>
                                </div>
                                <div class="th th-amount">
                                    <div class="td-inner">数量</div>
                                </div>
                                <div class="th th-sum">
                                    <div class="td-inner">金额</div>
                                </div>


                            </div>
                        </div>
                        <div class="clear"></div>

                        <tr class="item-list">
                        <div class="bundle  bundle-last">

                            <div class="bundle-main">
                                <ul class="item-content clearfix">
                                    <div class="pay-phone">
                                        <li class="td td-item">
                                            <div class="item-pic">
                                                <a href="#" class="J_MakePoint">
                                                    <img src="../images/zhiniaoku.jpg" class="itempic J_ItemImg"></a>
                                            </div>
                                            <div class="item-info">
                                                <div class="item-basic-info">
                                                    <a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">帮宝适 Pampers 拉拉裤L120片（9-14kg）</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="td td-info">

                                        </li>
                                        <li class="td td-price">
                                            <div class="item-price price-promo-promo">
                                                <div class="price-content">
                                                    <em class="J_Price price-now">229.00</em>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <li class="td td-amount">
                                        <div class="amount-wrapper ">
                                            <div class="item-amount ">
                                                <span class="phone-title">购买数量</span>
                                                <div class="sl">
                                                    <input class="min am-btn" name="" type="button" value="-" />
                                                    <input class="text_box" name="" type="text" value="2" style="width:30px;" />
                                                    <input class="add am-btn" name="" type="button" value="+" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-sum">
                                        <div class="td-inner">
                                            <em tabindex="0" class="J_ItemSum number">258.00</em>
                                        </div>
                                    </li>

                                </ul>
                                <div class="clear"></div>

                            </div>
                            </tr>
                            <div class="clear"></div>
                        </div>

                        <tr id="J_BundleList_s_1911116345_1" class="item-list">
                        <div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
                            <div class="bundle-main">
                                <ul class="item-content clearfix">
                                    <div class="pay-phone">
                                        <li class="td td-item">
                                            <div class="item-pic">
                                                <a href="#" class="J_MakePoint">
                                                    <img src="../images/zhiniaoku1.jpg" class="itempic J_ItemImg"></a>
                                            </div>
                                            <div class="item-info">
                                                <div class="item-basic-info">
                                                    <a href="#" target="_blank" title="帮宝适 Pampers 纸尿裤XL100片(>12kg)" class="item-title J_MakePoint" data-point="tbcart.8.11">帮宝适 Pampers 纸尿裤XL100片(>12kg)</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="td td-info">

                                        </li>
                                        <li class="td td-price">
                                            <div class="item-price price-promo-promo">
                                                <div class="price-content">
                                                    <em class="J_Price price-now">225.00</em>
                                                </div>
                                            </div>
                                        </li>
                                    </div>

                                    <li class="td td-amount">
                                        <div class="amount-wrapper ">
                                            <div class="item-amount ">
                                                <span class="phone-title">购买数量</span>
                                                <div class="sl">
                                                    <input class="min am-btn" name="" type="button" value="-" />
                                                    <input class="text_box" name="" type="text" value="2" style="width:30px;" />
                                                    <input class="add am-btn" name="" type="button" value="+" />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-sum">
                                        <div class="td-inner">
                                            <em tabindex="0" class="J_ItemSum number">450.00</em>
                                        </div>
                                    </li>

                                </ul>
                                <div class="clear"></div>

                            </div>
                            </tr>
                        </div>
                        <div class="clear"></div>
                        <div class="pay-total">
                            <!--留言-->

                            <!--优惠券 -->

                            <div class="clear"></div>
                        </div>
                        <!--含运费小计 -->
                        <div class="buy-point-discharge ">
                            <p class="price g_price ">
                                合计 <span>¥</span><em class="pay-sum">718.00</em>
                            </p>
                        </div>

                        <!--信息 -->


                        <div id="holyshit269" class="submitOrder">
                            <div class="go-btn-wrap">
                                <a id="J_Go" href="success.html" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </div>
    <div class="footer">
        <div class="footer-hd">
            <p>
                <a href="#">恒望科技</a>
                <b>|</b>
                <a href="#">商城首页</a>
                <b>|</b>
                <a href="#">支付宝</a>
                <b>|</b>
                <a href="#">物流</a>
            </p>
        </div>
        <div class="footer-bd">
            <p>
                <a href="#">Java 13&14 </a>
                <a href="#">合作伙伴</a>
                <a href="#">联系我们</a>
                <a href="#">网站地图</a>
                <em>© 2015-2018 中华牙膏 版权所有.</em>
            </p>
        </div>
    </div>
</div>
<div class="theme-popover-mask"></div>
<div class="theme-popover">

    <!--标题 -->
    <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
    </div>
    <hr/>

    <div class="am-u-md-12">
        <form class="am-form am-form-horizontal">

            <div class="am-form-group">
                <label for="user-name" class="am-form-label">收货人</label>
                <div class="am-form-content">
                    <input type="text" id="user-name" placeholder="收货人">
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-phone" class="am-form-label">手机号码</label>
                <div class="am-form-content">
                    <input id="user-phone" placeholder="手机号必填" type="email">
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-phone" class="am-form-label">所在地</label>
                <div class="am-form-content address">
                    <select data-am-selected>
                        <option value="a">浙江省</option>
                        <option value="b">山东省</option>
                    </select>
                    <select data-am-selected>
                        <option value="a">温州市</option>
                        <option value="b">青岛市</option>
                    </select>
                    <select data-am-selected>
                        <option value="a">瑞安区</option>
                        <option value="b">崂山区</option>
                        <option value="b">市北区</option>
                    </select>
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-intro" class="am-form-label">详细地址</label>
                <div class="am-form-content">
                    <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                    <small>100字以内写出你的详细地址...</small>
                </div>
            </div>

            <div class="am-form-group theme-poptit">
                <div class="am-u-sm-9 am-u-sm-push-3">
                    <div class="am-btn am-btn-danger">保存</div>
                    <div class="am-btn am-btn-danger close">取消</div>
                </div>
            </div>
        </form>
    </div>

</div>

<div class="clear"></div>
</body>
</html>
