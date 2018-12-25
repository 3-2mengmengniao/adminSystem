<!DOCTYPE HTML>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <title>学生组队</title>

    <link href="/styles/style.css"     		rel="stylesheet" type="text/css">
    <link href="/styles/framework.css" 		rel="stylesheet" type="text/css">
    <link href="/styles/owl.carousel.css" 	 rel="stylesheet" type="text/css">
    <link href="/styles/owl.theme.css" 		rel="stylesheet" type="text/css">
    <link href="/styles/swipebox.css"		 rel="stylesheet" type="text/css">
    <link href="/styles/colorbox.css"		 rel="stylesheet" type="text/css">
    <link href="/styles/bootstrap.css"		 rel="stylesheet" type="text/css">
    <link href="/layui/css/layui.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="/scripts/jquery.js"></script>
    <script type="text/javascript" src="/scripts/jqueryui.js"></script>
    <script type="text/javascript" src="/scripts/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/scripts/jquery.swipebox.js"></script>
    <script type="text/javascript" src="/scripts/colorbox.js"></script>
    <script type="text/javascript" src="/scripts/snap.js"></script>
    <script type="text/javascript" src="/scripts/login.js"></script>
    <script type="text/javascript" src="/scripts/custom.js"></script>
    <script type="text/javascript" src="/scripts/framework.js"></script>
    <script type="text/javascript" src="/scripts/framework.launcher.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="/layui/layui.js"></script>



</head>
<body>

<div id="preloader">
    <div id="status">
        <p class="center-text">
            Loading the content...
            <em>Loading depends on your connection speed!</em>
        </p>
    </div>
</div>

<div class="top-deco"></div>
<div class="content">
    <div class="header">
        <div class="navigation-back">
            <h1 class="navigation-back">OOAD</h1>
            <a href="/student/courseList" class="button-back"><img id="button-back-image-2" src="/images/icons/展开.png"></a>
        </div>
        <a href="#" class="sub-go-menu"></a>
        <a href="#" class="sub-go-back"></a>
    </div>
    <div class="decoration"></div>

    <div class="navigation" style="right:0%;margin-top:-5px;">
        <div class="corner-deco"></div>
        <div class="navigation-wrapper">
            <div class="navigation-item">
                <a href="/student/index" class="home-icon">个人页</a>
                <em class="active-menu"></em>
            </div>
            <div class="navigation-item">
                <a href="/student/seminars" class="home-icon">讨论课</a>
                <em class="active-menu"></em>
            </div>
        </div>
    </div>
</div>


<div class="content">
    <div class="distance3"></div>
    <div class="container no-bottom">
        <form class="layui-form contactForm"  id="contactForm">
            <div class="formFieldWrap">
                <label class="field-title contactNameField" for="contactNameField">小组名称：<span>(required)</span></label>
                <input type="text" name="courseName" value="" class="contactField requiredField" id="contactNameField"/>
            </div>
            <div class="formValidationError" id="contactNameFieldError">
                <div class="static-notification-red tap-dismiss-notification">
                    <p class="uppercase">请填写小组名!</p>
                </div>
            </div>
            <div class="distance3"></div>
            <div >
                <div class="distance3"></div>
                <div class="layui-form-item">
                    <div >
                        <div class="distance3"></div>
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="font-weight:bold;font-size:16px;">选择班级:&nbsp;&nbsp;<span style="float: right;opacity: 0.2;">(required)</span></label>
                            <div class="layui-input-block">
                                <select name="presentationPercentage" lay-filter="aihao">
                                    <option >2016-(1)</option>
                                    <option >2016-(2)</option>
                                    <option selected>2016-(3)</option>
                                </select>
                            </div>
                        </div>
                </div>
                <div class="distance4"></div>
            </div>
            <div class="decoration"></div>
            <label class="field-title contactMessageTextarea" for="contactMessageTextarea">添加成员：</label>
            <div >
                <div class="distance3"></div>
                <table id="member" class="layui-hide" >
                    <tbody >
                    <tr class="item">
                        <td>
                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                        </td>
                        <td id="id" class="number">24320122202844</td>
                        <td id="username" class="name">小张</td>
                    </tr>
                    <tr class="item">
                        <td>
                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                        </td>
                        <td id="id" class="number">24320122202844</td>
                        <td id="username" class="name">小张</td>
                    </tr>
                    <tr class="item">
                        <td>
                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
                        </td>
                        <td id="id" class="number">24320122202844</td>
                        <td id="username" class="name">小张</td>
                    </tr>
                    </tbody>
                </table>
                <div class="distance4"></div>
                <p class="center center-text"><input type="submit" class="button-big button-dark" id="contactSubmitButton" value="创建小组" data-formId="contactForm"/></p>
        </form>
        <div class="distance2"></div>
        <!--
    <div class="decoration"></div>
    <div class="footer">
        <div class="clear"></div>
        <p class="copyright">
            Copyright @2018 developed by Group 3-2.<br>
            All Rights Reserved
        </p>
    </div>
    -->
    </div>
</div>

<script>
    layui.use(['element', 'layer'], function(){
        var element = layui.element();
        var layer = layui.layer;

        //监听折叠
        element.on('collapse(test)', function(data){
            layer.msg('展开状态：'+ data.show);
        });
    });
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#member'
            // ,url:'/demo/table/user/'
            ,cols: [[
                {type:'checkbox'}
                ,{field:'id', width:100, title: 'ID', sort: true}
                ,{field:'username', width:80, title: '用户名'}
            ]]
            ,page: true
        });
    });
</script>
<script>
    layui.use('form', function(){
        var form = layui.form();

        //各种基于事件的操作，下面会有进一步介绍
    });
</script>

<style>
    @media screen and (max-width:768px){
        .margin3{
            margin-left:35%;
        }
    }
    @media screen and (min-width:768px){
        .margin3{
            margin-left:44%;
        }
    }
</style>
</body>
</html>