<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <i class="fa fa-edit"></i> 毕业生简历信息</a>
                </li>
            </ul>

        </div>

    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        毕业生信息管理
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            毕业生简历信息
                            <br>
                            <br>
                            <div class="moda">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">简历信息</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" id="stu_form">
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10">${sessionScope.student.stu_name}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">性别</label>
                                        <div class="col-sm-10">${sessionScope.resume.sex}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">生日</label>
                                        <div class="col-sm-10">${sessionScope.resume.birthday}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">学院专业</label>
                                        <div class="col-sm-10">${sessionScope.resume.college}&nbsp;&nbsp;${sessionScope.resume.major}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">电话</label>
                                        <div class="col-sm-10">${sessionScope.student.phone}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">籍贯</label>
                                        <div class="col-sm-10">${sessionScope.resume.s_native}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">身份证号</label>
                                        <div class="col-sm-10">${sessionScope.resume.idcard}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">期望薪资</label>
                                        <div class="col-sm-10">${sessionScope.resume.salary}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">实习经验</label>
                                        <div class="col-sm-10">${sessionScope.resume.internship}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">教育经历</label>
                                        <div class="col-sm-10">${sessionScope.resume.education}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">培训经历</label>
                                        <div class="col-sm-10">${sessionScope.resume.train}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">求职意向</label>
                                        <div class="col-sm-10">${sessionScope.resume.job_intention}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">附加信息</label>
                                        <div class="col-sm-10">${sessionScope.resume.additional}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">IT技能</label>
                                        <div class="col-sm-10">${sessionScope.resume.it}</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">项目经验</label>
                                        <div class="col-sm-10">${sessionScope.resume.experience}</div>
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
