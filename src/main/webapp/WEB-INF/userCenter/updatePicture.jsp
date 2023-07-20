<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="description" content="jQuery图像照片剪裁插件Jcrop"/>
    <meta name="description" content="张鑫旭web前端学习之jQuery"/>
    <meta name="keywords" content="张鑫旭,鑫空间-鑫生活,博客,web前端,css,JavaScript,jQuery,插件,demo页面,学习"/>
    <meta name="author" content="张鑫旭,zhangxixnu"/>
    <title>上传头像</title>
    <link rel="shortcut icon" href="http://www.zhangxinxu.com/zxx_ico.png"/>
    <link rel="stylesheet" href="${path}/static/crop/css/common.css" type="text/css"/>
    <link rel="stylesheet" href="${path}/static/crop/css/jquery.Jcrop.css" type="text/css"/>
    <script type="text/javascript" src="${path}/static/crop/js/jquery-1.3.2-min.js"></script>
    <script type="text/javascript" src="${path}/static/crop/js/jquery.Jcrop.js"></script>
    <style type="text/css">
        .crop_preview {
            position: absolute;
            left: 520px;
            top: 0;
            width: 120px;
            height: 120px;
            overflow: hidden;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            //记得放在jQuery(window).load(...)内调用，否则Jcrop无法正确初始化
            $("#xuwanting").Jcrop({
                onChange: showPreview,
                onSelect: showPreview,
                aspectRatio: 1
            });

            //简单的事件处理程序，响应自onChange,onSelect事件，按照上面的Jcrop调用
            function showPreview(coords) {
                if (parseInt(coords.w) > 0) {
                    //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
                    var rx = $("#preview_box").width() / coords.w;
                    var ry = $("#preview_box").height() / coords.h;
                    //通过比例值控制图片的样式与显示
                    $("#crop_preview").css({
                        width: Math.round(rx * $("#xuwanting").width()) + "px",	//预览图片宽度为计算比例值与原图片宽度的乘积
                        height: Math.round(rx * $("#xuwanting").height()) + "px",	//预览图片高度为计算比例值与原图片高度的乘积
                        marginLeft: "-" + Math.round(rx * coords.x) + "px",
                        marginTop: "-" + Math.round(ry * coords.y) + "px"
                    });
                }
            }
        });
    </script>
</head>

<body>
<div class="zxx_out_box">
    <div class="zxx_in_box">
        <div class="zxx_header">
            <a href="http://www.zhangxinxu.com/">
                <img class="l"
                     src="http://www.zhangxinxu.com/wordpress/wp-content/themes/default/images/index_logo.gif"/>
            </a>
            <span class="zxx_author_time">by zhangxinxu 2009-11-12 14:31</span>
        </div>
        <h1 class="zxx_title">Jcrop照片剪裁插件高宽比例固定/剪裁效果预览演示</h1>
        <div class="zxx_main_con">
            <div class="zxx_test_list">
                <div class="rel mb20">
                    <img id="xuwanting" src="${path}/static/crop/image/xuwanting.jpg"/>
                    <span id="preview_box" class="crop_preview"><img id="crop_preview"
                                                                     src="${path}/static/crop/image/xuwanting.jpg"/></span>
                </div>
                <p><strong>比例锁定且图片剪裁预览演示实例。</strong>这是一个非常直观的演示，那个小小的预览窗格效果的实现使用了一个jQuery式的回调函数，完全在Jcrop之外。这种接口类型在创建缩略图或是头像时非常有用。onChange事件处理程序用于更新在预览窗格中的视图。
                </p>
                <p class="mt20 mb20"><a href="../index.html">&lt;&lt; 返回Demo实例首页</a></p>
                <div class="zxx_code">
                    <div class="mb10 f9 dot"><strong>JavaScript代码</strong></div>
                    <xmp>$(document).ready(function(){
                        //记得放在jQuery(window).load(...)内调用，否则Jcrop无法正确初始化
                        $("#xuwanting").Jcrop({
                        onChange:showPreview,
                        onSelect:showPreview,
                        aspectRatio:1
                        });
                        //简单的事件处理程序，响应自onChange,onSelect事件，按照上面的Jcrop调用
                        function showPreview(coords){
                        if(parseInt(coords.w) > 0){
                        //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
                        var rx = $("#preview_box").width() / coords.w;
                        var ry = $("#preview_box").height() / coords.h;
                        //通过比例值控制图片的样式与显示
                        $("#crop_preview").css({
                        width:Math.round(rx * $("#xuwanting").width()) + "px", //预览图片宽度为计算比例值与原图片宽度的乘积
                        height:Math.round(rx * $("#xuwanting").height()) + "px", //预览图片高度为计算比例值与原图片高度的乘积
                        marginLeft:"-" + Math.round(rx * coords.x) + "px",
                        marginTop:"-" + Math.round(ry * coords.y) + "px"
                        });
                        }
                        }
                        });
                    </xmp>
                </div>
            </div>
        </div>
        <div class="zxx_footer">
            Copyright &copy; by <a href="http://www.zhangxinxu.com/">张鑫旭-鑫空间-鑫生活</a>
            |
            <a href="http://www.zhangxinxu.com/wordpress/?p=359">该篇相关文章</a>
        </div>
    </div>
</div>
</body>
</html>
