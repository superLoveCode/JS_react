<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!-- BEGIN PAGE HEADER-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN PAGE TITLE & BREADCRUMB-->
		<h3 class="page-title">
			<decorator:title />
			&nbsp;&nbsp; <small><decorator:getProperty
					property="meta.heading" /></small>
		</h3>
		<hr />
		<%--<ul class="page-breadcrumb breadcrumb">
			<li class="btn-group">
				<button type="button" class="btn blue dropdown-toggle"
					data-toggle="dropdown" data-hover="dropdown" data-delay="1000"
					data-close-others="true">
					<span>Actions</span> <i class="fa fa-angle-down"></i>
				</button>
				<ul class="dropdown-menu pull-right" role="menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li class="divider"></li>
					<li><a href="#">Separated link</a></li>
				</ul>
			</li>
			<li><i class="fa fa-home"></i> <a href="${ctx}">Home</a> <i
				class="fa fa-angle-right"></i></li>
			<li><a href="#"></a></li>
		</ul> --%>
		<!-- END PAGE TITLE & BREADCRUMB-->
	</div>
</div>
<%--
<div class="row">
	<div class="col-md-12">
		<div class="note note-success">
			<h4 class="block">Bootbox</h4>
			<p>
				Bootbox.js is a small JavaScript library ...</a>.
			</p>
		</div>
	</div>
</div>
 --%>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<tags:showMessage />
<decorator:body />
<!-- END PAGE CONTENT-->