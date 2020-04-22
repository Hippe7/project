<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/17
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>申请详情</title>

</head>

<body>

<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
        	<span class="fl">我所在的城市：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
            <c:set var="user"  value = "${sessionScope.user}"></c:set>
            <c:if test="${user==null}">
                <span class="fl">你好，请<a href="${pageContext.request.contextPath}/user/findLogin">登录</a>&nbsp; <a href="${pageContext.request.contextPath}/user/findSutRegist.action">毕业生注册</a>&nbsp;|&nbsp;<a href="intro.html">我的简历</a>&nbsp;|</span>
            </c:if>
            <c:if test="${user!=null}" >
                <span class="fl">你好，<a href="#">${sessionScope.user}</a>&nbsp; <a href="${pageContext.request.contextPath}/user/findSutRegist.action">毕业生注册</a>&nbsp;|&nbsp;<a href="intro.html">我的简历</a>&nbsp;|</span>
            </c:if>
        	<span class="ss">
            	<div class="ss_list">
                	<a href="#">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">我的收藏夹</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">网站导航</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="../images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="Index.html"><img width="150" height="50" src="../images/logo.png" /></a></div>
    <div class="search">
        <form>
            <input type="text" value="" class="s_ipt" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>
        <span class="fl"><a href="#">Java开发工程师</a><a href="#">UI工程师</a><a href="#">Web全栈工程师</a></span>
    </div>
</div>
<!-- InstanceBeginEditable name="EditRegion3" -->
<!--菜单栏开始-->
<div class="div0Intro">
    <span class="span0Intro">简历中心</span>|<span class="span0Intro">求职信</span>|<span class="span0Intro">简历指导</span>
</div>
<!--菜单栏结束-->


<!--中间内容开始-->
<div class="div1Intro">
    <!--中间内容左边开始-->
    <div class="div11Intro">
        <br/>
        <div id="pop0" class="div111Intro"><img src="../images/register-arrow.gif" /><span class="span11InnerIntro">我的简历</span></div>
        <br/>
        <div id="pop1" class="div111Intro"><img src="../images/register-arrow.gif" /><a href="${pageContext.request.contextPath}/apply/applyMy"><span class="span11InnerIntro">我的申请</span></a></div>
        <br/>
    </div>
    <!--中间内容左边结束-->
    <!--中间内容右边开始-->
    <div class="div12Intro">
        <!--右边开始-->
        <div id="cen22Com" class="cen22Com" style="">
            <div id="scrollPic1" style="height:65px; width:100%; margin-top:2px; z-index:-10">
                <img src="../images/job1.png"  style=" width: 100%" />
            </div>
            <div id="name1" style="width:100%; height:12px; margin-top:15px; text-align:left; display:block; z-index:-10">
                <img src="../images/company-arrow.gif" />
                <span style="color:#FF7000; font-weight:bold; font-size:12px; margin-left:5px">职位列表</span>
            </div>
            <br/>
            <div id="table1" style="font-size:12px; width:100%; display:block; z-index:-10">
                <table cellpadding="0" cellspacing="1" style=" width:100%;">
                    <tr>
                        <th style="width:60px; height:25px">
                            申请编号
                        </th>
                        <th style="width:120px">
                            职位名称
                        </th>
                        <th style="width:120px;">
                            公司名称
                        </th>
                        <th style="width:100px">
                            工作地点
                        </th>
                        <th style="width:80px">
                            职位详情
                        </th>
                        <th style="width:100px">
                            申请状态
                        </th>
                    </tr>

                    <c:set var="applyMy"  value = "${sessionScope.applyMy}"></c:set>
                    <c:if test="${applyMy==null}">
                    <tr style="background-color:#FBFAFF;">
                        <td style="border-bottom:1px #DCE2EE solid">
                            0
                        </td>
                        <td style="border-bottom:1px #DCE2EE solid">
                            无
                        </td>
                        <td style="border-bottom:1px #DCE2EE solid">
                            无
                        </td>
                        <td style="border-bottom:1px #DCE2EE solid">
                            无
                        </td>
                        <td style="border-bottom:1px #DCE2EE solid">
                            无
                        </td>
                        <td style="border-bottom:1px #DCE2EE solid">
                            无
                        </td>
                    </tr>
                    </c:if>

                    <c:if test="${applyMy!=null}" >
                        <c:forEach items="${sessionScope.applyMy}" var="applyMy" varStatus="status" >
                        <tr style="background-color:#FBFAFF;">
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${applyMy.aid}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${applyMy.jname}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${applyMy.ename}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${applyMy.job_address}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                <a href="${pageContext.request.contextPath}/job/jobDetails?id=${applyMy.jid}">查看</a>
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                <c:if test="${applyMy.astatus=='Y'}">
                                    已通过
                                </c:if>
                                <c:if test="${applyMy.astatus=='P'}">
                                    未通过
                                </c:if>
                                <c:if test="${applyMy.astatus=='N'}">
                                    未审核
                                </c:if>
                            </td>
                        </tr>
                        </c:forEach>
                    </c:if>
                </table>
            </div>
        </div>
        <!--中间内容右边结束-->
    </div>
    <!--中间内容结束-->



    <!-- InstanceEndEditable -->
