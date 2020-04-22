<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/16
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=0">
    <title>企业注册</title>
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.idcode.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.idcode.js"></script>
    <style>
        .yzm-span{
            position: absolute;
            left: 252px;
            top: 5px;
        }
        #p1{
            margin-top: 50px;
            font-size: 50px;
        }
        #p2{
            margin-top: 50px;
            font-size: 30px;
        }
    </style>
</head>
<body>
<div class="css-wrapper">
    <div class="css-toprow">
        <div class="container">
        </div>
    </div>
    <div class="css-out-content">

        <div class="css-main-u">
            <div class="css-log-banner">
                <div class="container">
                    <div class="css-text">
                        <p id="p1">毕 业 生<br />就 业 系 统 </p>
                        <p id="p2">在 这 里<br />连 接<br />职 场 精 英</p>
                    </div>
                    <div class="css-conbox">
                        <p class="css-title">企业注册
                            <span class="data_msg2" id="data_msg2" style="font-size: 9pt;color: red;" ></span>
                        </p>
                        <div class="css-main">
                            <form action="${pageContext.request.contextPath}/enterprise/ent_register" method="post" id="ent_register">
                                <div class="css-input-group">
                                    <div class="css-input-group">
                                        <div class="css-tit">账号</div>
                                        <div class="css-group" id="loginName2">
                                            <input placeholder="请输入帐号" name="loginName" id="loginName" type="text">
                                        </div>
                                    </div>
                                    <div class="css-input-group">
                                        <div class="css-tit">密码</div>
                                        <div class="css-group" id="password2">
                                            <input placeholder="请输入密码" name="password" id="password" type="password">
                                        </div>
                                    </div>

                                    <div class="css-input-group">
                                        <div class="css-tit">企业名称</div>
                                        <div class="css-group"  id="ent_name2">
                                            <input placeholder="请输入企业名称" name="ent_name" id="ent_name" type="text">
                                        </div>
                                    </div>

                                    <div class="css-input-group">
                                        <div class="css-tit">联系方式</div>
                                        <div class="css-group" id="phone2">
                                            <input placeholder="请输入联系方式" name="phone" id="phone" type="text">
                                        </div>
                                    </div>

                                    <div class="css-input-group">
                                        <div class="css-tit">单位法人</div>
                                        <div class="css-group" id="manager2">
                                            <input placeholder="请输入单位法人" name="manager" id="manager" type="text">
                                        </div>
                                    </div>

                                    <div class="css-input-group">
                                        <div class="css-tit">电子邮箱</div>
                                        <div class="css-group" id="email2">
                                            <input placeholder="请输入电子邮箱" name="email" id="email" type="email">
                                        </div>
                                    </div>

                                    <div class="css-input-group">
                                        <div class="css-tit">企业地址</div>
                                        <div class="css-group"  id="address2">
                                            <input placeholder="请输入企业地址" name="address" id="address" type="text">
                                        </div>
                                    </div>
                                    <div class="css-btn">
                                        <button type="button" class="btn css-btn-block" id="btn2">立即注册</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="css-footer">
    <ul class="css-list-inline css-corplink">
    </ul>
    <p><a href="#"></a>冀ICP备12345678号 地址：秦皇岛市海港区438号燕山大学里仁学院 邮编：064400</p>
    <p>Copyright 2019 版权所有 河北省秦皇岛市燕山大学里仁学院 All Rights Reserved &nbsp;技术支持:<a href="#"
                                                                             target="_blank">郑晓鹏</a></p>
</div>


