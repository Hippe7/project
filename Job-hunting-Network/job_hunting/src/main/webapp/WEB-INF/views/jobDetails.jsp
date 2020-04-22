<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/20
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/my51JobDwt.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>职位详情</title>

    <script type="text/javascript">
        function apply() {
            var jid = ${sessionScope.job.id}
            var eid = ${sessionScope.enterprise1.id}
            $.get("${pageContext.request.contextPath}/apply/applyJob",{jid:jid,eid:eid},function (data) {
                if(data==="YES"){
                    alert("申请成功")
                }else if (data==="NO"){
                    alert("您还未登录")
                    window.open("${pageContext.request.contextPath}/user/findLogin")
                }else if(data==="NOO"){
                    alert("您还未填写简历")
                    window.open("${pageContext.request.contextPath}/user/findSelf")
                }else {
                    alert("您已申请过该职位，不要重复申请")
                }
            })
        }

    </script>
</head>
<body>
<!--Begin Header Begin-->
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
<div class="menuBar">
    <span class="menuBar1">职位详情</span>
</div>
<div>
    <img class="img1" src="../images/job1.png">
</div>
    <br/>
<div class="in">
    <div class="cn" style="margin-right: -50px">
        <h1 title="${sessionScope.job.job_name}">${sessionScope.job.job_name}</h1><strong></strong></br>
        <p class="cname">

            <a href="#" target="_blank" class="catn">${sessionScope.enterprise1.ent_name}</a>
            <a href="#" target="_blank">查看所有职位</a>
        </p>
        <p class="msg ltype" title="${sessionScope.job.job_address}&nbsp;&nbsp;|&nbsp;&nbsp;${sessionScope.job.college}&nbsp;&nbsp;|&nbsp;&nbsp;${sessionScope.job.education}&nbsp;&nbsp;|&nbsp;&nbsp;">${sessionScope.job.job_address}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;${sessionScope.job.college}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;${sessionScope.job.education}&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;<fmt:formatDate value="${sessionScope.job.date}" pattern="MM-dd"></fmt:formatDate>发布</p>
        <br/>

    </div>

    <div class="op">
        <%--<a href="${pageContext.request.contextPath}/apply/applyJob?jid=${sessionScope.job.id}&eid=${sessionScope.enterprise1.id}">--%>
            <img src="../images/shenqingzhiwei.png" onclick="apply()">
        <%--</a>--%>
    </div>
</div>

<div class="tBorderTop_box" >
    <br/>
    <br/>

    <img src="../images/xian.png" style="width: 80%">
    <br/>
    <h2><span class="bname">职位信息</span></h2>
    <br/>
    <br/>

    <div class="bmsg job_msg inbox" style="width: 1000px ;margin-left:0">
        <p>${sessionScope.job.requirement}</p>
    </div>
    <br/>
    <br/>
</div>
<div class="menuBar">
    <span class="menuBar1">职位详情</span>
</div>
<div class="divbottom">
    <span class="spandwt">人才招聘&nbsp;Email:liren@163.com</span>
    <span class="spandwt">个人求职&nbsp;Email:zxp_997@163.com&nbsp;&nbsp;或垂询:15227266980</span>
    <span class="spandwt">未经本人同意，不得转载本网站作品</span>
    <span class="spandwt">网版权所有&copy;郑晓鹏</span>
    <span class="spandwt"><a href="index.html"><img src="../images/bottom1.gif" class="imgdwt" /></a></span>
</div>


</body>
<style>
    .menuBar
    {
        background-color: #50A3A2;
        height:33px;
        width:70%;
        margin:auto;
        font-size:14px;
        color:#FFF;
        line-height:28px;
    }
    .img1{
        width: 70%;
        margin-left: 230px;
    }
    .menuBar1{
        margin-left:50%;
    }
    .in{
        font-family: "microsoft yahei" !important;
        font-size: 14px;
        position: relative;
        width: 1000px;
        margin: 0 auto;
        padding: 15px 0;
    }
    .cn{
        font-family: "microsoft yahei" !important;
        font-size: 14px;
        float: left;
        width: 666px;
    }
    .cname{
        font-family: "microsoft yahei" !important;
        margin: 0;
        padding: 0;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        float: left;
        width: 100%;
        height: 20px;
        line-height: 20px;
        font-size: 16px;
        color: #333;
        margin-bottom: 25px;
    }
    .tBorderTop_box{
        font-family: "microsoft yahei" !important;
        font-size: 14px;
        margin-left: 270px;
    }

</style>
</html>