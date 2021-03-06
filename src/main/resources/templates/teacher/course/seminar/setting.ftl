<!DOCTYPE HTML>
<head xmlns="http://www.w3.org/1999/html">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <title></title>

    <link href="/styles/style.css"     		rel="stylesheet" type="text/css">
    <link href="/styles/framework.css" 		rel="stylesheet" type="text/css">
    <link href="/styles/owl.carousel.css" 	 rel="stylesheet" type="text/css">
    <link href="/styles/owl.theme.css" 		rel="stylesheet" type="text/css">
    <link href="/styles/swipebox.css"		 rel="stylesheet" type="text/css">
    <link href="/styles/colorbox.css"		 rel="stylesheet" type="text/css">
    <link href="/styles/bootstrap.css"		 rel="stylesheet" type="text/css">
    <link href="/styles/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/styles/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>
    <link href="/layui/css/layui.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="/scripts/jquery.js"></script>
    <script type="text/javascript" src="/scripts/jqueryui.js"></script>
    <script type="text/javascript" src="/scripts/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/scripts/jquery.swipebox.js"></script>
    <script type="text/javascript" src="/scripts/colorbox.js"></script>
    <script type="text/javascript" src="/scripts/snap.js"></script>
    <script type="text/javascript" src="/scripts/creat-seminar.js"></script>
    <script type="text/javascript" src="/scripts/custom.js"></script>
    <script type="text/javascript" src="/scripts/framework.js"></script>
    <script type="text/javascript" src="/scripts/framework.launcher.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="/scripts/jquery-1.8.3.min.js" ></script>
    <script type="text/javascript" src="/scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap-datetimepicker.fr.js"></script>
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
<div class="navigation-back">
    <h1 class="navigation-back">修改讨论课</h1>
    <a href="/teacher/course/seminarList?courseId=${course.id}" class="button-close">x</a>
</div>
<div class="distace3"></div>
<div class="decoration"></div>

<div class="content">
    <div class="distance3"></div>
    <div class="container no-bottom">
        <form class="layui-form contactForm" action="/teacher/course/seminar/setting?seminarId=${seminar.id}&courseId=${course.id}" method="post" id="contactForm" name="${course.id}">
            <div class="formSuccessMessageWrap" id="formSuccessMessageWrap">
                <div class="static-notification-green tap-dismiss-notification">
                    <p style="color:#c9302c;">修改失败！</p>
                </div>
            </div>
            <div class="formFieldWrap">
                <label class="field-title contactNameField" for="contactNameField">讨论课主题：<span>(required)</span></label>
                <p>${seminar.seminarName}</p>
            </div>
            <div class="formTextareaWrap">
                <label class="field-title contactNameField" for="contactMessageTextarea">讨论课内容：<span>(required)</span></label>
                <p>${seminar.introduction}</p>
            </div>
            <div class="distance3"></div>
            <div class="decoration"></div>
            <div class="distance3"></div>
            <div class="layui-form-item">
                <label class="layui-form-label">讨论课次序号：</label>
                <div class="layui-input-block" style="width: 100px;margin-left: auto;float: none;">
                    <input  name="seminarSerial" autocomplete="off" class="layui-input requiredField" id="order">
                </div>
            </div>
            <div class="formValidationError" id="orderError">
                <div class="static-notification-red tap-dismiss-notification">
                    <p class="uppercase">请填写正确的讨论课次序号!</p>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">讨论课可见：</label>
                <div class="layui-input-block" style="float: right;">
                    <input type="checkbox" name="seminarVisible" title="可见" checked>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">所属round：</label>
                <div class="layui-input-block">
                    <select name="roundSerial" lay-filter="aihao">
                        <option value="-1" selected>无</option>
                        <#list course.roundList as round>
                        <option value="${round.roundSerial}">${round.roundSerial}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="distance3"></div>
            <div class="decoration"></div>
            <div class="distance3"></div>
            <div>
                <div class="distance3"></div>
                <div class="layui-form-item">
                    <label class="layui-form-label">报名小组数</label>
                    <div class="layui-input-block">
                        <select name="maxGroup" lay-filter="aihao">
                            <option value="4">4</option>
                            <option value="5" selected>5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item margin2">
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <input name="registrationStartTime" type="text" class="layui-input requiredField" id="test5" placeholder="yyyy-MM-dd HH:mm:ss">
                        </div>
                    </div>
                    <label class="layui-form-label moveUp">展示报名开始时间</label>
                </div>
                <div class="distance6"></div>
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <input name="registrationEndTime" type="text" class="layui-input requiredField" id="test5" placeholder="yyyy-MM-dd HH:mm:ss">
                        </div>
                    </div>
                    <label class="layui-form-label moveUp">展示报名截止时间</label>
                    <div class="formValidationError" id="test5Error">
                        <div class="static-notification-red tap-dismiss-notification">
                            <p class="uppercase">请填写展示报名相关时间</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="decoration"></div>
            <div class="distance4"></div>
            <p class="center center-text"><input type="button" class="button-big button-red" id="contactSubmitButton" value="删除讨论课" data-formId="contactForm"/></p>
            <div class="distance3"></div>
            <p class="center center-text"><input type="button" class="button-big button-dark" id="contactSubmitButton" value="修改讨论课" data-formId="contactForm"/></p>
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
<!--<div class="bottom-deco"></div>-->
<script src="/layui/layui.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form();

        //各种基于事件的操作，下面会有进一步介绍
    });
</script>

<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //日期时间选择器
        laydate.render({
            elem: '#test5'
            ,type: 'datetime'
        });


        //自定义重要日
        laydate.render({
            elem: '#test18'
            ,mark: {
                '0-10-14': '生日'
                ,'0-12-31': '跨年' //每年的日期
                ,'0-0-10': '工资' //每月某天
                ,'0-0-15': '月中'
                ,'2017-8-15': '' //如果为空字符，则默认显示数字+徽章
                ,'2099-10-14': '呵呵'
            }
            ,done: function(value, date){
                if(date.year === 2017 && date.month === 8 && date.date === 15){ //点击2017年8月15日，弹出提示语
                    layer.msg('这一天是：中国人民抗日战争胜利72周年');
                }
            }
        });

        //限定可选日期
        var ins22 = laydate.render({
            elem: '#test-limit1'
            ,min: '2016-10-14'
            ,max: '2080-10-14'
            ,ready: function(){
                ins22.hint('日期可选值设定在 <br> 2016-10-14 到 2080-10-14');
            }
        });

        //前后若干天可选，这里以7天为例
        laydate.render({
            elem: '#test-limit2'
            ,min: -7
            ,max: 7
        });

        //限定可选时间
        laydate.render({
            elem: '#test-limit3'
            ,type: 'time'
            ,min: '09:30:00'
            ,max: '17:30:00'
            ,btns: ['clear', 'confirm']
        });

        //同时绑定多个
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });

        //初始赋值
        laydate.render({
            elem: '#test19'
            ,value: '1989-10-14'
            ,isInitValue: true
        });

        //选中后的回调
        laydate.render({
            elem: '#test20'
            ,done: function(value, date){
                layer.alert('你选择的日期是：' + value + '<br>获得的对象是' + JSON.stringify(date));
            }
        });

        //日期切换的回调
        laydate.render({
            elem: '#test21'
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value + '<br><br>获得的对象是' + JSON.stringify(date));
            }
        });

        //墨绿主题
        laydate.render({
            elem: '#test29'
            ,theme: 'molv'
        });

    });
</script>

</body>
</html>