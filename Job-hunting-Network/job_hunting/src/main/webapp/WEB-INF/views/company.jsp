<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/17
  Time: 18:03
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
    <title>招聘详情</title>

    <script type="text/javascript">
        function sub1() {
            var job_name=$("#job_name").val();
            var salary=$("#salary").val();
            var major=$("#major").val();
            var job_address=$("#job_address").val();
            var requirement=$("#requirement").val();
            var college=$("#college1").find("option:selected").val();
            var education=$("#education").find("option:selected").val();
            var iid=$("#iid").find("option:selected").val();
            alert(requirement)

            $.get("${pageContext.request.contextPath}/job/addJob",
                {job_name:job_name,salary:salary,major:major,job_address:job_address,requirement:requirement,college:college,iid:iid,education:education},
                function (data) {
                    if(data==true){
                        alert("添加成功")
                        window.open("${pageContext.request.contextPath}/user/findSelf")
                    }else {
                        alert("添加失败")
                        window.open("${pageContext.request.contextPath}/user/findSelf")
                    }
                })

        }


        function sub2() {
            var aid = $("#aid").text();
            $.get("${pageContext.request.contextPath}/apply/applyStatus",{aid:aid,flag:1},function (data) {
                if (data==="Y"){
                    alert("已同意该申请")
                    window.open("${pageContext.request.contextPath}/user/findSelf")
                }else {
                    alert("同意失败")
                }
            })
        }
        function sub3() {
            var aid = $("#aid").text();
            $.get("${pageContext.request.contextPath}/apply/applyStatus",{aid:aid,flag:2},function (data) {
                if (data==="P"){
                    alert("已拒绝该申请")
                    window.open("${pageContext.request.contextPath}/user/findSelf")
                }else {
                    alert("拒绝失败")
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
<!-- InstanceBeginEditable name="EditRegion3" -->
<!--菜单栏开始-->

<div class="menuBar">
    公司招聘网页
</div>
<!--菜单栏结束-->

<div id="cenCom" class="cenCom">
    <!--头部开始-->
    <div class="cen1Com">
        <div style="vertical-align:top; margin-left:10px">
            <h1>${sessionScope.user}</h1>
        </div>

    </div>
    <!--头部结束-->
    <!--中间开始-->
    <div id="cen2Com" class="cen2Com">
        <!--左边开始-->
        <div id="cen21Com" class="cen21Com">
            <div class="cen211Com">
                <table style="height:100px; margin-top:5px;">
                    <tr>
                        <td style="width:60px" align="center">
                            用户名：
                        </td>
                        <td>
                            <input type="text" style="width:95px; height:13px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            密码：
                        </td>
                        <td>
                            <input type="password" style="width:95px; height:13px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <input type="button" value="登录" style="border:1px solid #999; width:50px; height:25px;" />
                        </td>
                        <td align="center" style="padding-left:20px">
                            管理员审核登录
                        </td>
                    </tr>
                </table>
            </div>
            <img src="../images/company-left01.gif" />
            <div class="cen212Com">
                <table style="height:120px; width:140px; margin-left:20px; padding-top:5px">
                    <tr>
                        <td style="width:15px; height:15px" align="left">
                            <img src="../images/company-arrow.gif" />
                        </td>
                        <td align="left" style="height:15px;">
                            <a href="javascript:showTable(1)" style="text-decoration:none; color:#000">职位列表</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:2px; background-repeat:repeat-x; background-image:url(../images/company-dot.gif)"></td>
                    </tr>
                    <tr>
                        <td style="width:15px; height:15px" align="left">
                            <img src="../images/company-arrow.gif" />
                        </td>
                        <td align="left" style="height:15px">
                            <a href="javascript:showTable(2)" style="text-decoration:none; color:#000">添加职位</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:2px; background-repeat:repeat-x; background-image:url(../images/company-dot.gif)"></td>
                    </tr>
                    <tr>
                        <td style="width:15px; height:15px" align="left">
                            <img src="../images/company-arrow.gif" />
                        </td>
                        <td align="left" style="height:15px">
                            <a href="javascript:showTable(3)" style="text-decoration:none; color:#000">申请列表</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:2px; background-repeat:repeat-x; background-image:url(../images/company-dot.gif)"></td>
                    </tr>
                    <tr>
                        <td style="width:15px; height:15px" align="left">
                            <img src="../images/company-arrow.gif" />
                        </td>
                        <td align="left" style="height:15px">
                            <a href="javascript:showTable(4)" style="text-decoration:none; color:#000">找回密码</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height:2px; background-repeat:repeat-x; background-image:url(../images/company-dot.gif)"></td>
                    </tr>
                </table>
            </div>
        </div>
        <!--左边结束-->
        <!--右边开始-->
        <div id="cen22Com" class="cen22Com" style="z-index:-10">
            <div id="scrollPic1" style="height:65px; width:520px; margin-top:2px; z-index:-10">
                <img src="../images/job1.png" width="520" style="z-index:-10" />
            </div>
            <div id="name1" style="width:520px; height:12px; margin-top:15px; text-align:left; display:block; z-index:-10">
                <img src="../images/company-arrow.gif" />
                <span style="color:#FF7000; font-weight:bold; font-size:12px; margin-left:5px">职位列表</span>
            </div>

            <div id="table1" style="font-size:12px;  margin-top:20px; display:block; z-index:-10">
                <table cellpadding="0" cellspacing="1" style="height:400px; width:520px;">
                    <tr>
                        <th style="width:20px; height:10px">
                        </th>
                        <th style="width:100px">
                            职位名称
                        </th>
                        <th style="width:100px;">
                            薪资待遇
                        </th>
                        <th style="width:100px">
                            面向专业
                        </th>
                        <th style="width:100px">
                            学历要求
                        </th>
                        <th style="width:100px">
                            发布时间
                        </th>
                        <th style="width:100px">
                            工作地点
                        </th>
                        <th style="width:100px">
                            审核状态
                        </th>
                    </tr>
                    <c:set var="entryJobList"  value = "${sessionScope.entryJobList}"></c:set>
                    <c:if test="${entryJobList==null}">
                    <tr style="background-color:#FBFAFF;">
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

                    <c:if test="${entryJobList!=null}" >
                        <c:forEach items="${sessionScope.entryJobList}" var="entryJobList" varStatus="status" >
                            <tr style="background-color:#FBFAFF;">
                            <td  style="border-bottom:1px #DCE2EE solid">
                                    ${status.index+1}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${entryJobList.job_name}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${entryJobList.salary}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${entryJobList.major}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${entryJobList.education}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                   <fmt:formatDate value="${entryJobList.date}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                    ${entryJobList.job_address}
                            </td>
                            <td style="border-bottom:1px #DCE2EE solid">
                                <c:if test="${entryJobList.status=='Y'}">
                                    通过
                                </c:if>
                                <c:if test="${entryJobList.status=='N'}">
                                    未通过
                                </c:if>
                            </td>
                            </tr>
                        </c:forEach>
                    </c:if>

                </table>
            </div>
            <!--111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111-->

            <div id="name2" style="width:520px; height:12px; margin-top:15px; text-align:left; display:none; z-index:-10">
                <img src="../images/company-arrow.gif" />
                <span style="color:#FF7000; font-weight:bold; font-size:12px; margin-left:5px">添加职位</span>
            </div>

            <div id="table2" style="font-size:12px; height:500px; width:520px; margin-top:20px; display:none; z-index:-10">
                <table cellpadding="0" cellspacing="2" style="height:280px; width:520px;">
                    <tr>
                        <td style="background-color:#DCE2EE; width:160px">
                            职位名称
                        </td>
                        <td align="left">
                            <input id="job_name" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            薪资待遇
                        </td>
                        <td align="left">
                            <input id="salary" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            专业要求
                        </td>
                        <td align="left">
                            <input id="major" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            面向学院
                        </td>
                        <td align="left">
                            <a name="6"><select id="college1" style="width:160px">
                                <option>信息科学与工程学院</option>
                                <option>机械工程学院</option>
                                <option>材料科学与工程学院</option>
                                <option>电气工程学院</option>
                                <option>软件学院</option>
                                <option>经济管理学院</option>
                                <option>外国语学院</option>
                                <option>建筑工程与力学学院</option>
                                <option>文法学院</option>
                                <option>马克思主义学院</option>
                                <option>理学院</option>
                                <option>环境与化学工程学院</option>
                                <option>艺术与设计学院</option>
                                <option>车辆与能源学院</option>
                                <option>体育学院</option>
                                <option>里仁学院</option>
                                <option>继续教育学院</option>
                                <option>国际教育学院</option>
                                <option>其他</option>
                            </select></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            工作地点
                        </td>
                        <td align="left">
                            <input id="job_address" type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            学历要求
                        </td>
                        <td align="left">
                            <a name="6"><select id="education" style="width:160px">
                                <option>大专</option>
                                <option>本科</option>
                                <option>硕士</option>
                                <option>博士</option>
                                <option>无要求</option>
                            </select></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            所属行业
                        </td>
                        <td align="left">
                            <a name="6"><select id="iid" style="width:160px">
                                <option value=1>互联网/电子商务</option>
                                <option value=2>金融/投资/证券</option>
                                <option value=3>科研/政府机构</option>
                                <option value=4>其他行业</option>
                            </select></a>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:#DCE2EE">
                            职位要求
                        </td>
                        <td align="left">
                            <textarea id="requirement" style="height:80px; width:280px"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="button" id="btn111" onclick="sub1()" value="提交" style="border:1px solid #000; background-color:#CCC" />
                        </td>
                    </tr>
                </table>
            </div>

            <!--222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222-->

            <div id="name3" style="width:520px; height:12px; margin-top:15px; text-align:left; display:none; z-index:-10">
                <img src="../images/company-arrow.gif" />
                <span style="color:#FF7000; font-weight:bold; font-size:12px; margin-left:5px">申请列表</span>
            </div>

            <div id="table3" style="font-size:12px; height:500px; width:520px; margin-top:20px; display:none; z-index:-10">
                <table cellpadding="0" cellspacing="2" style=" width:520px;">
                    <tr>
                        <th  style="width:40px; height:25px">
                            申请编号
                        </th>
                        <th style="width:150px">
                            职位名称
                        </th>
                        <th style="width:150px;">
                            毕业生名称
                        </th>
                        <th style="width:60px">
                            他的简历
                        </th>
                        <th style="width:60px">
                            申请时间
                        </th>
                        <th style="width:80px">
                            审核操作
                        </th>
                    </tr>

                    <c:set var="applyEnt"  value = "${sessionScope.applyEnt}"></c:set>
                    <c:if test="${applyEnt==null}">
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
                                <a>无</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>无</a>
                            </td>
                        </tr>
                    </c:if>

                    <c:if test="${applyEnt!=null}" >
                        <c:forEach items="${sessionScope.applyEnt}" var="applyEnt" varStatus="status" >
                            <tr style="background-color:#FBFAFF;">
                                <td id="aid" style="border-bottom:1px #DCE2EE solid">
                                        ${applyEnt.aid}
                                </td>
                                <td style="border-bottom:1px #DCE2EE solid">
                                        ${applyEnt.jname}
                                </td>
                                <td style="border-bottom:1px #DCE2EE solid">
                                        ${applyEnt.sname}
                                </td>
                                <td style="border-bottom:1px #DCE2EE solid">
                                    <a onclick="window.open('${pageContext.request.contextPath}/resume/hisResume?rid=${applyEnt.rid}&sid=${applyEnt.sid}')">查看</a>
                                </td>
                                <td style="border-bottom:1px #DCE2EE solid">
                                    <fmt:formatDate value="${applyEnt.adate}" pattern="MM-dd"></fmt:formatDate>
                                </td>
                                <td style="border-bottom:1px #DCE2EE solid">
                                    <c:if test="${applyEnt.astatus=='Y'}">
                                        已通过审核
                                    </c:if>
                                    <c:if test="${applyEnt.astatus=='P'}">
                                        已拒绝该申请
                                    </c:if>
                                    <c:if test="${applyEnt.astatus=='N'}">
                                        <a onclick="sub2()">同意</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="sub3()">拒绝</a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>

                </table>
            </div>


            <!--3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333-->

            <div id="name4" style="width:520px; height:12px; margin-top:15px; text-align:left; display:none; z-index:-10">
                <img src="../images/company-arrow.gif" />
                <span style="color:#FF7000; font-weight:bold; font-size:12px; margin-left:5px">找回密码</span>
            </div>

            <div id="table4" style="font-size:12px; height:500px; width:520px; margin-top:20px; display:none; z-index:-10">
                <table cellpadding="0" cellspacing="2" style="height:80px; width:350px;">
                    <tr>
                        <td bgcolor="#DCE2EE" style="width:150px">
                            请输入用户名
                        </td>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#DCE2EE" style="width:150px">
                            请输入注册邮箱
                        </td>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                            <input type="button" value="确定" style="border:1px solid #999; background-color:#CCC" />
                        </td>
                    </tr>
                </table>
            </div>

            <!--4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444-->
        </div>

        <!--右边结束-->
    </div>
    <!--中间结束-->
</div>

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
    .menuBar
    {
        background-color: #50A3A2;
        height:33px;
        width:1000px;
        margin:auto;
        font-size:12px;
        color:#FFF;
        line-height:28px;
    }

    .cenCom
    {
        height:631px;
        width:700px;
        margin:auto;
        /*border:1px dashed #00F;*/
    }

    .cen1Com
    {
        height:65px;
        width:698px;
        text-align:left;
        background-color:#E5E5E5;
    }

    .cen2Com
    {
        height:565px;
        width:698px;
        /*background-color:#F00;*/
    }

    .cen21Com
    {
        display:inline-block;
        float:left;
        width:172px;
        height:540px;

    }

    .cen211Com
    {
        width:172px;
        height:120px;
        font-size:12px;
        text-align:left;
    }

    .cen212Com
    {
        width:172px;
        height:130px;
        font-size:12px;
    }

    .cen213Com
    {
        width:172px;
        height:120px;
        font-size:12px;
    }

    .cen22Com
    {
        float:right;
        width:522px;
        height:540px;
        /*background-color:#00F;*/
    }

    .popupCom
    {
        position:relative;
        width:698px;
        height:25px;
        background-color:#FFF;
    }

    .p0Com
    {
        float:left;
        line-height:23px;
        font-size:12px;

        width:172px;
        margin-left:1px;
        margin-top:1px;
        margin-bottom:1px;
        background-color:#E5E5E5;
        text-align:center;
        color:#000;
    }

    .p1Com
    {
        float:left;
        line-height:23px;
        font-size:12px;
        height:24px;
        width:86px;
        margin-left:1px;
        margin-top:1px;
        /*	margin-bottom:1px;*/
        background-color:#E5E5E5;
        text-align:center;
        color:#000;
    }

    .p1Com:hover
    {
        color:#FFF;
        background-color:#900;
    }

    .aDivCom
    {
        text-decoration:none;
    }

    .aDivCom:hover
    {
        color:#FFF;
        background-color:#900;
        text-decoration:none;
    }

    .p11Com
    {
        line-height:23px;
        font-size:12px;
        height:23px;
        width:86px;
        margin-left:1px;
        margin-top:1px;
        background-color:#E5E5E5;
        text-align:center;
        color:#000;
    }

    .p11Com:hover
    {
        color:#FFF;
        background-color:#900;
    }

    .p12Com
    {
        line-height:23px;
        font-size:12px;
        height:23px;
        width:87px;
        margin-right:1px;
        margin-top:1px;
        background-color:#E5E5E5;
        text-align:center;
        color:#000;
    }
    .p12Com:hover
    {
        color:#FFF;
        background-color:#900;
    }


    .p13Com
    {
    }

    .p116Com
    {
    }

    .ab1Com
    {
        display:none;
        width:87px;
        height:192px;
        position:absolute;
        left:173px;
        top:25px;
        /*background-color:#9CF;*/
        background-color:#FFFFF7;
        z-index:9;
    }

    .ab2Com
    {
        display:none;
        width:87px;
        height:48px;
        position:absolute;
        left:260px;
        top:25px;
        background-color:#FFFFF7;
        z-index:9;
    }

    .ab3Com
    {
        display:none;
        width:87px;
        height:72px;
        position:absolute;
        left:347px;
        top:25px;
        background-color:#FFFFF7;
        z-index:9;
    }

    .ab6Com
    {
        display:none;
        width:88px;
        height:72px;
        position:absolute;
        left:611px;
        top:25px;
        background-color:#FFFFF7;
        z-index:9;
    }

    th
    {
        background-color:#DCE2EE;
        border-top:1px solid #98ACC4;
        height:20px;
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

<!-- InstanceBeginEditable name="EditRegion4" -->
<script type="text/javascript">
    function showcontent(index)
    {
        alert(index);
    }




    var c1=document.getElementById("cd1");
    var c2=document.getElementById("cd2");
    var c3=document.getElementById("cd3");
    var c4=document.getElementById("cd4");

    function showChilds(index)
    {
        switch (index)
        {
            case 1:
                c1.style.display="block";
                break;
            case 2:
                c2.style.display="block";
                break;
            case 3:
                c3.style.display="block";
                break;
            case 4:
                c4.style.display="block";
                break;
        }

        resetO(index);
    }




    function resetC()
    {
        c1.style.display="none";
        c2.style.display="none";
        c3.style.display="none";
        c4.style.display="none";
    }

    var myIndex=1;





    var name1=document.getElementById("name1");
    var table1=document.getElementById("table1");

    var name2=document.getElementById("name2");
    var table2=document.getElementById("table2");

    var name3=document.getElementById("name3");
    var table3=document.getElementById("table3");

    var name4=document.getElementById("name4");
    var table4=document.getElementById("table4");


    var cenCom=document.getElementById("cenCom");
    var cen2Com=document.getElementById("cen2Com");
    var cen21Com=document.getElementById("cen21Com");
    var cen22Com=document.getElementById("cen22Com");

    if(navigator.userAgent.indexOf("MSIE")==-1)
    {
        if(navigator.userAgent.indexOf("Chrome")==-1)
        {
            document.getElementById("flashpic").innerHTML="";//关闭flash播放，因为没有安装插件
        }
        //document.getElementById("flashpic").style.display="none";
        cenCom.style.height=602+"px";
        cen2Com.style.height=536+"px";
        cen21Com.style.height=516+"px";
        cen22Com.style.height=516+"px";




    }

    function showTable(index1)
    {

        name1.style.display="none";
        table1.style.display="none";
        name2.style.display="none";
        table2.style.display="none";
        name3.style.display="none";
        table3.style.display="none";
        name4.style.display="none";
        table4.style.display="none";




        switch (index1)
        {
            case 1:
                name1.style.display="block";
                table1.style.display="block";
                if(navigator.userAgent.indexOf("MSIE")!=-1)
                {
                    cenCom.style.height=631;
                    cen2Com.style.height=565;
                    cen21Com.style.height=540;
                    cen22Com.style.height=540;
                }
                else if(navigator.userAgent.indexOf("Chrome")!=-1||navigator.userAgent.indexOf("Mozilla")!=-1)
                {
                    cenCom.style.height=602+"px";
                    cen2Com.style.height=536+"px";
                    cen21Com.style.height=516+"px";
                    cen22Com.style.height=516+"px";
                }


                break;
            case 2:
                name2.style.display="block";
                table2.style.display="block";
                if(navigator.userAgent.indexOf("MSIE")!=-1)
                {
                    cenCom.style.height=551;
                    cen2Com.style.height=485;
                    cen21Com.style.height=460;
                    cen22Com.style.height=460;
                }
                else if(navigator.userAgent.indexOf("Chrome")!=-1||navigator.userAgent.indexOf("Mozilla")!=-1)
                {
                    cenCom.style.height=551+"px";
                    cen2Com.style.height=485+"px";
                    cen21Com.style.height=460+"px";
                    cen22Com.style.height=460+"px";
                }

                break;
            case 3:
                name3.style.display="block";
                table3.style.display="block";

                if(navigator.userAgent.indexOf("MSIE")!=-1)
                {
                    cenCom.style.height=551;
                    cen2Com.style.height=485;
                    cen21Com.style.height=460;
                    cen22Com.style.height=460;
                }
                else if(navigator.userAgent.indexOf("Chrome")!=-1||navigator.userAgent.indexOf("Mozilla")!=-1)
                {
                    cenCom.style.height=551+"px";
                    cen2Com.style.height=485+"px";
                    cen21Com.style.height=460+"px";
                    cen22Com.style.height=460+"px";
                }

                break;
            case 4:
                name4.style.display="block";
                table4.style.display="block";

                if(navigator.userAgent.indexOf("MSIE")!=-1)
                {
                    cenCom.style.height=551;
                    cen2Com.style.height=485;
                    cen21Com.style.height=460;
                    cen22Com.style.height=460;
                }
                else if(navigator.userAgent.indexOf("Chrome")!=-1||navigator.userAgent.indexOf("Mozilla")!=-1)
                {
                    cenCom.style.height=551+"px";
                    cen2Com.style.height=485+"px";
                    cen21Com.style.height=460+"px";
                    cen22Com.style.height=460+"px";
                }

                break;
        }
    }






</script>
<!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>


