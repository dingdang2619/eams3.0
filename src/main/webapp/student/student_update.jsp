<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>电子协会管理系统</title>
    <link rel="icon" href="../favicon.ico" type="../image/ico">
    <meta name="keywords" content="黑龙江八一农垦大学电子协会管理系统">
    <meta name="description" content="黑龙江八一农垦大学电子协会管理系统">
    <meta name="author" content="byau">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/materialdesignicons.min.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">
</head>
<script type="text/javascript">
</script>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="${pageContext.request.contextPath}/index.jsp"><img src="../images/logo-sidebar.png" title="byau" alt="byau"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active"><a href="${pageContext.request.contextPath}/index.jsp"><i class="mdi mdi-home"></i> 首页</a></li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-account"></i>协会成员信息管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${pageContext.request.contextPath}/student/findByPage">查询所有成员</a></li>
                                <li><a href="${pageContext.request.contextPath}/student/findAll">条件查询</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-account-star"></i>指导教师信息管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${pageContext.request.contextPath}/teacher/findByPage">指导教师列表</a></li>
                                <li><a href="${pageContext.request.contextPath}/teacher/findAll">筛选指导教师</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-guitar-acoustic"></i>活动信息管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${pageContext.request.contextPath}/activity/findDoing">正在进行中</a></li>
                                <li><a href="${pageContext.request.contextPath}/activity/findAll">所有活动列表</a></li>
                                <li><a href="${pageContext.request.contextPath}/activity/activity_add.jsp">新建活动</a></li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-memory"></i>元器件/材料信息管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${pageContext.request.contextPath}/device/findAll">元器件查询</a></li>
                                <li><a href="${pageContext.request.contextPath}/device/device_add.jsp">添加元器件类型</a></li>
                                <li class="nav-item nav-item-has-subnav">
                                    <a href="#">元器件操作</a>
                                    <ul class="nav nav-subnav">
                                        <li><a href="${pageContext.request.contextPath}/devicelog/subdevice">元器件使用/分发</a></li>
                                        <li><a href="${pageContext.request.contextPath}/devicelog/adddevice">元器件入库</a></li>
                                        <li><a href="${pageContext.request.contextPath}/devicelog/findAll">元器件操作日志</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-flag-checkered"></i> 比赛信息管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="${pageContext.request.contextPath}/competition/findAll">比赛信息</a></li>
                                <li><a href="${pageContext.request.contextPath}/enjoyCompetition/findAll">参赛信息</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="${pageContext.request.contextPath}/errorInfo.jsp"><i class="mdi mdi-comment-remove-outline"></i> 错误信息反馈</a>
                        </li>
                    </ul>
                </nav>

                <div class="sidebar-footer">
                    <p class="copyright">Copyright</p>
                </div>
            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 协会成员信息管理 - 修改成员信息 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <span> <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/logout"><i class="mdi mdi-logout-variant"></i> 退出登录</a></li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <form id="updateStudentForm" action="updateStudent" data-parsley-validate
                                      class="form-horizontal form-label-left" onsubmit="return false;">
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="updateStudentForm">学号
                                            <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="first-name" required="required"
                                                   class="form-control col-md-7 col-xs-12" name="sno"
                                                   value="${student.sno}" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="updateStudentForm">姓名
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="last-name" name="sname" value="${student.sname}"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="updateStudentForm">年级
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="syear" name="syear" value="${student.syear}"
                                                   class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="updateStudentForm"
                                               class="control-label col-md-3 col-sm-3 col-xs-12">班级</label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="sclass" class="form-control col-md-7 col-xs-12" type="text"
                                                   value="${student.sclass}" name="sclass">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="updateStudentForm"
                                               class="control-label col-md-3 col-sm-3 col-xs-12">性别
                                            <span class="required"></span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <div class="example-box" required="required">
                                                <label class="lyear-radio radio-inline radio-primary">
                                                    <input type="radio" name="ssex"
                                                           value="男" ${("男".equals(student.ssex))?"checked":""}><span>男</span>
                                                </label>
                                                <label class="lyear-radio radio-inline radio-primary">
                                                    <input type="radio" name="ssex"
                                                           value="女" ${("女".equals(student.ssex))?"checked":""}><span>女</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="updateStudentForm">qq账号</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="sqq" name="sqq"
                                                   class="date-picker form-control col-md-7 col-xs-12" type="text"
                                                   value="${student.sqq}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="updateStudentForm">手机号</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="stel" name="stel"
                                                   class="date-picker form-control col-md-7 col-xs-12" type="text"
                                                   value="${student.stel}">
                                        </div>
                                    </div>
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-18 col-md-offset-4">
                                            <button id="returnbtn" class="btn btn-primary" href="updateStudent" type="button">取消
                                            </button>
                                            <button id="submitbtn" class="btn btn-success"
                                                    data-placement="top" onclick="btnsubmit()">修改
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

</main>
<!--End 页面主要内容-->
</div>
</div>

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/perfect-scrollbar.min.js"></script>
<!--消息提示-->
<script src="../js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="../js/lightyear.js"></script>
<script type="text/javascript" src="../js/main.min.js"></script>
<script type="text/javascript">
    function btnsubmit() {
        var form = document.getElementById("updateStudentForm");
        if (form.sname.value.length < 2 || form.syear.value.length < 4 || form.sclass.value.length < 1 ||
            form.sname.value == null || form.syear.value == null || form.sclass.value == null) {
            lightyear.loading('show');
            setTimeout(function () {
                lightyear.loading('hide');
                lightyear.notify('请检查输入项！', 'danger', 100);
            }, 1e3)
        } else {
            lightyear.loading('show');
            // 假设ajax提交操作
            setTimeout(function () {
                lightyear.loading('hide');
                lightyear.notify('修改成功，即将跳转页面~', 'success', 800, 'mdi mdi-emoticon-happy');
                setTimeout(function () {
                    var form = document.getElementById('updateStudent');
                    //可在此修改input
                    setTimeout(function() {
                        //可在此修改input
                        form.submit();
                    },1300);
                }, 1300);
            }, 1e3)
            form.submit();
        }
    }
    $("#returnbtn").on('click',function () {
        window.location.href="updateStudent";
    })

</script>
</body>
</html>