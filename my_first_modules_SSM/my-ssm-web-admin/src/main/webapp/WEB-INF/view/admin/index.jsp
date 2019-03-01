<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台|系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/static/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/static/bower_components/Ionicons/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/static/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/static/dist/css/skins/_all-skins.min.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="/static/assets/plugins/iCheck/all.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style>
        #lhw-message{
            width: 100px;
            height: 50px;
            position: absolute;
            top: 0px;
            left: 46%;
            background-color: rgba(0,0,0,0.7);
            z-index: 999;
            text-align: center;
            line-height: 50px;
            font: "微软雅黑";
            color:whitesmoke;
            display: none;
        }
        #lhw-for-message{
            position: relative;
        }
    </style>
</head>
<body class="hold-transition skin-black-light sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- 标题商标 -->
        <a href="cover_inde.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">后台</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">后台管理</span>
        </a>
        <!-- 标题头: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- 滑动按钮-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- 用户信息: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">${user.username}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    ${user.username} - 管理员
                                    <small>2019-01-05</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">个人信息</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">退出登录</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${user.username}</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">功能菜单</li>
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i> <span>用户管理</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-key"></i> <span>关键词管理</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-book"></i> <span>文章管理</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" id="lhw-for-message">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>用户管理</h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">用户管理</li>
            </ol>
        </section>

        <div id="lhw-message">
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="row" >
                <section class="col-lg-6" style="padding-bottom: 6px;">
                    <button type="button" class="btn btn-default"><i class="fa fa-user-plus"></i> 新增</button>
                    <button id = "delmany"type="button" class="btn btn-default"><i class="fa fa-user-times"></i> 删除</button>
                    <button type="button" class="btn btn-default"><i class="fa fa-download"></i> 导入</button>
                    <button type="button" class="btn btn-default"><i class="fa fa-upload"></i> 导出</button>
                </section>
                <section class="col-lg-3"></section>
                <section class="col-lg-3">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control" id="keyword">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-flat" onclick="search()">搜索</button>
                        </span>
                    </div>
                </section>
            </div>
            <!-- Main row -->
            <div class="row">
                <section class="col-lg-12">

                    <div class="box">
                        <div class="box-body ">
                            <table id="example1" class="table table-bordered table-striped ">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="minimal checkbox-master"></th>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>邮箱</th>
                                    <th>用户权限</th>
                                    <th>管理</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>

                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

                </section>
            </div>
            <!-- /.row (main row) -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>版本</b> 1.0.0
        </div>
        <strong>著作权 &copy; 2019-2025 <a href="#">松柏梧桐工作室</a>.</strong>版权所有
    </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="/static/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/static/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/static/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/static/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="/static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/static/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/static/dist/js/adminlte.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="/static/assets/plugins/iCheck/icheck.min.js"></script>
<script>
    $("#delmany").click(function(){
        _idArray = new Array();
        _checkbox.each(function(){
            var delFlag = $(this).is(":checked");
            if (delFlag) {
                _idArray.push($(this).attr("id"));
            }
        });
        var json = {
            url:"/admin/delmany",
            type:"GET",
            dataType:"JSON",
            data:{
                "ids":_idArray.toString()9
            },
            success:function(e){
                oTable.ajax.reload();
                window.scrollTo(0,0);
                $("#lhw-message").fadeIn(500);
                $("#lhw-message").html(e.message);
                setTimeout(function(){
                    $("#lhw-message").fadeOut(500);
                },1000);
            }
        };
        $.ajax(json);
    })

    function delone(butdel){
        var json = {
            url:"/admin/delone",
            type:"GET",
            dataType:"JSON",
            data:{
                "uid":$(butdel).attr("id")
            },
            success:function(e){
                oTable.ajax.reload();
                window.scrollTo(0,0);
                $("#lhw-message").fadeIn(500);
                $("#lhw-message").html(e.message);
                setTimeout(function(){
                    $("#lhw-message").fadeOut(500);
                },1000);
            }
        };
        $.ajax(json);
    }

    function search(){
        var keyword = $("#keyword").val();
        var param = {
            "keyword":keyword
        };
        oTable.settings()[0].ajax.data = param;
        oTable.ajax.reload();
    }
    //***********************************iCheck与dateTable*********************************
    $(function () {
        function icheckfun(){
            //启动iCheck
            $("input[type='checkbox'].minimal,input[type='radio'].minimal").iCheck({
                checkboxClass:"icheckbox_minimal-blue",
                radioClass:"iradio_minimal-blue"
            });
            //全选全不选
            _checkboxMaster = $(".checkbox-master");
            _checkbox = $("tbody").find("[type='checkbox']").not("[disabled]");
            _checkboxMaster.iCheck("uncheck");
            _checkboxMaster.on("ifClicked", function(e){
                //监听点击事件
                //总状态被选中,点击后要取消所有勾选
                if(e.target.checked){
                    _checkbox.iCheck("uncheck");
                }
                //总状态没被选中,点击后要勾选所有
                else{
                    _checkbox.iCheck("check");
                }
            });
            //如果有没选中,则取消选中总状态
            _checkbox.on("ifUnchecked", function(){
                _checkboxMaster.iCheck("uncheck");
            });
        }
        oTable = $('#example1').DataTable({
            paging: true,//是否分页
            ordering: false,//是否开启排序
            info: true, //是否打开左下角提示信息
            lengthChange: false, //是否允许用户改变现实记录数
            searching: false,//是否允许开启本地搜索
            pagingType: "full_numbers",// 分页按钮显示样式
            processing: true,//是否显示处理状态(排序的时候，数据很多耗费时间长的话，也会显示这个)
            deferRender: true,//控制 DataTables 的延迟渲染，可以提高初始化的速度
            "drawCallback": function (settings) {
                icheckfun();
                $(".delone").click(function(){
                    delone(this);
                })
            },
            serverSide: true,//是否开启服务器分页
            ajax: {    //增加或修改通过 Ajax 提交到服务端的请求数剧
                url: "/admin/page",
            },
            columns: [
                {
                    "data": function (row, type, val, meta) {
                        return '<td><input id='+row.uid+' type="checkbox" class="minimal"></td>';
                    }
                },
                {"data": "uid"},
                {"data": "username"},
                {"data": "email"},
                {"data": "authority"},
                {
                    "data": function (row, type, val, meta) {
                        return '<button type="button" class="btn btn-primary btn-sm" style="margin-left: 30%"><i class="fa fa-search"></i> 查看</button>' +
                            '<button type="button" class="btn btn-info btn-sm" style="margin-left: 5px;"><i class="fa fa-edit"></i> 设为管理员</button>' +
                            '<button id='+row.uid+' type="button" class="btn btn-danger btn-sm delone"  style="margin-left: 5px;"><i class="fa fa-trash"></i> 删除</button>';
                    }
                }
            ],
            language: { //分页国际化
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项的结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            }
        })

    })
</script>
</body>
</html>
