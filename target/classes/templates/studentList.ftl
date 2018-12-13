<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>

    <div class="x-body">
      <xblock>
        <form name="filterForm" id="filterForm" class="layui-form" style="display: inline-block" onkeydown="if(event.keyCode===13){return false;}">
          <div class="layui-form-item" style="margin-bottom: 0">
            <div class="layui-inline">
              <input name="username" id="username" type="text" placeholder="请输入学工号/姓名" autocomplete="off" class="layui-input" style="width: 150px;display: inline-block">
            </div>
            <div class="layui-inline">
              <button name="searchBtn" id="searchBtn" type="button" class="layui-btn"><i class="layui-icon">&#xe615;</i></button>
            </div>
          </div>
        </form>
        <!--<a class="layui-btn layui-btn-small" style="line-height:30px;padding:3px 18px;float:right;margin-left: 10px"
           href="javascript:location.replace(location.href);">
          <i class="iconfont" style="line-height:30px">&#xe6aa;</i>
        </a>
        -->
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>学工号</th>
            <th>姓名</th>
            <th>电子邮箱</th>
           <!-- <th>状态</th>-->
            <th>操作</th>
        </thead>
        <tbody>
          <tr class="item">
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td class="number">24320172202899</td>
            <td class="name">小明</td>
            <td class="email">123432642@qq.com</td>
            <!--<td class="td-status">
              <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>-->
            <td class="td-manage">

              <a title="编辑"  onclick="x_admin_show('编辑','/editStudent','460','350')" href="javascript:;" style="margin-right:5px;font-size:25px;">
                <i class="layui-icon">&#xe642;</i>
              </a>
              <a title="重置密码" onclick="member_renew(this,'要重置的id')" href="javascript:;"  style="margin-right:5px;font-size:15px;">
                <i class="iconfont" style="font-size:13px;">&#xe6aa;</i>
              </a>
              <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;"  style="margin-right:5px;font-size:25px;">
                <i class="layui-icon" >&#xe640;</i>
              </a>
            </td>
          </tr>
          <tr class="item">
            <td>
              <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td class="number">24320172202898</td>
            <td class="name">小张</td>
            <td class="email">123432642@qq.com</td>
            <!--<td class="td-status">
              <span class="layui-btn layui-btn-normal layui-btn-mini">已启用</span></td>-->
            <td class="td-manage">

              <a title="编辑"  onclick="x_admin_show('编辑','/editStudent','460','350')" href="javascript:;" style="margin-right:5px;font-size:25px;">
                <i class="layui-icon">&#xe642;</i>
              </a>
              <a title="重置密码" onclick="member_renew(this,'要重置的id')" href="javascript:;"  style="margin-right:5px;font-size:15px;">
                <i class="iconfont" style="font-size:13px;">&#xe6aa;</i>
              </a>
              <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;"  style="margin-right:5px;font-size:25px;">
                <i class="layui-icon" >&#xe640;</i>
              </a>
            </td>
          </tr>
        </tbody>
      </table>
      <div class="page" style="margin-top:80px;">
        <div>
          <a class="prev" href="">&lt;&lt;</a>
          <a class="num" href="">1</a>
          <span class="current">2</span>
          <a class="num" href="">3</a>
          <a class="num" href="">489</a>
          <a class="next" href="">&gt;&gt;</a>
        </div>
      </div>

    </div>
    <script>
        $(function () {
            $("#searchBtn").bind("click",function () {
                //alert($("#username").val())
                $(".item").hide()
                $("td:contains("+$("#username").val()+")").parents('.item').fadeIn()
            })

        });

      layui.use('laydate', function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

      function member_renew(obj,id){
          layer.confirm('确认要重置密码吗？',function(index){

              if($(obj).attr('title')=='重置密码'){
                  layer.msg('已重置!',{icon: 1,time:1000});
              }else{

              }

          });
      }

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }


      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>