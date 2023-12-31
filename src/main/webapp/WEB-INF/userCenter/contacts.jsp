<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2023/7/20
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<c:set var="friend" value="${sessionScope.user}"></c:set>
<c:set var="friendRequestList" value="${requestScope.friendRequestList}"></c:set>
<c:set var="friendList" value="${requestScope.friendList}"></c:set>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>通讯录</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<link rel="stylesheet" href="${path}/static/web/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="${path}/static/web/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css">

<link rel="stylesheet" href="${path}/static/web/css/style.min.css">
<body>
<div id="layout" class="theme-cyan">

<%----------------------------------------------------------------------------------------%>
<%--------------------------------------左边图标栏------------------------------------------%>
<%----------------------------------------------------------------------------------------%>
    <div class="navigation navbar justify-content-center py-xl-4 py-md-3 py-0 px-3">

        <a href="index.html" title="Postman" class="brand">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 46 46" fill="none">
                <g id="logo-icon-color">
                    <path id="Vector"
                          d="M26.4966 6.01307V2.00436L22.9746 0L19.5029 2.00436V6.01307L22.9746 8.01743L26.4966 6.01307Z"
                          fill="#4539CF"/>
                    <path id="Vector_2"
                          d="M34.7989 10.8235V6.81477L31.3272 4.81042L27.8555 6.81477V10.8235L31.3272 12.8279L34.7989 10.8235Z"
                          fill="#4539CF"/>
                    <path id="Vector_3"
                          d="M43 15.4837V11.4749L39.5283 9.47058L36.0063 11.4749V15.4837L39.5283 17.488L43 15.4837Z"
                          fill="#4539CF"/>
                    <path id="Vector_4"
                          d="M43 25.0043V20.9956L39.5283 18.9913L36.0063 20.9956V25.0043L39.5283 27.0087L43 25.0043Z"
                          fill="#4539CF"/>
                    <path id="Vector_5"
                          d="M33.9935 19.9935V16.9368L31.3269 15.4336L28.6602 16.9368V19.9935L31.3269 21.5469L33.9935 19.9935Z"
                          fill="#4539CF"/>
                    <path id="Vector_6"
                          d="M33.9935 29.5142V26.4575L31.3269 24.9041L28.6602 26.4575V29.5142L31.3269 31.0174L33.9935 29.5142Z"
                          fill="#4539CF"/>
                    <path id="Vector_7"
                          d="M15.931 19.6928V17.2876L13.8178 16.085L11.7549 17.2876V19.6928L13.8178 20.8453L15.931 19.6928Z"
                          fill="#4539CF"/>
                    <path id="Vector_8"
                          d="M15.931 29.1634V26.7582L13.8178 25.5555L11.7549 26.7582V29.1634L13.8178 30.366L15.931 29.1634Z"
                          fill="#4539CF"/>
                    <path id="Vector_9"
                          d="M6.4717 24.0022V21.9978L4.76101 20.9956L3 21.9978V24.0022L4.76101 25.0044L6.4717 24.0022Z"
                          fill="#4539CF"/>
                    <path id="Vector_10"
                          d="M43 34.4749V30.4662L39.5283 28.4619L36.0063 30.4662V34.4749L39.5283 36.4793L43 34.4749Z"
                          fill="#4539CF"/>
                    <path id="Vector_11"
                          d="M25.9433 15.1329V11.8758L23.1257 10.2222L20.2578 11.8758V15.1329L23.1257 16.7865L25.9433 15.1329Z"
                          fill="#4539CF"/>
                    <path id="Vector_12"
                          d="M25.9433 34.1242V30.8671L23.1257 29.2135L20.2578 30.8671V34.1242L23.1257 35.7778L25.9433 34.1242Z"
                          fill="#4539CF"/>
                    <path id="Vector_13"
                          d="M25.4908 24.3529V21.597L23.126 20.244L20.7109 21.597V24.3529L23.126 25.756L25.4908 24.3529Z"
                          fill="#4539CF"/>
                    <path id="Vector_14"
                          d="M34.7989 39.1852V35.1765L31.3272 33.1721L27.8555 35.1765V39.1852L31.3272 41.1896L34.7989 39.1852Z"
                          fill="#4539CF"/>
                    <path id="Vector_15"
                          d="M16.6856 10.2222V6.91507L13.8176 5.26147L10.9497 6.91507V10.2222L13.8176 11.8257L16.6856 10.2222Z"
                          fill="#4539CF"/>
                    <path id="Vector_16"
                          d="M6.22013 12.9782V11.1242L4.61006 10.1721L3 11.1242V12.9782L4.61006 13.9303L6.22013 12.9782Z"
                          fill="#4539CF"/>
                    <path id="Vector_17"
                          d="M26.4966 43.9956V39.9868L22.9746 37.9825L19.5029 39.9868V43.9956L22.9746 45.9999L26.4966 43.9956Z"
                          fill="#4539CF"/>
                    <path id="Vector_18"
                          d="M16.6856 39.0849V35.7777L13.8176 34.1241L10.9497 35.7777V39.0849L13.8176 40.7385L16.6856 39.0849Z"
                          fill="#4539CF"/>
                    <path id="Vector_19"
                          d="M7.5283 34.8257V32.22L5.26415 30.9172L3 32.22V34.8257L5.26415 36.1285L7.5283 34.8257Z"
                          fill="#4539CF"/>
                </g>
            </svg>
        </a>