</div>
<div class="divdwt">
    网站导航&nbsp;&nbsp;|&nbsp;&nbsp;<a href="index.html" class="adwt">网站首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="search.html" class="adwt">职位搜索</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html" class="adwt">Myjob</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="register.html" class="adwt">用户注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html" class="adwt">用户登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="intro.html" class="adwt">简历管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="company.html" class="adwt">招聘公司</a>
</div>
<div>
    <span class="spandwt">人才招聘&nbsp;Email:liren@163.com</span>
    <span class="spandwt">个人求职&nbsp;Email:zxp_997@163.com&nbsp;&nbsp;或垂询:15227266980</span>
    <span class="spandwt">未经本人同意，不得转载本网站作品</span>
    <span class="spandwt">网版权所有&copy;郑晓鹏</span>
    <span class="spandwt"><a href="index.html"><img src="../images/bottom1.gif" class="imgdwt" /></a></span>
</div>
<style type="text/css">
    .div0Intro
    {
        background-color: #50A3A2;
        background-repeat:repeat-x;
        width:1000px;
        height:33px;
        margin:auto;
        color:#FFF;
        font-size:12px;
        line-height:28px;
    }
    .span0Intro
    {
        margin-left:10px;
        margin-right:10px;
    }

    .div1Intro
    {
        width:960px;
        height:1050px;
        /*border:1px solid #F00;*/
        margin:auto;
    }

    .div11Intro
    {
        float:left;
        width:210px;
        height:1045px;
        border:1px #CCC dashed;
        background-color:#FFFFF7;
        text-align:left;
    }

    .div12Intro
    {
        float:left;
        width:700px;
        height:1030px;
        /*border:solid 1px #00F;*/
        text-align:left;
        padding-top:15px;
        margin-left:30px;
    }

    .div111Intro
    {
        /*	width:180px;*/
        height:16px;
        /*border:#000 1px dashed;*/
        margin-left:30px;
        vertical-align:middle;
        /*margin-bottom:10px;
        margin-top:10px;*/
    }

    .span11InnerIntro
    {
        line-height:16px;
        height:16px;
        text-align:left;
        font-size:12px;
        font-weight:bold;
        margin-left:10px;
    }

    .div112Intro
    {
        width:180px;
        height:16px;
        /*border:#000 1px dashed;*/
        margin-left:30px;
        vertical-align:middle;
        margin-bottom:8px;
        margin-top:8px;
    }

    .span12InnerIntro
    {
        color:#414141;
        line-height:16px;
        height:16px;
        text-align:left;
        font-size:12px;
        margin-left:10px;
    }

    .img1Intro
    {
        margin:10px;
        cursor:pointer;
    }

    .img2Intro
    {
        margin-top:10px;
        margin-bottom:10px;
        margin-left:0px;
    }

    .btn1Intro
    {
        width:100px;
        height:33px;
        border:0px;
        background-color: #53E3A6;

    }

    .btn1Intro:hover
    {
        width:100px;
        height:33px;
        border:0px;
    }

    .star1Intro
    {
        color:#F60;
        margin-right:5px;
    }

    td
    {
        font-size:12px;
        color:#414141;
    }

    .tablediv1Intro
    {
        width:698px;
        /*border:1px dashed #000;*/
        margin-bottom:15px;
    }

    .tablediv2Intro
    {
        width:698px;
        /*border:1px dashed #000;*/
        margin-bottom:15px;
    }

    .tablediv3Intro
    {
        width:698px;
        /*border:1px dashed #000;*/
        margin-bottom:15px;
    }

    .table1Intro
    {
        width:690px;
        height:300px;
    }

    .table2Intro
    {
        width:550px;
        height:250px;
    }

    .table3Intro
    {
        width:550px;
        height:190px;
    }

    .textarea1Intro
    {
        width:450px;
        height:45px;
    }

    .aIntro
    {
        color:#414141;
        font-size:12px;
        text-decoration:none;
    }

    .aIntro:hover
    {
        color:#F60;
        font-size:12px;
        text-decoration:none;
    }

</style>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<style type="text/css">
    .spandwt
    {
        display:block;
        text-align:center;
        line-height:25px;
        font-size:12px;
        color:#414141;
        font-family:"宋体";
    }
    .divdwt
    {
        display:block;
        background-color: #50A3A2;
        text-align:center;
        height:35px;
        width:1000px;
        color:#FFF;
        line-height:30px;
        font-size:12px;
        font-family:"宋体";
        margin:auto;
    }

    .adwt
    {
        color:#FFF;
        font-size:12px;
        text-decoration:none;
        font-family:"宋体";
    }

    .adwt:hover
    {
        color:#FFF;
        font-size:12px;
        text-decoration:none;
        font-family:"宋体";
    }

    .bodydwt
    {
        text-align:center;
    }

    .imgdwt
    {
        border:0px;
    }
    .headdwt
    {
        width:960px;
        height:65px;
        margin:auto;/*居中*/
        position:relative;
        vertical-align:bottom;
        /*border:1px solid #000;*/
    }

    .headerleftdwt
    {
        /*border:1px solid #000;*/
        float:left;
        margin-bottom:0px;
        height:65px;
    }

    .headerrightdwt
    {
        /*border:1px solid #000;*/
        float:right;
        height:31px;
        vertical-align:bottom;
        margin-top:34px;
    }

    .imgheaderdwt
    {
        border:0px;
    }

</style>


<script type="text/javascript">






</script>
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>