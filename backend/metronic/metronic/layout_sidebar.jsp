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
        <a class="ajaxify start " href="${ctx}/admin/dashboard">
            <i class="fa fa-dashboard"></i> <span class="title">管理面板</span> <span class="selected"></span>
        </a>
    </li>

    <li class="open">
        <a href="javascript:;">
            <i class="fa fa-leaf"></i> <span class="title">营销活动</span> <span class="selected"></span> <span class="arrow "></span>
        </a>
        <ul class="sub-menu">
            <li class=" ">
                <!-- <a class="ajaxify" href="${ctx}/admin/master/department?from=menu">
                    <i class="fa fa-group"></i> 部门管理
                </a> -->
                <a class="ajaxify" href="${ctx}/admin/master/activities?from=menu">
                    <i class="fa fa-group"></i> 活动管理
                </a>
                <a class="ajaxify" href="${ctx}/admin/master/activitiesaward?from=menu">
                    <i class="fa fa-group"></i> 奖项管理
                </a>
                 <a class="ajaxify" href="${ctx}/admin/master/activitiesrecord?from=menu">
                    <i class="fa fa-group"></i> 抽奖记录管理
                </a>
                <a class="ajaxify" href="${ctx}/admin/master/activitieswinner?from=menu">
                    <i class="fa fa-trophy"></i> 中奖名单管理
                </a>
                <a class="ajaxify" href="${ctx}/admin/master/activitieswhitelist?from=menu">
                    <i class="fa fa-group"></i> 白名单管理
                </a>
            </li>
        </ul>
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
<!--             <li class=" "> -->
<%--                 <a class="ajaxify" href="${ctx}/admin/system/usergroup?from=menu"> --%>
<!--                     <i class="fa fa-group"></i> 用户组管理 -->
<!--                 </a> -->
<!--             </li> -->
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/role?from=menu"><i class="fa fa-group"></i> 角色管理 </a>
            </li>
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/setting?from=menu"><i class="fa fa-cog"></i> 系统设定 </a>
            </li>
            <li>
                <a class="ajaxify" href="${ctx}/admin/system/dictType/dictView?from=menu"><i class="fa fa-table"></i> 字典管理 </a>
            </li>

        </ul>
    </li>

</ul>