<script type="text/javascript">
    $(function(){
        $("#btn2").click(function(){
            var loginName=$("#loginName").val();
            var password=$("#password").val();
            var ent_name=$("#ent_name").val();
            var email=$("#email").val();
            var phone=$("#phone").val();
            var manager=$("#manager").val();
            var address=$("#address").val();


            if(loginName !=""&& password !=""&& ent_name!=""&&email!=""&&phone!=""&&manager!=""&&address!=""&&loginName !=null&& password !=null&& ent_name!=null&&email!=null&&phone!=null&&manager!=null&&address!=null){
                //alert("提交表单");
                $("#ent_register").submit();
                alert("注册成功")
            }else if(loginName ==""||loginName ==null){
                alert("用户名不能为空");
            }else if(password ==""||password ==null){
                alert("密码不能为空");
            }else if(ent_name ==""||ent_name ==null){
                alert("企业名称不能为空");
            }else if(email ==""||email ==null){
                alert("邮箱不能为空");
            }else if(phone ==""||phone ==null){
                alert("手机号不能为空");
            }else if(manager ==""||manager ==null){
                alert("单位法人不能为空");
            }else if(address ==""||address ==null){
                alert("企业地址不能为空");
            }else{
                alert("有错误");
            }
        });

        //当某一个组件失去焦点是，调用对应的校验方法
        //校验用户名是否存在
        $("#loginName").blur(function(){
            //获取控件数据
            var loginName = $(this).val();

            //ajax异步请求
            //{"userExsit":true,"msg":"可以注册"}
            $.get("${pageContext.request.contextPath}/enterprise/checkLoginName2",{loginName:loginName},function(data){
                if(data){
                    $("#data_msg2").html("用户名已存在");
                    $("#btn2").attr("disabled",true);
                    $("#loginName2").css("border","1px solid red");
                }else{
                    $("#data_msg2").html("");
                    $("#btn2").attr("disabled",false);
                }


            });
        });

        $("#loginName").blur(checkLoginName)
        $("#password").blur(checkPassword)
        $("#stu_name").blur(checkName)
        $("#phone").blur(checkTelephone)
        $("#email").blur(checkEmail)
        $("#manager").blur(checkManager)
        $("#address").blur(checkAddress)
    });


    //1.校验用户名
    //单词字符，长度3到10位
    function checkLoginName() {
        var loginName = $("#loginName").val();
        var loginName_regex = /^\w{3,10}$/;
        var flag = loginName_regex.test(loginName);

        if(flag){
            //用户名合法，加一个绿色边框
            $("#loginName2").css("border","1px solid green");
        }else{
            //用户名非法,加一个红色边框
            $("#loginName2").css("border","1px solid red");
        }

        return flag;
    }

    //2.校验密码
    //密码必须符合由数字,大写字母,小写字母,至少其中两种组成，且长度不小于8，
    // 同时第一位不能为数字。如果密码符合 ，返回”YES”,否则，返回”NO”
    function checkPassword() {
        var password = $("#password").val();
        var password_regex =/^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)\S{8,}$/;
        var flag = password_regex.test(password);

        if(flag){
            //密码合法，加一个绿色边框
            $("#password2").css("border","1px solid green");
        }else{
            //密码非法,加一个红色边框
            $("#password2").css("border","1px solid red");
        }

        return flag;
    }


    //3.公司名称
    //校验姓名必须为汉字
    function checkName() {
        var stu_name = $("#stu_name").val();
        var stu_name_regex =/^[\u2E80-\u9FFF]+$/;//Unicode编码中的汉字范围
        var flag = stu_name_regex.test(stu_name);

        if(flag){
            //姓名合法，加一个绿色边框
            $("#stu_name2").css("border","1px solid green");
        }else{
            //姓名非法,加一个红色边框
            $("#stu_name2").css("border","1px solid red");
        }

        return flag;
    }

    //4.手机号
    //正规手机号11位
    function checkTelephone() {
        var phone = $("#phone").val();
        var phone_regex =/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;
        var flag = phone_regex.test(phone);

        if(flag){
            //手机号合法，加一个绿色边框
            $("#phone2").css("border","1px solid green");
        }else{
            //手机号非法,加一个红色边框
            $("#phone2").css("border","1px solid red");
        }

        return flag;
    }

    //5.email：邮件格式
    // 邮箱的地址规则：数字、字母、下划线 + @ + 数字、英文 + . +英文（长度是2-4）
    function checkEmail() {
        var email = $("#email").val();
        var email_regex =/^\w+@[a-z0-9]+\.[a-z]{2,4}$/;
        var flag = email_regex.test(email);

        if(flag){
            //邮箱合法，加一个绿色边框
            $("#email2").css("border","1px solid green");
        }else{
            //邮箱非法,加一个红色边框
            $("#email2").css("border","1px solid red");
        }

        return flag;
    }
    //6.公司法人
    //校验姓名必须为汉字
    function checkManager() {
        var manager = $("#manager").val();
        var manager_regex =/^[\u2E80-\u9FFF]+$/;//Unicode编码中的汉字范围
        var flag = manager_regex.test(manager);

        if(flag){
            //姓名合法，加一个绿色边框
            $("#manager2").css("border","1px solid green");
        }else{
            //姓名非法,加一个红色边框
            $("#manager2").css("border","1px solid red");
        }

        return flag;
    }


    //7.校验企业地址
    //单词字符，长度3到30位
    function checkAddress() {
        var address = $("#address").val();
        var address_regex = /^[\u2E80-\u9FFF]+$/;
        var flag = address_regex.test(address);

        if(flag){
            //用户名合法，加一个绿色边框
            $("#address2").css("border","1px solid green");
        }else{
            //用户名非法,加一个红色边框
            $("#address2").css("border","1px solid red");
        }

        return flag;
    }
</script>
</body>
</html>
