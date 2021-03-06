<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

    <title>我的商城 | 后台管理</title>
    <jsp:include page="../includes/header.jsp"/>



</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="../includes/nav.jsp"/>
    <jsp:include page="../includes/menu.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                用户管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">用户列表</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <c:if test="${baseResult.status==200}">
                <div class="row">
                    <div class="box-body">
                        <div class="alert alert-${baseResult.status==200?"success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </div>
                </div>
            </c:if>

            <!-- Small boxes (Stat box) -->
            <!-- /.row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">用户列表</h3>

                            <div class="box-tools">
                                <div class="input-group input-group-sm" style="width: 150px;">
                                    <input type="text" name="table_search" class="form-control pull-right" placeholder="搜索">

                                    <div class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="padding-left: 25px">
                                <a  href="/user/form" type="button" class="btn btn-sm btn-default"><i class="fa fa-plus"></i> 新增</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-trash"></i> 删除</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-download"></i> 导入</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-upload"></i> 导出</a>



                            </div>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>姓名</th>
                                        <th>邮箱</th>
                                        <th>电话</th>
                                        <th>创建时间</th>
                                        <th>管理</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${tbUsers}" var="tbUser">
                                        <tr>
                                            <td>${tbUser.id}</td>
                                            <td>${tbUser.username}</td>
                                            <td>${tbUser.email}</td>
                                            <td>${tbUser.phone}</td>
                                            <td><fmt:formatDate value="${tbUser.created}" pattern="yyyy-MM-dd"/> </td>
                                            <td>
                                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-search"></i> 查看</a>
                                                <a type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i> 编辑</a>
                                                <a type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i> 删除</a>
                                            </td>
                                        </tr>

                                    </c:forEach>


                                </tbody>


                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <!-- /.row (main row) -->

        </section>
        <!-- /.content -->
    </div>
    <jsp:include page="../includes/copyright.jsp"/>


    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<jsp:include page="../includes/footer.jsp"/>

</body>
</html>
