<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/8/5
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="cn" dir="ltr" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>异步 </title>
    <link href="${path}/static/blog/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link title="style2" href="${path}/static/blog/assets/css/style.css" rel="stylesheet"/>
    <link href="${path}/static/blog/assets/css/nprogress.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/nivo-slider.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="${path}/static/blog/assets/css/default.css" type="text/css" media="screen"/>
    <script src="${path}/static/blog/assets/js/jquery.min.js"></script>
    <script src="${path}/static/blog/assets/js/jquery.nivo.slider.pack.js"></script>
    <script src="${path}/static/blog/assets/js/nprogress.js"></script>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">
              Toggle navigation
            </span>
                <span class="icon-bar">
            </span>
                <span class="icon-bar">
            </span>
                <span class="icon-bar">
            </span>
            </button>
            <a class="navbar-brand" href="index.html">
                <img src="${path}/static/blog/assets/img/logo.png" class="logo"/>
            </a>
        </div>
        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav header-menu">
                <li>
                    <a href="index.html">
                        首页
                    </a>
                </li>
                <li>
                    <a href="about.html">
                        我的朋友圈
                    </a>
                </li>
                <li>
                    <a href="blog.html">
                        朋友圈设置
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="leftbar">
    <!-- 左菜单 -->
    <div class="left_menu">
        <ul class="menu_link">
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-toggle="tooltip" data-placement="right" title="登陆">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li data-toggle="tooltip" data-placement="right" title="博客">
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   target="_black">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                注册
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable style1" id="style1">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable style2"
                   data-tooltip="white theme" id="style2">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="${path}/static/blog/assets/img/login.png">
                    <span>
                自定义链接
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>
<!--Start banner img-->
<div class="container-filed" id="banner_container">
    <div class="row">
        <div class="col-md-12">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="${path}/static/blog/assets/img/owl.jpg" data-thumb="assets/img/owl.jpg" alt=""/>
                    <a href="${path}/static/blog/assets/img/owl2.jpg"><img src="${path}/static/blog/assets/img/owl2.jpg"
                                                                           alt=""/></a>
                    <img src="${path}/static/blog/assets/img/owl.jpg" data-thumb="assets/img/owl.jpg" alt=""/>
                    <img src="${path}/static/blog/assets/img/owl2.jpg" data-thumb="assets/img/owl2.jpg" alt=""/>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row">
        <div class="col-md-12 top-title">
            <h2 class="page-title">
                博客文章
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="content.html" title="">异步测试文章</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
              2015年6月3日
            </span>
                <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                <p>
                    leaves由异步制作,欢迎大家使用
                    <a href="">
                        这是一个连接
                    </a>
                </p>
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="topics/life/diary.htm">
                  测试
              </a>
            </span>
                <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="tags/毕业.htm" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                异步测试文章
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
              2015年6月3日
            </span>
                <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                <p>
                    leaves由异步制作,欢迎大家使用
                    <a href="">
                        这是一个连接
                    </a>
                </p>
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="">
                  测试
              </a>
            </span>
                <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="content.html" title="">异步测试文章</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
              2015年6月3日
            </span>
                <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                <p>
                    leaves由异步制作,欢迎大家使用
                    <a href="http://www.ybsat.com">
                        这是一个链接
                    </a>
                </p>
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="">
                  测试
              </a>
            </span>
                <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="content.html" title="">异步测试文章</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
              2015年6月3日
            </span>
                <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                <p>
                    leaves由异步制作,欢迎大家使用
                    <a href="http://www.ybsat.com">
                        这是一个链接
                    </a>
                </p>
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="">
                  测试
              </a>
            </span>
                <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="content.html" title="">异步测试文章</a>
            </h2>
            <div class="meta-box">
            <span class="m-post-date">
              <i class="fa fa-calendar-o">
              </i>
              2015年6月3日
            </span>
                <span class="comments-link">
              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
                  <i class="fa fa-comments-o">
                  </i>
                  留言
              </a>
            </span>
            </div>
            <div class="post-content">
                <p>
                    leaves由异步制作,欢迎大家使用
                    <a href="http://www.ybsat.com">
                        这是一个链接
                    </a>
                </p>
            </div>
            <div class="meta-box">
            <span class="cat-links">
              <i class="fa fa-navicon">
              </i>
              <b>
                  分类:
              </b>
              <a href="">
                  测试
              </a>
            </span>
                <span class="tag-links">
              <i class="fa fa-tags">
              </i>
              <b>
                  标签:
              </b>
              <a href="" rel="tag">
                  异步
              </a>
            </span>
            </div>
        </div>
    </div>
    <!--分页进入第二页，一页多少可分配-->
    <div class="row post-pagination">
        <div class="col-md-12">
            <p>
                <a href="" class="btn btn-primary btn-sm">
                    <span> 浏览之前的文章</span>
                </a>
            </p>
        </div>
    </div>
    <!--评论内容-->
    <div class="row page-comments-container">
        <div class="col-md-12">
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
    <footer>
        <!--版权信息-->
        <div class="copyright">
            Copyright Ybsat ©2020 All rights reserved &nbsp;&nbsp;
            <a href="www.ybsat.com">
                Theme leaves by Ybsat
            </a>
        </div>
    </footer>
</div>
<script src="${path}/static/blog/assets/js/bootstrap.min.js"></script>
<script>
    /*banner 初始化*/
    $(window).load(function () {
        $('#slider').nivoSlider({
            effect: 'random',        // 过渡效果
            controlNav: false,       // 是否显示图片导航控制按钮（,2,3... ）
            pauseOnHover: true,      // 鼠标县浮时是否停止动画
            manualAdvance: false,    // 是否手动切换
            animSpeed: 100,          // 图片过渡时间
            pauseTime: 2000,         // 图片显示时间
            pauseOnHover: false,
            manualAdvance: false,
        });
    });
    $(document).ready(function () {
        $('body').show();
        $('.version').text(NProgress.version);
        NProgress.start();
        setTimeout(function () {
            NProgress.done();
            $('.fade').removeClass('out');
        }, 1000);
        var style2 = $(".style2")
        style2.click(function () {

        })
    })

</script>
</body>

</html>
