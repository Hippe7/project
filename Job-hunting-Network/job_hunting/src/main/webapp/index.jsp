<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="css/style.css" />

    <title>毕业生就业系统</title>
</head>
<body>

<script type="text/javascript">
</script>
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
        	<span class="fl">你好，请<a href="${pageContext.request.contextPath}/user/findLogin">登录</a>&nbsp; <a href="${pageContext.request.contextPath}/user/findSutRegist.action">毕业生注册</a>&nbsp;</span>
            </c:if>
            <c:if test="${user!=null}" >
            <span class="fl">你好，<a href="${pageContext.request.contextPath}/user/findSelf">${sessionScope.user}</a>&nbsp; <a href="${pageContext.request.contextPath}/user/findSutRegist.action">毕业生注册</a>&nbsp;</span>
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
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="${pageContext.request.contextPath}/job/findjob"><img width="150" height="50" src="images/logo.png" /></a></div>
    <div class="search">
        <form action="${pageContext.request.contextPath}/job/findKey" method="post">
            <input type="text" value="" class="s_ipt" name="key"/>
            <input type="submit" value="搜索" class="s_btn" />
        </form>
        <span class="fl"><a href="#">Java开发工程师</a><a href="#">UI工程师</a><a href="#">Web全栈工程师</a></span>
    </div>
</div>
<div class="divdwt">
    网站导航&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" class="adwt">网站首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="search.html" class="adwt">职位搜索</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html" class="adwt">Myjob</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="regist.html" class="adwt">用户注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="login.html" class="adwt">用户登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="intro.html" class="adwt">简历管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="company.html" class="adwt">招聘公司</a>
</div>
    <div class="wrap">
        <div class="top">
            <span>城市求职</span>
            <div class="ulli">
                <ul>
                    <li>北京</li>
                    <li>上海</li>
                    <li>广州</li>
                    <li>深圳</li>
                    <li>武汉</li>
                    <li>西安</li>
                    <li>杭州</li>
                    <li>南京</li>
                    <li>成都</li>
                    <li>重庆</li>
                    <li>东莞</li>
                    <li>大连</li>
                    <li>沈阳</li>
                    <li>苏州</li>
                    <li>昆明</li>
                    <li>长沙</li>
                    <li>合肥</li>
                    <li>宁波</li>
                    <li>郑州</li>
                    <li>天津</li>
                    <li>青岛</li>
                </ul>
            </div>
            <a href="#">更多>>></a>
        </div>
        <div class="main">
            <c:set var="industryList"  value = "${sessionScope.industryList}"></c:set>
            <c:if test="${industryList==null}">
            <div class="fenlei"><p>互联网/电子商务</p></div>
            <div class="fenlei"><p>互联网/电子商务</p></div>
            <div class="fenlei"><p>互联网/电子商务</p></div>
            <div class="fenlei"><p>互联网/电子商务</p></div>
            </c:if>
            <c:if test="${industryList!=null}" >
            <c:forEach items="${sessionScope.industryList}" var="industryList" varStatus="status">
                 <div class="fenlei"><p>${industryList.i_name}</p></div>
            </c:forEach>
            </c:if>
        </div>
        <div class="footer">
            <div class="one">
                <span>为你优选</span>
                <a href="#">更多专属职位>>></a>
            </div>
            <div class="two">
                <c:set var="jobList"  value = "${sessionScope.jobList}"></c:set>
                <c:if test="${jobList==null}">
                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>

                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>

                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>

                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>

                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>

                <div class="dom">
                    <div class="h">
                        <span>Java开发工程师</span>
                        <span style="color: #ff6000;">0.6-1.5万/月</span>
                    </div>
                    <div class="m">
                        <ul>
                            <li>在校生/应届生</li>
                            <li>|</li>
                            <li>本科</li>
                            <li>|</li>
                            <li>3-31发布</li>
                        </ul>
                    </div>
                    <div class="xian"></div>
                    <div class="f">
                        <span>中车信息技术有限公司</span>
                        <span style="color: #afaeae;">北京-海淀区</span>
                    </div>
                </div>
                </c:if>
                <c:if test="${jobList!=null}" >
                    <c:forEach items="${sessionScope.jobList}" var="list" varStatus="status">
                        <div class="dom">
                            <div class="h">
                                <a href="${pageContext.request.contextPath}/job/jobDetails?id=${list.id}"><span>${list.job_name}</span></a>
                                <span style="color: #ff6000;">${list.salary}</span>
                            </div>
                            <div class="m">
                                <ul>
                                    <li>${list.major}</li>
                                    <li>|</li>
                                    <li>${list.education}</li>
                                    <li>|</li>
                                    <li><fmt:formatDate value="${list.date}" pattern="yyyy-MM-dd"></fmt:formatDate>发布</li>
                                </ul>
                            </div>
                            <div class="xian"></div>
                            <div class="f">
                                <span>毕业生就业系统为您推荐</span>
                                <span style="color: #afaeae;">${list.job_address}</span>
                            </div>
                        </div>

                    </c:forEach>
                </c:if>

            </div>
        </div>
    </div>
