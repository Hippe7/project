<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>毕业生就业系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom-styles.css"  />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/graduate-apply.css">
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
    <script src="../js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../js/jquery.metisMenu.js"></script>
    <!-- DATA TABLE SCRIPTS -->
    <script src="../js/dataTables/jquery.dataTables.js"></script>
    <script src="../js/dataTables/dataTables.bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/morris/morris-0.4.3.min.css">

    <script type="text/javascript">
        function updateJstu(jid,status) {
            $.get("${pageContext.request.contextPath}/admin/updateJstu",{jid:jid,status:status},function (data) {
                if(data){
                    alert("审批成功")
                    window.location.reload();
                }else {
                    alert("审批失败")
                }
            })
        }

        function seeJob(jid) {
            $.get("${pageContext.request.contextPath}/admin/seeJob",{jid:jid},function (data) {
                if(data){
                    window.open("${pageContext.request.contextPath}/user/jobDetails")
                }else {
                    alert("无详细信息")
                }
            })
        }

        function deleteJob(jid) {
            if(confirm('确实要删除该职位吗?')){
                $.get("${pageContext.request.contextPath}/admin/deleteJob",{jid:jid},function (data) {
                    if(data){
                        alert("删除成功")
                        window.location.reload();
                    }else {
                        alert("删除失败")
                    }
                })
            }
        }
    </script>

</head>
<body>
<div id="wrapper">
    <!--最上边的导航-->
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <!--左边标志-->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="stuInfo.action">管理员端</a>
        </div>
        <!--右边的导航-->
        <ul class="nav navbar-top-links navbar-right">

            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> 用户<i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="${pageContext.request.contextPath}/admin/stu.action"><i class="fa fa-user fa-fw"></i> 毕业生信息管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/entLoad"><i class="fa fa-user fa-fw"></i> 企业信息管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/jobLoad"><i class="fa fa-user fa-fw"></i> 企业职位管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/backup.action"><i class="fa fa-gear fa-fw"></i> 数据备份</a></li>
                    <li class="divider"></li>
                    <li><a href="${pageContext.request.contextPath}/admin/out.action"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--左边导航栏-->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/stu.action">
                        <i class="fa fa-edit"></i> 毕业生信息管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/entLoad"><i class="fa fa-edit"></i>企业信息管理</a>
                </li>
                <li>
                    <a  class="active-menu" href="${pageContext.request.contextPath}/admin/jobLoad"><i class="fa fa-edit"></i>企业职位管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/admin/backup.action"><i class="fa fa-bar-chart-o"></i>数据备份</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        企业职位管理
                    </h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="name">毕业生就业系统职位信息</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="name" id="name" ></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            职位信息列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>职位名称</th>
                                        <th>薪资</th>
                                        <th>工作地点</th>
                                        <th>公司名称</th>
                                        <th>发布日期</th>
                                        <th>审核状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.adminJob}" var="row" varStatus="status">
                                        <tr>
                                            <td>${row.jid}</td>
                                            <td>${row.jname}</td>
                                            <td>${row.salary}</td>
                                            <td>${row.job_address}</td>
                                            <td>${row.ename}</td>
                                            <td><fmt:formatDate value="${row.jdate}" pattern="MM-dd"></fmt:formatDate></td>
                                            <td>
                                                <c:if test="${row.jstatus=='Y'}">
                                                    <b style="color: green" >已通过</b>
                                                </c:if>
                                                <c:if test="${row.jstatus=='P'}">
                                                    <b style="color: red">已拒绝</b>
                                                </c:if>
                                                <c:if test="${row.jstatus=='N'}">
                                                    <input type="button" class="btn btn-primary btn-xs" onclick="updateJstu('${row.jid}','Y')" value="通过"/>
                                                    <input type="button" class="btn btn-primary btn-xs" onclick="updateJstu('${row.jid}','P')" value="拒绝"/>
                                                </c:if>
                                            </td>
                                            <td>
                                                <input type="button" class="btn btn-primary btn-xs" onclick="seeJob('${row.jid}')" value="查看详情"/>
                                                <input type="button" class="btn btn-primary btn-xs" onclick="deleteJob('${row.jid}')" value="删除"/>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <footer><p>Copyright &copy; 2020.Company LiRen All rights reserved.</footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</div>

<!-- Custom Js -->
<%--<script src="../js/custom-scripts.js"></script>--%>
<!-- Morris Chart Js -->
<%--<script src="../js/morris/raphael-2.1.0.min.js"></script>--%>
<%--<script src="../js/morris/morris.js"></script>--%>

<script type="text/javascript">
</script>

</body>
</html>
