<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<ul class="page-sidebar-menu">
    <li>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler hidden-xs"></div>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    </li>
    <li>
        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
        <form class="sidebar-search" action="extra_search.html" method="POST">
            <div class="form-container">
                <div class="input-box">
                    <a href="javascript:;" class="remove"></a>
                    <input type="text" placeholder="Search..." /> <input type="button" class="submit" value=" " />
                </div>
            </div>
        </form>
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
    </li>
    <li>
        <a class="ajaxify " href="${ctx}/dashboard">
            <i class="fa fa-dashboard"></i> <span class="title">仪表面板</span> <span class="selected"></span>
        </a>
    </li>

    <li class="">
        <a href="javascript:;">
            <i class="fa fa-cogs"></i> <span class="title">系统管理</span> <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li class="">
                <a class="ajaxify" href="${ctx}/admin/system/user?from=menu">
                    <i class="fa fa-user"></i> 用户管理
                </a>
            </li>
            <li class=" ">
                <a class="ajaxify" href="${ctx}/admin/system/usergroup?from=menu">
                    <i class="fa fa-group"></i> 用户组管理
                </a>
            </li>
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/role?from=menu"> 角色管理 </a>
            </li>
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/setting?from=menu"> 系统设定 </a>
            </li>
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/dictType/dictView?from=menu"> 字典管理 </a>
            </li>
            <li>
                <a class="ajaxify start" href="${ctx}/admin/master/department?from=menu"> 部门管理 </a>
            </li>
        </ul>
    </li>

</ul>