<%----------------------------------------------------------------------------------------%>
<%--------------------------------------左边图标栏------------------------------------------%>
<%----------------------------------------------------------------------------------------%>
        <div class="nav flex-md-column nav-pills flex-grow-1" role="tablist" aria-orientation="vertical">
            <a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-user" role="tab">
                <img src="${path}/static/web/images/user.png" class="avatar sm rounded-circle" alt="user avatar"/>
            </a>
            <a class="mb-xl-3 mb-md-2 nav-link active" data-toggle="pill" href="#nav-tab-chat" role="tab"><i
                    class="zmdi zmdi-comment-alt"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-phone" role="tab"><i
                    class="zmdi zmdi-notifications"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-contact" role="tab"><i
                    class="zmdi zmdi-account-circle"></i></a>
            <a class="mb-xl-3 mb-md-2 nav-link d-none d-sm-block" data-toggle="pill" href="#nav-tab-pages" role="tab"><i
                    class="zmdi zmdi-layers"></i></a>
        </div>

        <div class="nav flex-md-column nav-pills flex-grow-2" role="tablist" aria-orientation="vertical">
            <a class="mt-xl-3 mt-md-2 nav-link light-dark-toggle" href="javascript:void(0);">
                <i class="zmdi zmdi-brightness-2"></i>
                <input class="light-dark-btn" type="checkbox">
            </a>
            <a class="mt-xl-3 mt-md-2 nav-link d-none d-sm-block" href="${path}/userCenter/updateInfo" role="tab"><i
                    class="zmdi zmdi-settings"></i></a>
        </div>

        <button type="submit" class="btn sidebar-toggle-btn shadow-sm"><i class="zmdi zmdi-menu"></i></button>
    </div>


    <div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">


        <div class="tab-content">

