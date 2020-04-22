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
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
    <script type="text/javascript">
        function updateCustomer() {
            var id =document.getElementById("id").innerText

            var loginName=$("#loginName").val();
            var password=$("#password").val();
            var stu_name=$("#stu_name").val();
            var phone=$("#phone").val();
            var email=$("#email").val();
            $.get("${pageContext.request.contextPath}/admin/updateStudent",
                {id:id,loginName:loginName,password:password,stu_name:stu_name,phone:phone,email:email},function (data) {
                    if (data==="OK"){
                        alert("修改成功")
                        window.location.reload();
                    }else {
                        alert("修改失败")
                        window.location.reload();
                    }

                }
            )
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

        </ul>
    </nav>
    <!--左边导航栏-->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a class="active-menu" href="#">
                        <i class="fa fa-edit"></i> 毕业生个人信息</a>
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
                        <!-- 查看信息模态框 -->
                        <div class="content">
                            <div class="header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="modal-title" id="myModalLabel">个人信息</h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal" id="stu_form2" href="" method="post">
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">ID</label>
                                        <div class="col-sm-10" id="id">${sessionScope.student.id}</div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">账号</label>
                                        <div class="col-sm-10"><input type="text" value="${sessionScope.student.loginName}" class="form-control" id="loginName" name="loginName" /></div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">密码</label>
                                        <div class="col-sm-10"><input type="text" value="${sessionScope.student.password}" class="form-control" id="password" name="password" /></div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-10"><input type="text" value="${sessionScope.student.stu_name}" class="form-control" id="stu_name" name="stu_name" /></div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">电话</label>
                                        <div class="col-sm-10"><input type="text" value="${sessionScope.student.phone}" class="form-control" id="phone" name="phone" /></div>
                                    </div>
                                    <div class="form-group">
                                        <label  class="col-sm-2 control-label">邮箱</label>
                                        <div class="col-sm-10"><input type="text" value="${sessionScope.student.email}" class="form-control" id="email" name="email" /></div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" id="save" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
                            </div>
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
