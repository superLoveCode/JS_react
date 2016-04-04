var App = function() {
	// Handle ajaxify link & form
	var handleLinkAndForm = function() {
		// handle ajax links
		jQuery('body>div.container')
				.on(
						'click',
						'a.ajaxify',
						function(e) {
							var url = $(this).attr("href");
							var pageContent = $(this, '.page-content');
							var pageContentBody = $(this,
									'.page-content .page-content-body');
							if ((url.match('mailto:') != null)) {
								return;
							}
							e.preventDefault();
							if ($(this).hasClass('disabled')
									|| url == 'javascript:;'
									|| url == 'javascript:void(0);'
									|| url == '#' || url == '') {
								return;
							}
							App.blockUI(pageContent, false);
							$
									.ajax({
										type : "GET",
										cache : false,
										url : url,
										dataType : "html",
										contentType : "application/x-www-form-urlencoded;charset=UTF-8",
										success : function(res) {
											App.unblockUI(pageContent);
											pageContentBody.html(res);
											App.initAjax();
										},
										error : function(xhr, ajaxOptions,
												thrownError) {
											pageContentBody
													.html('<h4>访问服务器时发生错误，请稍后重试!</h4>');
											App.unblockUI(pageContent);
										},
										async : false
									});
						});
		// handle ajax form
		jQuery('body>div.container')
				.on(
						'submit',
						' form.ajaxify',
						function(e) {
							e.preventDefault();
							var method = $(this).attr('method');
							var data = $(this).serialize();
							var url = $(this).attr("action");

							var pageContent = $(this, '.page-content');
							var pageContentBody = $(this,
									'.page-content .page-content-body');

							App.blockUI(pageContent, false);
							$
									.ajax({
										type : method,
										cache : false,
										url : url,
										dataType : "html",
										contentType : "application/x-www-form-urlencoded;charset=UTF-8",
										data : data,
										success : function(res) {
											App.unblockUI(pageContent);
											App.showMessages(res);
											App.initAjax();
										},
										error : function(xhr, ajaxOptions,
												thrownError) {
											pageContentBody
													.html('<h4>访问服务器时发生错误，请稍后重试!</h4>');
											App.unblockUI(pageContent);
										},
										async : false
									});
						});
	};
	// Handles Bootstrap Tooltips.
	var handleTooltips = function() {
		jQuery('.tooltips').tooltip();
	};
	
	var setupAjax = function() {
		// ajax setup
		$.ajaxSetup({
			cache : false,
			data : {
				"ajax" : "true"
			}
		});
	};
	
	var handleInput = function() {
		// Restrict any other content beside numbers
		$("body")
				.on(
						"keydown",
						":input.number",
						function(event) {
							// Allow: backspace, delete, tab,
							// escape, and enter
							if (event.keyCode == 46
									|| event.keyCode == 8
									|| event.keyCode == 9
									|| event.keyCode == 27
									|| event.keyCode == 13
									|| event.keyCode == 188
									|| event.keyCode == 190
									|| (event.keyCode == 65 && event.ctrlKey === true)
									// Allow: Ctrl+A
									|| (event.keyCode >= 35 && event.keyCode <= 39)) {
								// Allow: home, end, left, right
								// let it happen, don't do
								// anything
								return;
							} else {
								// Ensure that it is a number
								// and stop the keypress
								if (event.shiftKey
										|| (event.keyCode < 48 || event.keyCode > 57)
										&& (event.keyCode < 96 || event.keyCode > 105)) {
									event.preventDefault();
								}
							}
						});
	};
	return {
		// wrapper function to block element(indicate loading)
		blockUI : function(el, centerY) {
			var el = jQuery(el);
			if (el.height() <= 400) {
				centerY = true;
			}
			el.block({
				message : '<img src="' + frontThemeRoot
						+ '/img/ajax-loading.gif" align="">',
				centerY : centerY != undefined ? centerY : true,
				css : {
					top : '10%',
					border : 'none',
					padding : '2px',
					backgroundColor : 'none'
				},
				overlayCSS : {
					backgroundColor : '#000',
					opacity : 0.05,
					cursor : 'wait'
				}
			});
		},
		// wrapper function to un-block element(finish loading)
		unblockUI : function(el, clean) {
			jQuery(el).unblock({
				onUnblock : function() {
					jQuery(el).css('position', '');
					jQuery(el).css('zoom', '');
				}
			});
		},
		showMessages : function(msg) {
			var type = "success";
			var title = "成功信息";
			var msgs = msg.split(":");
			if (msgs.length > 1) {
				if ('err' == msgs[0]) {
					type = "danger";
					title = "错误信息";
				} else if ('warn' == msgs[0]) {
					type = "warning";
					title = "错误信息";
				} else if ('info' == msgs[0]) {
					type = "info";
					title = "提示信息";
				}
				msg = msgs[1];
			}

			var content = '<div class="alert alert-dismissable alert-'
					+ type
					+ ' fade in">'
					+ '<button type="button" class="close" data-dismiss="alert">×</button>'
					+ '<h4 class="alert-heading">' + title + '</h4>' + '<p>'
					+ msg + '</p>' + ' </div>';
			jQuery("#messages").html(content);
		},
		showError : function(msg) {
			var content = '<div class="alert alert-dismissable alert-danger fade in">'
					+ '<button type="button" class="close" data-dismiss="alert">×</button>'
					+ '<h4 class="alert-heading">系统错误</h4>'
					+ '<p>'
					+ msg
					+ '</p>' + ' </div>';
			jQuery("#messages").html(content);
		},
		initAjax : function() {
			handleTooltips(); // handle bootstrap tooltips
		},
		// main function to initiate the theme
		init : function() {
			setupAjax();
			handleTooltips();
			handleLinkAndForm();
			handleInput();
		}
	};
}();