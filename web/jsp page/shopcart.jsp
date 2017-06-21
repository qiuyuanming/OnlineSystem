<%-- 
    Document   : shopcart
    Created on : 2017-6-20, 17:04:58
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <title>购物车页面</title>

        <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
        <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
        <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
        <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="../js/jquery.js"></script>

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
                    <div class="menu-hd MyShangcheng"><a href="orderManagement.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
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

        <!--购物车 -->
        <div class="concent">
            <div id="cartTable">
                <div class="cart-table-th">
                    <div class="wp">
                        <div class="th th-chk">
                            <div id="J_SelectAll1" class="select-all J_SelectAll">

                            </div>
                        </div>
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
                        <div class="th th-op">
                            <div class="td-inner">操作</div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>

                <tr class="item-list">
                <div class="bundle  bundle-last ">
                    <div class="bundle-hd">
                        <div class="bd-promos">
                            <span class="list-change theme-login">编辑</span>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="bundle-main">
                        <ul class="item-content clearfix">
                            <li class="td td-chk">
                                <div class="cart-checkbox ">
                                    <input class="check" id="J_CheckBox_170037950254" name="items[]" value="170037950254" type="checkbox">
                                    <label for="J_CheckBox_170037950254"></label>
                                </div>
                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" target="_blank" data-title="奥伊西 oissie 女宝宝纯棉无袖连衣裙百褶长裙子" class="J_MakePoint" data-point="tbcart.8.12">
                                        <img src="../images/lianyiqun.jpg" class="itempic J_ItemImg"></a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title="奥伊西 oissie 女宝宝纯棉无袖连衣裙百褶长裙子" class="item-title J_MakePoint" data-point="tbcart.8.11">奥伊西 oissie 女宝宝纯棉无袖连衣裙百褶长裙子</a>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-info">
                                <div class="item-props item-props-can"></div>
                            </li>
                            <li class="td td-price">
                                <div class="item-price price-promo-promo">
                                    <div class="price-content">
                                        <div class="price-line">
                                            <em class="J_Price price-now">69.00</em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <div class="sl">
                                            <input class="min am-btn" name="" type="button" value="-" />
                                            <input class="text_box" name="" type="text" value="1" style="width:30px;" />
                                            <input class="add am-btn" name="" type="button" value="+" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" class="J_ItemSum number">69.00</em>
                                </div>
                            </li>
                            <li class="td td-op">
                                <div class="td-inner">
                                    <a href="javascript:;" data-point-url="#" class="delete">
                                        删除</a>
                                </div>
                            </li>
                        </ul>




                        <ul class="item-content clearfix">
                            <li class="td td-chk">
                                <div class="cart-checkbox ">
                                    <input class="check" id="J_CheckBox_170037950254" name="items[]" value="170037950254" type="checkbox">
                                    <label for="J_CheckBox_170037950254"></label>
                                </div>
                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" target="_blank" data-title="贝壳元素 童装卡通短袖连衣裙夏装韩版新款女童裙子 黑耳朵款" class="J_MakePoint" data-point="tbcart.8.12">
                                        <img src="../images/lianyiqun1.jpg" class="itempic J_ItemImg"></a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title="贝壳元素 童装卡通短袖连衣裙夏装韩版新款女童裙子 黑耳朵款" class="item-title J_MakePoint" data-point="tbcart.8.11">贝壳元素 童装卡通短袖连衣裙夏装韩版新款女童裙子 黑耳朵款</a>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-info">
                                <div class="item-props item-props-can">

                                </div>
                            </li>
                            <li class="td td-price">
                                <div class="item-price price-promo-promo">
                                    <div class="price-content">

                                        <div class="price-line">
                                            <em class="J_Price price-now" tabindex="0">43.00</em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <div class="sl">
                                            <input class="min am-btn" name="" type="button" value="-" />
                                            <input class="text_box" name="" type="text" value="1" style="width:30px;" />
                                            <input class="add am-btn" name="" type="button" value="+" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" class="J_ItemSum number">43.00</em>
                                </div>
                            </li>
                            <li class="td td-op">
                                <div class="td-inner">
                                    <a href="javascript:;" data-point-url="#" class="delete">
                                        删除</a>
                                </div>
                            </li>
                        </ul>




                    </div>
                </div>
                </tr>
                <div class="clear"></div>

                <tr class="item-list">
                <div class="bundle  bundle-last ">
                    <div class="bundle-hd">
                        <div class="bd-promos">

                            <span class="list-change theme-login">编辑</span>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="bundle-main">
                        <ul class="item-content clearfix">
                            <li class="td td-chk">
                                <div class="cart-checkbox ">
                                    <input class="check" id="J_CheckBox_170769542747" name="items[]" value="170769542747" type="checkbox">
                                    <label for="J_CheckBox_170769542747"></label>
                                </div>
                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" target="_blank" data-title="帮宝适 Pampers 拉拉裤XXL50片*2包（>15kg）" class="J_MakePoint" data-point="tbcart.8.12">
                                        <img src="../images/zhiniaoku2.jpg" class="itempic J_ItemImg"></a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title="帮宝适 Pampers 拉拉裤XXL50片*2包（>15kg）" class="item-title J_MakePoint" data-point="tbcart.8.11">帮宝适 Pampers 拉拉裤XXL50片*2包（>15kg）</a>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-info">
                                <div class="item-props item-props-can">
                                </div>
                            </li>
                            <li class="td td-price">
                                <div class="item-price price-promo-promo">
                                    <div class="price-content">

                                        <div class="price-line">
                                            <em class="J_Price price-now" tabindex="0">39.00</em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
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
                                    <em tabindex="0" class="J_ItemSum number">440.00</em>
                                </div>
                            </li>
                            <li class="td td-op">
                                <div class="td-inner">
                                    <a href="javascript:;" data-point-url="#" class="delete">
                                        删除</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                </tr>
            </div>
            <div class="clear"></div>
            <ul class="am-pagination am-pagination-right">
                <li class="am-disabled"><a href="#">&laquo;</a></li>
                <li class="am-active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
            <div class="float-bar-wrapper">

                <div class="float-bar-right">
                    <div class="amount-sum">
                        <span class="txt">已选商品</span>
                        <em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
                        <div class="arrow-box">
                            <span class="selected-items-arrow"></span>
                            <span class="arrow"></span>
                        </div>
                    </div>
                    <div class="price-sum">
                        <span class="txt">合计:</span>
                        <strong class="price">¥<em id="J_Total">0.00</em></strong>
                    </div>
                    <div class="btn-area">
                        <a href="pay.html" id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
                            <span>结&nbsp;算</span></a>
                    </div>
                </div>

            </div>

            <div class="footer">
                <div class="footer-hd">
                    <p>
                        <a href="#"> Java13&14 </a>
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
                        <em>© 2015-2018 中华牙膏 版权所有</a></em>
                    </p>
                </div>
            </div>

        </div>

        <!--引导 -->
        <div class="navCir">
            <li><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
            <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
            <li class="active"><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
            <li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>					
        </div>
    </body>
</html>