<%----------------------------------------左边个人信息栏--------------------------------------%>
<%----------------------------------------左边个人信息栏--------------------------------------%>
<%----------------------------------------左边个人信息栏--------------------------------------%>
            <div class="tab-pane fade" id="nav-tab-user" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="mb-0 text-primary">个人信息</h3>
                    <div>
                        <a href="signin.html" title="" class="btn btn-dark">退出登录</a>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="搜索...">
                </div>

                <div class="card border-0 text-center pt-3 mb-4">
                    <div class="card-body">
                        <div class="card-user-avatar">
                            <c:if test="${friend.picture eq null}" var="flag">
                                <img src="${path}/static/web/images/user.png" alt="avatar"/>
                            </c:if>
                            <c:if test="${not flag}">
                                <img src="${path}/static/uploadImages/${friend.picture}" alt="avatar" style="width: 140px; height: 140px"/>
                            </c:if>
                            <a href="${path}/userCenter/updatePicture">
                                <button type="button" class="btn btn-secondary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                            </a>
                        </div>
                        <div class="card-user-detail mt-4">
                            <h4>${friend.name}</h4>
                            <span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                        data-cfemail="15787c767d707979703b726770707b557278747c793b767a78">[email&#160;protected]</a></span>
                            <p>+86 ${friend.phone.substring(0,3)}****${friend.phone.substring(7,11)} - 中国 (CHINA)</p>
                            <div class="social">
                                <a class="icon p-2" href="#" data-toggle="tooltip" title="Facebook"><i
                                        class="zmdi zmdi-facebook-box"></i></a>
                                <a class="icon p-2" href="#" data-toggle="tooltip" title="Github"><i
                                        class="zmdi zmdi-github-box"></i></a>
                                <a class="icon p-2" href="#" data-toggle="tooltip" title="Linkedin"><i
                                        class="zmdi zmdi-linkedin-box"></i></a>
                                <a class="icon p-2" href="#" data-toggle="tooltip" title="Instagram"><i
                                        class="zmdi zmdi-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card border-0">
                    <ul class="list-group custom list-group-flush">

                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span>主题颜色</span>
                            <ul class="choose-skin list-unstyled mb-0">
                                <li data-theme="indigo" data-toggle="tooltip" title="Theme-Indigo">
                                    <div class="indigo"></div>
                                </li>
                                <li class="active" data-theme="cyan" data-toggle="tooltip" title="Theme-Cyan">
                                    <div class="cyan"></div>
                                </li>
                                <li data-theme="green" data-toggle="tooltip" title="Theme-Green">
                                    <div class="green"></div>
                                </li>
                                <li data-theme="blush" data-toggle="tooltip" title="Theme-Blush">
                                    <div class="blush"></div>
                                </li>
                                <li data-theme="dark" data-toggle="tooltip" title="Theme-Dark">
                                    <div class="dark"></div>
                                </li>
                            </ul>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span>桌面通知</span>
                            <label class="c_checkbox">
                                <input type="checkbox" checked="">
                                <span class="checkmark"></span>
                            </label>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span>声音通知</span>
                            <label class="c_checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </li>
                        <li class="list-group-item border-0 mt-3">
                            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 需要帮助吗？联系我们</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 简体中文（中国）</a>
                        </li>
                    </ul>

                    <div class="card-body text-center border-top">
                        <button type="button" class="btn btn-secondary">修改个人信息</button>
                    </div>
                </div>
            </div>


<%-----------------------------------------好友聊天界面---------------------------------------%>
<%-----------------------------------------好友聊天界面---------------------------------------%>
<%-----------------------------------------好友聊天界面---------------------------------------%>
            <div class="tab-pane fade show active" id="nav-tab-chat" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="mb-0 text-primary">Chat</h3>
                    <div>
                        <button class="btn btn-dark" type="button">New Chat</button>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <ul class="chat-list">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>RECENT CHATS</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                    class="zmdi zmdi-filter-list"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="bot-chat.html" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <div class="avatar rounded-circle no-image bg-primary text-light">
                                            <span><i class="zmdi zmdi-comment-text"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Support ChatBot</h6>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-circle text-success"></i> Online
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online">
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="single-chat.html" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar5.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate">It is a long established fact that a reader w...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="group-chat.html" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <div class="avatar rounded-circle no-image timber">
                                            <span>UD</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-file-text me-1"></i> It is a long established fact that
                                            a reader w...
                                            <div class="avatar-list avatar-list-stacked mt-1">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar5.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Sean">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar6.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Martin">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar1.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Terry">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar4.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Michelle">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="away">
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="single-chat-2.html" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar1.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate">What Can i do right now?</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar2.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Elizabeth Martin <span
                                                    class="badge badge-info">4</span></h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate"><i class="zmdi zmdi-file-text me-1"></i> It is a long
                                            established fact that a reader w...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online">
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar3.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">David Wallace</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate">
                                            <div class="wave">
                                                <span class="dot"></span>
                                                <span class="dot"></span>
                                                <span class="dot"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="away">
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar4.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Sean Black</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate"><i class="zmdi zmdi-phone-end me-1"></i> It is a long
                                            established fact that a reader w...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar6.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Terry Carter</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">16-07-2020</p>
                                        </div>
                                        <div class="text-truncate">Hello, Terry are you there?</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <div class="avatar rounded-circle no-image cyan">
                                            <span>MS</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Michelle Schultz</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">13-07-2020</p>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-file-text me-1"></i> Meeting start in 20min please be
                                            ready...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <div class="avatar rounded-circle no-image green">
                                            <span>RG</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">React Group</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div class="text-truncate">
                                            It is a long established fact that a reader w...
                                            <div class="avatar-list avatar-list-stacked mt-1">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar7.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Sean">
                                                <img class="avatar xs rounded"
                                                     src="${path}/static/web/images/xs/avatar8.jpg"
                                                     data-toggle="tooltip" data-placement="top" title="Martin">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar rounded-circle"
                                             src="${path}/static/web/images/xs/avatar6.jpg" alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Terry Carter</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">16-07-2020</p>
                                        </div>
                                        <div class="text-truncate">Hello, Terry are you there?</div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </div>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar me-3">
                                        <span class="status rounded-circle"></span>
                                        <div class="avatar rounded-circle no-image cyan">
                                            <span>MS</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Michelle Schultz</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">13-07-2020</p>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-file-text me-1"></i> Meeting start in 20min please be
                                            ready...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

<%-------------------------------------------新的通知----------------------------------------%>
<%-------------------------------------------新的通知----------------------------------------%>
<%-------------------------------------------新的通知----------------------------------------%>
            <div class="tab-pane fade" id="nav-tab-phone" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="mb-0 text-primary">通知</h3>
                    <div>
                        <button class="btn btn-dark" type="button">新的通知</button>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="搜索...">
                </div>

                <ul class="chat-list">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>最近的通知</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <c:forEach items="${friendRequestList}" var="friendRequest">
                        <li>
                            <c:if test="${friendRequest.disable}" var="flag">
                                <div class="hover_action">
                                    <p>请求已失效</p>
                                </div>
                            </c:if>
                            <c:if test="${not flag}">

                                <div class="hover_action" id="requestActionDiv${friendRequest.id}">
                                    <button type="button" class="btn btn-link text-info">
                                        <input type="button" value="接受" id="acceptRequest${friendRequest.id}" data-id="${friendRequest.id}">
                                    </button>
                                    <button type="button" class="btn btn-link text-warning">
                                        <input type="button" value="拒绝" id="refuseRequest${friendRequest.id}" data-id="${friendRequest.id}">
                                    </button>
                                    <button type="button" class="btn btn-link text-danger">
                                        <input type="button" value="忽略" id="ignoreRequest${friendRequest.id}" data-id="${friendRequest.id}">
                                    </button>
                                </div>

                            </c:if>


                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
<%--                                             todo:后期实现上传头像功能之后把此处的路径改掉--%>
                                                 src="${path}/static/web/images/xs/avatar10.jpg" alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">${friendRequest.sender.name}</h6>
                                            </div>
                                            <div class="text-truncate">
                                                ${friendRequest.requestMessage}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
<%----------------------------------------好友栏+添加好友--------------------------------------%>
<%----------------------------------------好友栏+添加好友--------------------------------------%>
<%----------------------------------------好友栏+添加好友--------------------------------------%>
            <div class="tab-pane fade" id="nav-tab-contact" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="mb-0 text-primary">通讯录</h3>
                    <div>
                        <button class="btn btn-dark" type="button" data-toggle="modal" data-target="#InviteFriends">
                            添加好友
                        </button>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="搜索...">
                </div>

                <ul class="chat-list">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>A</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <c:forEach items="${friendList}" var="friend">
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                                <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                                </button>
                                <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                                </button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${path}/static/uploadImages/${friend.picture}" alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">${friend.name}</h6>
                                            </div>
                                            <div class="text-truncate">
                                                ${friend.signature}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
<%--                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">--%>
<%--                        <span>D</span>--%>
<%--                    </li>--%>
<%--                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">--%>
<%--                        <span>T</span>--%>
<%--                    </li>--%>

                </ul>
            </div>

            <div class="tab-pane fade" id="nav-tab-pages" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h3 class="mb-0 text-primary">Pages</h3>
                </div>

                <div class="card border-0">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item border-0 mt-3">
                            <a class="link" href="signin.html"><i class="zmdi zmdi-label-alt me-2"></i> Sign in</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="signup.html"><i class="zmdi zmdi-label-alt me-2"></i> Sign up</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="password-reset.html"><i class="zmdi zmdi-label-alt me-2"></i> Reset
                                Password</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="settings.html"><i class="zmdi zmdi-label-alt me-2"></i> Settings</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="single-chat.html"><i class="zmdi zmdi-label-alt me-2"></i> Single Chat
                                Room</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="group-chat.html"><i class="zmdi zmdi-label-alt me-2"></i> Group Chat
                                Room</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="audio-call.html"><i class="zmdi zmdi-label-alt me-2"></i> Audio Call
                                Room</a>
                        </li>
                        <li class="list-group-item border-0">
                            <a class="link" href="video-call.html"><i class="zmdi zmdi-label-alt me-2"></i> Video Call
                                Room</a>
                        </li>
                        <li class="list-group-item mb-3">
                            <a class="link" href=""><i class="zmdi zmdi-label-alt me-2"></i> Documentation</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="main px-xl-5 px-lg-4 px-3">

        <div class="chat-body">

            <div class="chat d-flex justify-content-center align-items-center h-100 text-center py-xl-4 py-md-3 py-2">
                <div class="container-xxl">
                    <div class="avatar lg avatar-bg me-auto ms-auto mb-5">
                        <img class="avatar lg rounded-circle border" src="${path}/static/web/images/user.png" alt=""/>
                        <span class="a-bg-1"></span>
                        <span class="a-bg-2"></span>
                    </div>
                    <h5 class="font-weight-bold">Hey, Robert!</h5>
                    <p>Please select a chat to start messaging.</p>
                </div>
            </div>

        </div>

    </div>


    <div class="modal fade" id="InviteFriends" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">添加好友</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>用户名</label>
                            <input id="friendUsername" type="text" class="form-control">
                            <small class="form-text text-muted">请放心，我们将会严格保密您的信息！</small>
                            <br/><br/>
                            <label>您对他有什么想说的吗？（限制50个字符）</label>
                            <input type="text" id="friendRequestMessage" class="form-control">
                            <span id="friendRequestMessageMsg"></span>
                        </div>
                        <div class="mt-5">
                            <button type="button" class="btn btn-primary" onclick="addFriend()">Send Invite</button>
                            <button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="${path}/static/web/vendor/jquery/jquery-3.5.1.min.js"
        type="67ae01ba4dd2a59f70ab9427-text/javascript"></script>
<script src="${path}/static/web/vendor/bootstrap/js/bootstrap.bundle.min.js"
        type="67ae01ba4dd2a59f70ab9427-text/javascript"></script>

<script src="${path}/static/web/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
        type="67ae01ba4dd2a59f70ab9427-text/javascript"></script>

<script src="${path}/static/web/js/template.js" type="67ae01ba4dd2a59f70ab9427-text/javascript"></script>

<script type="67ae01ba4dd2a59f70ab9427-text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5e0463c727773e0d832ab358/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();

</script>

<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
        data-cf-settings="67ae01ba4dd2a59f70ab9427-|49" defer=""></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js"
        data-cf-beacon='{"r":1,"version":"2021.2.0","rayId":"6203529a7c4f3684","si":10}'></script>
</body>
</html>

<script type="text/javascript" src="${path}/static/web/vendor/jquery/jquery-3.6.4.min.js"></script>
<%--发送好友申请的JS--%>
<script type="text/javascript">
    var friendRequestMessageFlag = false;

    function addFriend() {
        checkRequestMessage();
        if (!friendRequestMessageFlag) {
            return false;
        }
        var username = $("#friendUsername").val();
        var friendRequestMessage = $("#friendRequestMessage").val();
        console.log(friendRequestMessage);
        $.get("${path}/userCenter/addFriend?username=" + username + "&friendRequestMessage=" + friendRequestMessage, function (data) {
            console.log(data);
            if (data == "fail") {
                alert("好友申请发送失败！");
            } else if (data == "exist") {
                alert("您已经发送过好友申请了，请不要重复发送！");
            } else if (data == "success") {
                alert("好友申请发送成功！");
            } else if (data == "already"){
                alert("你们已经是好友了！不要重复发送申请");
            }
        });
    }

    function checkRequestMessage() {
        var friendRequestMessage = $("#friendRequestMessage").val();
        var friendRequestMessageExp = /^.{0,50}$/;
        if (!friendRequestMessageExp.test(friendRequestMessage)) {
            $("#friendRequestMessageMsg").html("不要超过50个字符！").css("color", "red");
            friendRequestMessageFlag = false;
            return false;
        } else {
            friendRequestMessageFlag = true;
        }
    }
</script>
<%--接收好友申请的JS--%>
<script type="text/javascript">


    $("input[id^='acceptRequest']").click(function (){
        var friendRequestId = $(this).data("id");
        var responseMessage = "";
        $.get("${path}/userCenter/acceptFriendRequest?friendRequestId="+friendRequestId+"&responseMessage="+responseMessage+"&success=1",
        function(data)
        {
            $("#requestActionDiv"+friendRequestId).html("<p>请求已失效</p>");
            alert("好友已成功添加！");
        });
    });
    $("input[id^='refuseRequest']").click(function (){
        var friendRequestId = $(this).data("id");
        var responseMessage = prompt("请输入拒绝信息（非必填，限制50个字符）：");
        responseMessageExp = /^.{0,50}$/;
        if (!responseMessageExp.test(responseMessage))
        {
            alert("字符数量超出限制");
        }
        $.get("${path}/userCenter/acceptFriendRequest?friendRequestId="+friendRequestId+"&responseMessage="+responseMessage+"&success=2",
        function (data)
        {
            $("#requestActionDiv"+friendRequestId).html("<p>请求已失效</p>");
        });
    });
    $("input[id^='ignoreRequest']").click(function (){
        var responseMessage = "";
        var friendRequestId = $(this).data("id");
        $.get("${path}/userCenter/acceptFriendRequest?friendRequestId="+friendRequestId+"&responseMessage="+responseMessage+"&success=3",
        function (data)
        {
            alert("好友申请已成功忽略");
            $("#requestActionDiv"+friendRequestId).html("<p>请求已失效</p>");
        });
    });
</script>