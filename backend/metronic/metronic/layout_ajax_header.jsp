<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
    <!-- BEGIN TOP NAVIGATION BAR -->
    <div class="header-inner">
        <!-- BEGIN LOGO -->
        <a class="navbar-brand" href="${ctx}/admin/">
            <%-- 		<img src="${themeRoot}/assets/img/logo.png" alt="logo" /> --%>
            <i class="fa fa-pagelines"></i>&nbsp;
            <fmt:message key="webapp.name.admin" />
        </a>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <img src="${themeRoot}/assets/img/menu-toggler.png" alt="" />
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <ul class="nav navbar-nav pull-right">
            <!-- BEGIN TODO DROPDOWN -->
            <!-- END TODO DROPDOWN -->
            <!-- BEGIN USER LOGIN DROPDOWN -->
            <li class="dropdown user">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                    <img alt="" height="29" src="${themeRoot}/assets/img/avatar_small.png" /> <span class="username">${pageContext.request.remoteUser}</span> <i class="fa fa-angle-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <%--
                    <li>
                        <a href="${ctx}/admin/profile">
                            <i class="fa fa-user"></i> My Profile
                        </a>
                    </li>
                    <li>
                        <a href="${ctx}/calendar">
                            <i class="fa fa-calendar"></i> My Calendar
                        </a>
                    </li>
                    <li>
                        <a href="${ctx}/inbox">
                            <i class="fa fa-envelope"></i> My Inbox <span class="badge badge-danger">3</span>
                        </a>
                    </li>
                    <li>
                        <a href="${ctx}/task">
                            <i class="fa fa-tasks"></i> My Tasks <span class="badge badge-success">7</span>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="javascript:;" id="trigger_fullscreen">
                            <i class="fa fa-move"></i> Full Screen
                        </a>
                    </li>
                    <li>
                        <a href="extra_lock.html">
                            <i class="fa fa-lock"></i> Lock Screen
                        </a>
                    </li> --%>
                    <li>
                        <a href="${ctx}/admin/logout">
                            <i class="fa fa-key"></i> Log Out
                        </a>
                    </li>
                </ul>
            </li>
            <!-- END USER LOGIN DROPDOWN -->
        </ul>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->