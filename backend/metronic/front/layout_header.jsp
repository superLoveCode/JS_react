<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<header class="navbar navbar-default navbar-fixed-top " id="top" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            </button>
            <a href="${ctx}" class="navbar-brand">
                <img src="${frontThemeRoot}/img/head_logo.png" height="26px"> eCommerce
            </a>
        </div>

        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
                <li>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${pageContext.request.remoteUser == null}">
                    <li class="">
                        <a href="${ctx}/login">登录</a>
                    </li>
                    <li class="">
                        <a href="${ctx}/register">注册新用户</a>
                    </li>
                </c:if>

                <c:if test="${pageContext.request.remoteUser != null and 1==0}">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-warning"></i> <span class="badge">6</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <li>
                                <p>You have 14 new notifications</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 250px;">
                                    <li>
                                        <a href="#">
                                            <span class="label label-icon label-success"><i class="fa fa-plus"></i></span> New user registered. <span class="time">Just now</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-icon label-warning"><i class="fa fa-bell-o"></i></span> Storage Server #4 not responding. <span class="time">45 mins</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="#">
                                    See all notifications <i class="m-icon-swapright"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN INBOX DROPDOWN -->
                    <li class="dropdown" id="header_inbox_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-envelope"></i> <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <li>
                                <p>You have 12 new messages</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 250px;">
                                    <li>
                                        <a href="inbox.html?a=view">
                                            <span class="photo"><img src="${themeRoot}/assets/img/avatar2.jpg" alt="" /></span> <span class="subject"> <span class="from">Lisa Wong</span> <span
                                                class="time"
                                            >Just Now</span>
                                            </span> <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="inbox.html">
                                    See all messages <i class="m-icon-swapright"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END INBOX DROPDOWN -->

                </c:if>
                <c:if test="${pageContext.request.remoteUser != null }">
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" height="16" src="${themeRoot}/assets/img/avatar.png" /> <span class="username">${pageContext.request.remoteUser}</span> <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="${ctx}/user/profile">
                                    <i class="fa fa-user"></i> 个人档案
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="${ctx}/logout">
                                    <i class="fa fa-sign-out"></i> 登出系统
                                </a>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
</header>
