<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta name="description" content="CCB eCommerce">
<meta name="author" content="IMS">
<title><decorator:title /></title>

<!-- for browser tag icon -->

<link rel="shortcut icon" href="images/favicon.ico">
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<script type="text/javascript">
	var ctx = "${ctx}";
	var frontThemeRoot = "${frontThemeRoot}";
</script>

<!-- Bootstrap Core CSS -->
<link href="${frontThemeRoot}/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="${frontThemeRoot}/css/style.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="${frontThemeRoot}/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="${frontThemeRoot}/js/html5shiv.js"></script>
<script src="${frontThemeRoot}/js/respond.min.js"></script>
<![endif]-->
<!-- jQuery Version 1.11.0 -->
<script src="${frontThemeRoot}/js/jquery-1.11.0.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${frontThemeRoot}/js/bootstrap.min.js"></script>
<script src="${frontThemeRoot}/js/jquery.validate.js"></script>
<script src="${frontThemeRoot}/js/additional-methods.js"></script>
<script src="${frontThemeRoot}/js/jquery.validate.messages_zh.js"></script>
<script src="${frontThemeRoot}/js/setup_validation.js"></script>
<script src="${frontThemeRoot}/js/app.js"></script>
<decorator:head />
</head>

<body class=" ">
    <jsp:include page="layout_header.jsp" />
    <!-- Page Content -->
    <div class="container">
        <tags:showMessage />
        <decorator:body />
    </div>
    <jsp:include page="layout_footer.jsp" />
</body>
</html>
