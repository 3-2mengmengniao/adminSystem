<!DOCTYPE HTML>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

     <script type="text/javascript" src="/scripts/jquery.js"></script>
    <script type="text/javascript" src="/scripts/jqueryui.js"></script>
    <script type="text/javascript" src="/scripts/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/scripts/jquery.swipebox.js"></script>
    <script type="text/javascript" src="/scripts/colorbox.js"></script>
    <script type="text/javascript" src="/scripts/snap.js"></script>
    <script type="text/javascript" src="/scripts/tea_setting.js"></script>
    <script type="text/javascript" src="/scripts/custom.js"></script>
    <script type="text/javascript" src="/scripts/framework.js"></script>
    <script type="text/javascript" src="/scripts/framework.launcher.js"></script>
    <script type="text/javascript" src="/scripts/bootstrap-3.1.1.min.js"></script>



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
    <div class="navigation-back">
        <h1 class="navigation-back">修改邮箱</h1>
        <a href="/teacher/setting" class="button-back"><img id="button-back-image" src="/images/icons/展开.png"></a>
    </div>
    <div class="decoration"></div>
</div>

<div class="distance4"></div>
<div class="content">
    <div class="formSuccessMessageWrap" id="formSuccessMessageWrap">
        <div class="static-notification-green tap-dismiss-notification">
            <p style="color:#d44950;">验证码有误，请重新输入！</p>
        </div>
    </div>
    <form action="/teacher/modifyEmail" method="post" class="contactForm" id="contactForm">
        <fieldset>

            <div class="formFieldWrap">
                <label class="field-title contactNameField" for="contactNameField">填写邮箱:</label>
                <input type="text" name="email" value="" class="contactField requiredField requiredEmailField" id="contactNameField"  placeholder="邮箱格式如：user@hosst.domainnames"/>
            </div>
            <div class="formValidationError" id="contactNameFieldError">
                <div class="static-notification-red tap-dismiss-notification">
                    <p class="uppercase">请填写新邮箱!</p>
                </div>
            </div>
            <div class="formValidationError" id="contactNameFieldError2">
                <div class="static-notification-red tap-dismiss-notification">
                    <p class="uppercase">请填写正确的邮箱格式！</p>
                </div>
            </div>
            <div class="formTextareaWrap">
                <label class="field-title contactEmailField" for="contactEmailField">验证码:</label>
                <button id="vali_button" type="button">获取验证码</button>
                <input name="validation" class="contactField requiredField" id="contactEmailField"  placeholder="请输入验证码"/>
            </div>
            <div class="formValidationError" id="contactEmailFieldError">
                <div class="static-notification-red tap-dismiss-notification">
                    <p class="uppercase">请填写验证码!</p>
                </div>
            </div>
            <div class="distance2"></div>
            <p class="center center-text"><input type="submit" class="buttonWrap button button-dark button-big contactSubmitButton" id="contactSubmitButton" value="确认提交" data-formId="contactForm"/></p>
            <div class="distance3"></div>
        </fieldset>
    </form>
</div>

<!-- <div id="page_container"> -->
<!-- <div class="input_block"> -->
<!-- <input type="password" name="psw1" id="psw1" placeholder="输入密码" required="required"> -->
<!-- </div> -->
<!-- <div class="input_block"> -->
<!-- <input type="password" name="psw2" id="psw2" placeholder="确认密码" required="required"> -->
<!-- </div> -->
<!-- <p class="notes">发送验证码到邮箱：qiulaoshi@xmu.edu.cn</p> -->
<!-- <div class="input_block"> -->
<!-- <button id="vali_button">获取验证码</button> -->
<!-- <input type="verification" name="verification" id="verification" placeholder="验证码" required="required"> -->
<!-- </div> -->
<!-- <button class="login-button" onclick="validate()">确认提交</button> -->
<!-- </div> -->

<!--
<div class="page_footer">
    <div class="decoration"></div>
    <div class="footer">
        <div class="clear"></div>
        <p class="copyright">
            Copyright @2018 developed by Group 3-2.<br>
            All Rights Reserved
        </p>
    </div>
    <div class="bottom-deco"></div>
</div>
 -->

</body>
</html>