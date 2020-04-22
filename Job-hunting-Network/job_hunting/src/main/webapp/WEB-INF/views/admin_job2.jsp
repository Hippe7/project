<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>毕业生就业系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/morris/morris-0.4.3.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom-styles.css"  />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/graduate-apply.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.css">

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

        </ul>
    </nav>
    <!--左边导航栏-->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a class="active-menu" href="#">
                        <i class="fa fa-edit"></i> 职位详细信息</a>
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

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            职位详细信息
                            <br>
                            <br>
                            <div class="moda">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">职位信息</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" id="stu_form">
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">职位名称</label>
                                        <div class="col-sm-10">${sessionScope.job.job_name}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">薪资</label>
                                        <div class="col-sm-10">${sessionScope.job.salary}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">专业要求</label>
                                        <div class="col-sm-10">${sessionScope.job.major}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">面向学院</label>
                                        <div class="col-sm-10">${sessionScope.job.college}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">学历要求</label>
                                        <div class="col-sm-10">${sessionScope.job.education}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">工作地址</label>
                                        <div class="col-sm-10">${sessionScope.job.job_address}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">发布时间</label>
                                        <div class="col-sm-10"><fmt:formatDate value="${sessionScope.job.date}" pattern="MM-dd"></fmt:formatDate></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">职位要求</label>
                                        <div class="col-sm-10">${sessionScope.job.requirement}</div>
                                    </div>

                                </form>
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


</body>
</html>
