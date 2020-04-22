<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        function see(id) {
            $.get("${pageContext.request.contextPath}/admin/stuInfoSee.action",{id:id},
                function(data) {
                    if (data){
                        window.open("${pageContext.request.contextPath}/user/stuResume")
                    }else {
                        alert("简历为空")
                        window.location.reload();
                    }
                })
        }

        function edit(id) {
            $.post("${pageContext.request.contextPath}/admin/stu",{id:id})
            window.open("${pageContext.request.contextPath}/user/stu")
        }




        function deleteStu(id) {
            if(confirm('确实要删除该客户吗?')) {
                $.post("${pageContext.request.contextPath}/admin/delete.action",{id:id},
                    function(data){
                        if(data ==="OK"){
                            alert("删除成功！");
                            window.location.reload();
                        }else{
                            alert("删除失败！");
                            window.location.reload();
                        }
                    });
            }
        }

        function findStu() {
            var key=$("#name").val();
            $.get("${pageContext.request.contextPath}/student/findStu",{key:key},function (data) {
                if(data==="YES"){
                    window.open("${pageContext.request.contextPath}/user/load")
                }else if(data==="NO") {
                    alert("查无此人")
                    window.location.reload();
                }else {
                    window.location.reload();
                }
            })
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
                    <a class="active-menu" href="${pageContext.request.contextPath}/admin/stu.action">
                        <i class="fa fa-edit"></i> 毕业生信息管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/admin/entLoad"><i class="fa fa-edit"></i>企业信息管理</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/admin/jobLoad"><i class="fa fa-edit"></i>企业职位管理</a>
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
                        毕业生信息管理
                    </h1>
                </div>
            </div>
            <!-- /.row -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="name">姓名</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" style="width: 150px;height: 35px" id="name" name="name" /><span>&nbsp;&nbsp;</span><button type="button" onclick="findStu()" class="btn btn-primary">查询</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            毕业生信息列表
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>用户名</th>
                                        <th>密码</th>
                                        <th>姓名</th>
                                        <th>电话</th>
                                        <th>邮箱</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.studentList}" var="row" varStatus="status">
                                        <tr>
                                            <td>${row.id}</td>
                                            <td>${row.loginName}</td>
                                            <td>${row.password}</td>
                                            <td>${row.stu_name}</td>
                                            <td>${row.phone}</td>
                                            <td>${row.email}</td>
                                            <td>
                                                <input type="button" class="btn btn-primary btn-xs"  onclick="see('${row.id}')" value="简历信息"/>
                                                <input type="button" class="btn btn-primary btn-xs" onclick="edit('${row.id}')" value="修改"/>
                                                <input type="button" class="btn btn-primary btn-xs" onclick="deleteStu('${row.id}')" value="删除"/>
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
