<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7 no-js"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<%@ include file="/common/meta.jsp"%>
<meta charset="utf-8" />
<title><decorator:title /> - <fmt:message key="webapp.name" /></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<meta name="MobileOptimized" content="320">
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="${themeRoot}/assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="${themeRoot}/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="${themeRoot}/assets/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${themeRoot}/assets/plugins/select2/select2_metro.css" />
<link rel="stylesheet" type="text/css"
	href="${themeRoot}/assets/plugins/data-tables/DT_bootstrap.css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="${themeRoot}/assets/css/style-metronic.css" rel="stylesheet"
	type="text/css" />
<link href="${themeRoot}/assets/css/style.css" rel="stylesheet"
	type="text/css" />
<link href="${themeRoot}/assets/css/style-responsive.css"
	rel="stylesheet" type="text/css" />
<link href="${themeRoot}/assets/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="${themeRoot}/assets/css/themes/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="${themeRoot}/assets/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME STYLES -->
<link href="${themeRoot}/assets/css/pages/search.css" rel="stylesheet"
	type="text/css" />
<decorator:head />
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
	<jsp:include page="layout_ajax_header.jsp" />
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
		<div class="modal fade" id="portlet-config" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h4 class="modal-title">Modal title</h4>
					</div>
					<div class="modal-body">Widget settings form goes here</div>
					<div class="modal-footer">
						<button type="button" class="btn blue">Save changes</button>
						<button type="button" class="btn default" data-dismiss="modal">Close</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
		<!-- BEGIN SIDEBAR1 -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU1 -->
			<jsp:include page="layout_sidebar.jsp" />
			<!-- END SIDEBAR MENU1 -->
		</div>
		<!-- END SIDEBAR1 -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN STYLE CUSTOMIZER -->
			<div class="theme-panel hidden-xs hidden-sm">
				<div class="toggler"></div>
				<div class="toggler-close"></div>
				<div class="theme-options">
					<div class="theme-option theme-colors clearfix">
						<span>THEME COLOR</span>
						<ul>
							<li class="color-black current color-default"
								data-style="default"></li>
							<li class="color-blue" data-style="blue"></li>
							<li class="color-brown" data-style="brown"></li>
							<li class="color-purple" data-style="purple"></li>
							<li class="color-grey" data-style="grey"></li>
							<li class="color-white color-light" data-style="light"></li>
						</ul>
					</div>
					<div class="theme-option">
						<span>Layout</span> <select
							class="layout-option form-control input-small">
							<option value="fluid" selected="selected">Fluid</option>
							<option value="boxed">Boxed</option>
						</select>
					</div>
					<div class="theme-option">
						<span>Header</span> <select
							class="header-option form-control input-small">
							<option value="fixed" selected="selected">Fixed</option>
							<option value="default">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>Sidebar</span> <select
							class="sidebar-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
					<div class="theme-option">
						<span>Footer</span> <select
							class="footer-option form-control input-small">
							<option value="fixed">Fixed</option>
							<option value="default" selected="selected">Default</option>
						</select>
					</div>
				</div>
			</div>
			<!-- END BEGIN STYLE CUSTOMIZER -->
			<div class="page-content-body">
				<!-- HERE WILL BE LOADED AN AJAX CONTENT -->
			</div>
		</div>
		<!-- BEGIN PAGE -->
	</div>
	<!-- END CONTAINER -->
	<jsp:include page="/common/footer.jsp" />
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
	<script src="${themeRoot}/assets/plugins/respond.min.js"></script>
	<script src="${themeRoot}/assets/plugins/excanvas.min.js"></script> 
	<![endif]-->
	<script src="${themeRoot}/assets/scripts/require.min.js"></script>
	<script src="${themeRoot}/assets/scripts/main.js"></script>
	<!-- END CORE PLUGINS -->

	<script>
		require([ "jquery", "jquery-ui", "bootstrap",
				"bootstrap-hover-dropdown", "cookie", "blockui", "validate",
				"validate-additional", "validate-messages", "setup-validation",
				"slimscroll", "uniform", "select2", "backstretch", "App",
				"domReady" ], function(domReady) {
			domReady(function() {
				App.init();
				$('.page-sidebar .ajaxify.start').click() // load the content for the dashboard page.
			});
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>