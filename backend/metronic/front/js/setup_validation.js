(function() {
	function replaceAll(s, find, replace) {
		return s.replace(new RegExp(find, "gm"), replace);
	}
	if ($.fn.validate) {
		$.validator.methods.range = function(value, element, param) {
			var globalizedValue = replaceAll(value, ",", ".");
			return this.optional(element)
					|| (globalizedValue >= param[0] && globalizedValue <= param[1]);
		};
		$.validator.methods.number = function(value, element) {
			return this.optional(element)
					|| /^-?(?:\d+|\d{1,3}(?:[\s\.,]\d{3})+)(?:[\.,]\d+)?$/
							.test(value);
		};
		$.validator.methods.min = function(value, element, param) {
			var v = replaceAll(value, ",", "");
			return this.optional(element) || parseInt(v) >= parseInt(param);
		};

		$.validator.methods.max = function(value, element, param) {
			var v = replaceAll(value, ",", "");
			return this.optional(element) || parseInt(v) <= parseInt(param);
		};
		// 中文验证
		jQuery.validator.addMethod("cnCharset",
				function(value, element) {
					return this.optional(element)
							|| /^[\s\u4E00-\u9FA5]+$/.test(value);
				}, "请输入中文字");
		// 英文设定
		jQuery.validator.addMethod("enCharset", function(value, element) {
			return this.optional(element) || /^[\sA-Za-z]+$/.test(value);
		}, "请输入英文字母");
		// 邮政编码验证
		jQuery.validator.addMethod("zipcodeCN", function(value, element) {
			var tel = /^[0-9]{6}$/;
			return this.optional(element) || (tel.test(value));
		}, "请正确填写您的邮政编码");
		// 电话号码验证 电话号码格式010-12345678
		jQuery.validator.addMethod("phoneCN", function(value, element) {
			var tel = /^\d{3,4}-?\d{7,9}$/;
			return this.optional(element) || (tel.test(value));
		}, "请输入正确的电话号码");

		// 手机号码验证
		jQuery.validator.addMethod("mobileCN", function(value, element) {
			var length = value.length;
			var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
			return this.optional(element)
					|| (length == 11 && mobile.test(value));
		}, "请输入正确的手机号码");

		// 联系电话(手机/电话皆可)验证
		jQuery.validator.addMethod("phoneMobileCN", function(value, element) {
			var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
			var tel = /^\d{3,4}-?\d{7,9}$/;
			return this.optional(element)
					|| (tel.test(value) || mobile.test(value));
		}, "请输入正确的电话或手机号码");

		$.extend($.validator.defaults, {
			errorClass : "has-error",
			validClass : "has-success",

			highlight : function(element, errorClass, validClass) {
				if (element.type === 'radio') {
					this.findByName(element.name).addClass(errorClass)
							.removeClass(validClass);
				} else {
					$(element).addClass(errorClass).removeClass(validClass);
				}
				$(element).closest(".form-group").addClass(errorClass)
						.removeClass(validClass);
			},
			unhighlight : function(element, errorClass, validClass) {
				if (element.type === 'radio') {
					this.findByName(element.name).removeClass(errorClass)
							.addClass(validClass);
				} else {
					$(element).removeClass(errorClass).addClass(validClass);
				}
				$(element).closest(".form-group").removeClass(errorClass)
						.addClass(validClass);
			}
		});

		var _base_resetForm = $.validator.prototype.resetForm;
		$.extend($.validator.prototype, {
			resetForm : function() {
				_base_resetForm.call(this);
				this.elements().closest('.form-group').removeClass(
						this.settings.errorClass + ' '
								+ this.settings.validClass);
			},
			success : function(label, element) {
				var icon = $(element).parent('.input-icon').children('i');
				$(element).closest('.form-group').removeClass('has-error')
						.addClass('has-success'); // set success class to the
				// control group
				icon.removeClass("fa-warning").addClass("fa-check");
			},
			showLabel : function(element, message) {
				var label = this.errorsFor(element);
				if (label.length) {
					// refresh error/success class
					label.removeClass(this.settings.validClass).addClass(
							this.settings.errorClass);

					// check if we have a generated label, replace the message
					// then
					if (label.attr("generated")) {
						label.html(message);
					}
				} else {
					// create label
					label = $("<" + this.settings.errorElement + "/>").attr({
						"for" : this.idOrName(element),
						generated : true
					}).addClass(this.settings.errorClass)
							.addClass('help-block').html(message || "");
					if (this.settings.wrapper) {
						// make sure the element is visible, even in IE actually
						// showing the wrapped element is handled elsewhere
						label = label.hide().show().wrap(
								"<" + this.settings.wrapper + "/>").parent();
					}
					if (!this.labelContainer.append(label).length) {
						if (this.settings.errorPlacement) {
							this.settings.errorPlacement(label, $(element));
						} else {
							$(element).parent().append(label);
						}
					}
				}
				if (!message && this.settings.success) {
					label.text("");
					if (typeof this.settings.success === "string") {
						label.addClass(this.settings.success);
					} else {
						this.settings.success(label, element);
					}
				}
				this.toShow = this.toShow.add(label);
			}
		});
	}
})();