</div>
<div class="divbottom">
    <span class="spandwt">人才招聘&nbsp;Email:liren@163.com</span>
    <span class="spandwt">个人求职&nbsp;Email:zxp_997@163.com&nbsp;&nbsp;或垂询:15227266980</span>
    <span class="spandwt">未经本人同意，不得转载本网站作品</span>
    <span class="spandwt">网版权所有&copy;郑晓鹏</span>
    <span class="spandwt"><a href="index.html"><img src="images/bottom1.gif" class="imgdwt" /></a></span>
</div>
</body>
<style>
    *{
        padding: 0;
        margin: 0;
    }
    .wrap{
        padding: 10px;
        height: 600px;
        background-color: #50A3A2;
    }
    .wrap .top{
        width: 100%;
        height: 55px;
        background-color: white;
        margin-bottom: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .wrap .top span{
        display: block;
        width: 15%;
        height: 55px;
        line-height: 55px;
        font-size: 22px;
        color: #50A3A2;
        text-align: center;
    }
    .wrap .top .ulli{
        width: 75%;
        height: 55px;
    }
    .wrap .top .ulli ul li{
        float: left;
        list-style: none;
        width: 40px;
        height: 50px;
        line-height: 50px;
        margin-left: 10px;
        font-size: 16px;
        color: black;
    }
    .wrap .top a{
        display: block;
        width: 10%;
        height: 55px;
        text-align: center;
        line-height: 55px;
        text-decoration:none;
    }
    .wrap .main{
        width: 100%;
        height: 70px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .wrap .main .fenlei{
        width: 340px;
        height: 55px;
        background-color: white;
    }
    .wrap .main .fenlei p{
        font-size: 16px;
        color: black;
        text-align: center;
        height: 55px;
        line-height: 55px;
    }
    .wrap .footer{
        height: 435px;
        background-color: white;
    }
    .wrap .footer .one{
        width: 100%;
        height: 55px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .wrap .footer .one span{
        display: block;
        width: 15%;
        height: 55px;
        line-height: 55px;
        font-size: 22px;
        color: #50A3A2;
        text-align: center;
    }
    .wrap .footer .one a{
        display: block;
        width: 10%;
        height: 55px;
        text-align: center;
        line-height: 55px;
        text-decoration:none;
    }
    .wrap .footer .two{
        width: 100%;
        height: 380px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
    }
    .wrap .footer .two .dom{
        padding: 10px;
        width: 30%;
        height: 155px;
        border: 1px solid #afaeae;
    }
    .wrap .footer .two .dom .h{
        width: 100%;
        height: 62px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .wrap .footer .two .dom .h span{
        font-size: 16px;
    }
    .wrap .footer .two .dom .m{
        width: 100%;
        height: 30px;
        margin-bottom: 5px;
    }
    .wrap .footer .two .dom .m ul li{
        float: left;
        list-style: none;
        height: 30px;
        line-height: 30px;
        margin-right: 10px;
        font-size: 16px;
        color: #afaeae;
    }
    .wrap .footer .two .dom .xian{
        width: 100%;
        height: 10px;
        border-top:1px dotted #afaeae;
    }
    .wrap .footer .two .dom .f{
        width: 100%;
        height: 28px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
</style>
</html>