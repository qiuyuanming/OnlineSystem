<%-- 
    Document   : orderManagement
    Created on : 2017-6-20, 17:12:52
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="../css/person.css" rel="stylesheet" type="text/css"/>
        <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
        <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

        <link href="../css/personal.css" rel="stylesheet" type="text/css">
        <link href="../css/orstyle.css" rel="stylesheet" type="text/css">

        <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
        <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>


        <![endif]--></head>

    <body>

        <div class="container">
            <div class="header">
                <div class="topmenu">
                    <div class="menu-hd">
                        <a href="#" target="_top" class="h">欢迎您,</a>
                        <a href="#" target="_top">用户名</a>
                    </div>
                </div>

                <div class="logo"><a href="index.jsp"><img src="../images/logobig.png" height="90" id="Insert_logo" display:block; /></a> </div>

                <div class="search-bar">
                    <form>
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                    </form>
                </div>


            </div>
            <div class="sidebar1">
                <ul class="nav">
                    <li><a href="personalinfo.jsp">我的资料</a></li>
                    <li><a href="orderManagement.jsp">订单管理</a></li>
                    <li><a href="correctinfo.jsp">修改信息</a></li>
                    <li><a href="#">退出</a></li>
                </ul>
                <div class="left">
                </div>

                <!-- end .sidebar1 --></div>
            <div class="content">
                <div class="center">
                    <div class="col-main">
                        <div class="main-wrap">

                            <div class="user-order">

                                <!--标题 -->
                                <div class="am-cf am-padding">
                                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                                </div>
                                <div>      <form>
                                        选择日期: <input type="date" name="order_date" />
                                        <input type="submit"  value="查询"/>
                                    </form></div>
                                <hr/>

                                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                                        <li class="am-active"><a href="#tab1">所有订单</a></li>

                                    </ul>

                                    <div class="am-tabs-bd">
                                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                            <div class="order-top">
                                                <div class="th th-item">
                                                    <td class="td-inner">商品</td>
                                                </div>
                                                <div class="th th-price">
                                                    <td class="td-inner">单价</td>
                                                </div>
                                                <div class="th th-number">
                                                    <td class="td-inner">&nbsp;数量</td>
                                                </div>
                                                <div class="th th-operation">
                                                    <td class="td-inner">&nbsp;&nbsp;</td>
                                                </div>
                                                <div class="th th-amount">
                                                    <td class="td-inner">合计</td>
                                                </div>
                                                <div class="th th-status">
                                                    <td class="td-inner">交易状态</td>
                                                </div>
                                                <div class="th th-change">
                                                    <td class="td-inner">交易操作</td>
                                                </div>
                                            </div>

                                            <div class="order-main">
                                                <div class="order-list">

                                                    <!--交易成功-->
                                                    <div class="order-status5">
                                                        <div class="order-title">
                                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                                            <span>成交时间：2017-6-18</span>
                                                            <!--    <em>店铺：小桔灯</em>-->
                                                        </div>
                                                    </div>



                                                    <!--交易失败-->
                                                    <div class="order-status0">
                                                        <div class="order-content">
                                                            <div class="order-left">
                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/zhiniaoku.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>帮宝适 Pampers 拉拉裤L120片（9-14kg）</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            129.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>2
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-operation">
                                                                        <div class="item-operation">

                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic"> <a href="#" class="J_MakePoint"> <img src="../images/zhiniaoku1.jpg" class="itempic J_ItemImg"></a></div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <p><a href="#">帮宝适 Pampers 纸尿裤XL100片(>12kg)</a></p>

                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price"> 225.00 </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number"> <span>×</span>2 </div>
                                                                    </li>
                                                                    <li class="td td-operation">
                                                                        <div class="item-operation"></div>
                                                                    </li>
                                                                    <li class="td td-number"> </li>
                                                                    <li class="td td-operation">
                                                                        <div class="item-operation"></div>
                                                                    </li>
                                                                </ul>
                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic"> <a href="#" class="J_MakePoint"> <img src="../images/zhiniaoku2.jpg" class="itempic J_ItemImg"> </a> </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info"> <a href="#">
                                                                                    <p>帮宝适 Pampers 拉拉裤XXL50片*2包（>15kg）</p>

                                                                                </a> </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price"> 220.00 </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number"> <span>×</span>2 </div>
                                                                    </li>
                                                                    <li class="td td-operation">
                                                                        <div class="item-operation"></div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="order-right">
                                                                <li class="td td-amount">
                                                                    <div class="item-amount">
                                                                        合计：1406.00

                                                                    </div>
                                                                </li>
                                                                <div class="move-right">
                                                                    <li class="td td-status">
                                                                        <div class="item-status"></div>
                                                                    </li>
                                                                    <li class="td td-change">
                                                                        <div class="am-btn am-btn-danger anniu">
                                                                            删除订单</div>
                                                                    </li>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>											

                                                    <!--待发货-->
                                                    <div class="order-status2">
                                                        <div class="order-title">
                                                            <div class="dd-num">订单编号：<a href="javascript:;">1601431</a></div>
                                                            <span>成交时间：2017-6-10</span>
                                                            <!--    <em>店铺：小红灯</em>-->
                                                        </div>
                                                        <div class="order-content">
                                                            <div class="order-left">
                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/lianyiqun.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>奥伊西 oissie 女宝宝纯棉无袖连衣裙百褶长裙子</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            69.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>1
                                                                        </div>
                                                                    </li>
                                                                </ul>

                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/lianyiqun1.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>贝壳元素 童装卡通短袖连衣裙夏装韩版新款女童裙子 黑耳朵款</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            43.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>1
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-operation">

                                                                    </li>
                                                                </ul>

                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/lianyiqun2.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>贝壳元素 宝宝绣花背心裙夏装韩版女童童装儿童连衣裙 粉</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            65.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>1
                                                                        </div>
                                                                    </li>

                                                                </ul>
                                                            </div>
                                                            <div class="order-right">
                                                                <li class="td td-amount">
                                                                    <div class="item-amount">
                                                                        合计：177.00
                                                                    </div>
                                                                </li>
                                                                <div class="move-right">
                                                                    <li class="td td-status">
                                                                        <div class="item-status">
                                                                            <p class="Mystatus">买家已付款</p>
                                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-change">
                                                                        <div class="am-btn am-btn-danger anniu">
                                                                            删除订单</div>
                                                                    </li>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--不同状态订单-->
                                                    <div class="order-status3">
                                                        <div class="order-title">
                                                            <div class="dd-num">订单编号：<a href="javascript:;">1601432</a></div>
                                                            <span>成交时间：2017-5-20</span>
                                                            <!--    <em>店铺：小绿灯</em>-->
                                                        </div>
                                                        <div class="order-content">
                                                            <div class="order-left">
                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/naifen.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>德国原装 Aptamil 爱他美婴儿配方奶粉1+段12M+600g*4盒</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            336.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>2
                                                                        </div>
                                                                    </li>

                                                                </ul>

                                                                <ul class="item-list">
                                                                    <li class="td td-item">
                                                                        <div class="item-pic">
                                                                            <a href="#" class="J_MakePoint">
                                                                                <img src="../images/naifen1.jpg" class="itempic J_ItemImg">
                                                                            </a>
                                                                        </div>
                                                                        <div class="item-info">
                                                                            <div class="item-basic-info">
                                                                                <a href="#">
                                                                                    <p>澳洲爱他美 Aptamil 爱他美婴幼儿奶粉2段6~12M 900g*2罐</p>

                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-price">
                                                                        <div class="item-price">
                                                                            358.00
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-number">
                                                                        <div class="item-number">
                                                                            <span>×</span>2
                                                                        </div>
                                                                    </li>

                                                                </ul>

                                                            </div>
                                                            <div class="order-right">
                                                                <li class="td td-amount">
                                                                    <div class="item-amount">
                                                                        合计：1388.00

                                                                    </div>
                                                                </li>
                                                                <div class="move-right">
                                                                    <li class="td td-status">
                                                                        <div class="item-status">
                                                                            <p class="Mystatus">卖家已发货</p>
                                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                                            <p class="order-info"><a href="#">延长收货</a></p>
                                                                        </div>
                                                                    </li>
                                                                    <li class="td td-change">
                                                                        <div class="am-btn am-btn-danger anniu">
                                                                            删除订单</div>
                                                                    </li>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>
                                            <ul class="am-pagination am-pagination-right">
                                                <li class="am-disabled"><a href="#">&laquo;</a></li>
                                                <li class="am-active"><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">5</a></li>
                                                <li><a href="#">&raquo;</a></li>
                                            </ul>

                                        </div>







                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <div class="sidebar2">

            </div>

            <!-- end .container --></div>
    </body>
</html>
