<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人注册</title>
    <link href="dzsw/style/style.css" rel="stylesheet" type="text/css"/>
    <link href="dzsw/style/layer.css" rel="stylesheet" type="text/css"/>
    <link href="dzsw/style/yuding.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="dzsw/scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="dzsw/scripts/jquery.cookie.js"></script>
    <link href="dzsw/style/easyAlert.css" rel="stylesheet" type="text/css"/>
    <link href="dzsw/style/login.css" rel="stylesheet" type="text/css"/>

</head>
<body onload="hello()">

<div id="header">
    <div class="logo">
        <div class="logo">
            <br><br><br><br>
            <img style="float: left; width: 52px; height: 52px;"
                 src="dzsw/images/icon.png"/>
            <div align="left">
                <font size="6" face="黑体">网上火车订票系统</font>
            </div>
        </div>
    </div>
    <div class="top" style="text-align: right;">
        <font size="4" face="楷体" color="blue">
            <strong id="hello"></strong><strong class="red" id="islogin"><a
                href="login.jsp"> 请登录...</a></strong></font>
    </div>
    <div class="nav">
        <ul>
            <li><a href="index.jsp">首 页</a></li>
            <li><a href="Auto_tickets.jsp">自助购票</a></li>
            <li><a href="login.jsp">个人中心</a></li>
            <li><a href="failure_orders.jsp">订单查询</a></li>
            <li><a href="help.jsp"> 帮助信息</a></li>
            <li class="date">
                <script src="dzsw/scripts/chdata.js"></script>
            </li>
        </ul>
    </div>
</div>
<!--头部结束-->
<div class="clear"></div>

<!--中部开始-->
<div id="homeWrap">

    <div class="login_page bs1">
        <div class="login_reg">
            <div class="regjd-sj "></div>
            <div class="regjd2-sj hide"></div>
            <form id="form1" action="reg" method="post">
                <input name="__RequestVerificationToken" type="hidden"
                       value="3BsdkUe8LB3q8Zi77dPP30v9ri3g6LQ7eLRcAWnrotX_iZ2lTZzI7PCAUCsUv1rEM7xvb4BiyXnfdYC2poF_PQ2"/>
                <ul class="regdiv">
                    <li style="color: #FF0000; display: none;">您的账号或者密码错误，请核对后重新输入！</li>
                    <li><label><em class="red">*</em>用户名：</label><input
                            id="userid" name="userid" type="text" class="inputU"
                            onblur="checkUserIsNew('')"/><span id="usr_err"
                                                               style="color: red;">长度为6-20位</span></li>
                    <li><label><em class="red">*</em>密码：</label><input
                            id="userpwd" name="userpwd" type="password" class="inputU"
                            onblur="checkpsw1()"/><span>密码长度为6-20位，建议使用混合密码</span></li>
                    <li><label><em class="red">*</em>重复密码：</label><input
                            id="userpwd2" name="userpwd2" type="password" class="inputU"
                            onblur="checkpsw()"/><span>请再次输入相同的密码</span></li>
                    <li><label><em class="red">*</em>姓名：</label><input
                            id="true_name" name="true_name" type="text" class="inputU"/><span>请输入真实姓名</span></li>

                    <li><label><em class="red">*</em>二代身份证号码：</label><input
                            id="idcard" name="idcard" type="text" class="inputU"
                            onblur="checkIdcard()" style="width: 320px;"/><span>不能重复注册/注册后不能修改</span></li>

                    <li><label><em class="red">*</em>手机号码：</label><input
                            id="phone" name="phone" type="text" class="inputU"
                            onblur="checkphone();"/><span>不能重复注册/用于找回密码和接收订单信息</span></li>
                    <li><label><em class="red">*</em>验证码：</label><input
                            name="fauthcode" id="fauthcode" type="text" class="useryzm"
                            value="验证码"
                            onfocus="if (this.value == '验证码') { this.value = ''; this.style.color = '#333'; }"
                            onblur="if(!this.value){this.value='验证码';this.style.color='#999999'}"/>
                        <span> <img src="dzsw/images/Validate.ashx" id="vcode_img"
                                    alt="验证码图片" width="62" height="31" class="plogin_verifyimg"
                                    onclick="this.src='dzsw/images/Validate.ashx?' + Math.random();"/> <a
                                href="javascript:check_code();">换一张</a>
						</span></li>

                    <li style="padding-left: 107px;"><input type="checkbox"
                                                            checked="checked" name="isAgree" id="isAgree"> 我已阅读并接受<a
                            href="/dzsw/help/help6" target="_blank">《购票须知》</a></li>
                    <li class="plogin_reg"><a onclick="javascript:makesubst();"
                                              class="sub_02">立即注册</a></li>
                </ul>
            </form>
        </div>


    </div>
</div>
<!--中部结束-->
<div class="clear"></div>

<!--中部结束-->
<div class="clear"></div>

<!--尾部开始-->
<div id="footer">
    <div class="Copyright">湖北省武汉理工大学 版权所有&copy; 2017 技术支持<a href="/dzsw/logger.aspx ">:</a><a
            href="http://www.zjeasy.com/" target="_blank">长沙最终幻想软件股份有限公司</a> <span>程序版本: 2.0.16.329</span><br/>
        购票服务电话:0574-63810109 ICP备案号：湘ICP备05064785
    </div>
</div>
<!--尾部结束-->


</body>
</html>