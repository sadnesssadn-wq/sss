//
//	PePLink Balance Web Administration Interface
//		Menu Construction Library
//
//	$Id: menulib.js,v 1.80 2014/05/19 02:17:16 kayeet Exp $
//
//	by Kenny Kwok
//	2006/02/16
//
//	Copyright (c) 2005, PePLink Limited. All Rights Preserved
//
//

// Navigation Functions

function goto_menu(idx)
{
	var	w = window,
		has_dedicated_outbound_page = !!(w.support_outbound_policy && !w.support_unoactive),
		option = "main";
	if (typeof(idx) == "string") {
		idx = idx.toLowerCase();
	}
	switch (idx) {
	case "localap":
		option = w.support_rwa ? "wlan" : "";
		break;
	case "extap":
		option = w.support_rwa ?
			(w.support_access_point ? "extapnetwork" : "extapgeneral") :
			(w.support_extap_status_adv ? "extap_wlan_report" : "");
		break;
	case "extsw":
		option = "extsw_lan";
		break;
	case "hasync_system":
		option = "hasync_firmware";
		break;
	case 7: case "wireless_advanced":
		// Please refer leftmenu_wireless_advanced.html for exact logic
		// FIXME: Logic is very complicated to get in-sync... need better approach!
		option = w.support_multi_site_vpn || w.support_dual_site_vpn ||
			w.support_single_site_vpn ? "advmvpn" :
			(w.support_ipsec ? "ipsec" :
			(has_dedicated_outbound_page ? "outboundpolicy" :
			(w.support_inbound_mapping ?
				(!w.support_in_llb ?
				"inbounddistribution_b20" :
				"natmap") :
			(w.support_webproxy ? "webproxy" :
			(w.support_webproxy_hub || w.support_webproxy_hub_trial ?
				"contenthub" :
			(w.support_docker ? "docker" :
			(w.support_mmdm ? "mdm_settings" :
			(w.support_eqos ?
				(w.support_eqos_group ? "eqos_group" :
				(w.support_eqos_gsmb || w.support_eqos_bandwidth ?
				"eqos_bandwidth" :
				"eqos_priority")) :
			(w.support_firewall ? "firewall" :
			(w.support_ospf ? "ospf" :
			(w.support_bgp ? "bgp" :
			(w.support_pptp ? "pptp" :
			(w.support_high_availability ? "ha" :
			"x509")))))))))))));
		break;
	case 6: case "wireless":
		option = "advlan";
		break;
	case 5: case "status":
		if (get_current_vrf_id()) {
			option = "pepvpnstatus";
		} else {
			option = "utsysinfo";
		}
		break;
	case 4: case "system": case "utilities":
		option = w.support_rwa ? "admin" : "firmware";
		break;
	case 3: case "network": case "advsetup":
		if (get_current_vrf_id()) {
			option = "advmvpn";
		} else if (w.support_hub) {
			option = w.support_hub_phylan ?
				"hublan" : "hubwanlan";
		} else if (!w.support_max) {
			option = w.support_stable_connection ?
				"connection" : "waninfo";
		} else {
			option = "advlan";
		}
		break;
	case 2: case "wizard":
		option = "qzwan2";
		break;
	case 10: case "mdm":
		option = "mdm";
		break;
	case "logout":
		option = "logout";
		break;
	case 0: case "main": default:
		option = "main";
		break;
	}
	return goto_page(option);
}

function __load_page(mode, option, custom_param)
{
	var	param = {
			mode: mode,
			option: option
		},
		url = [
			"?",
			$.param(param),
			custom_param ? "&" + custom_param : ""
		].join("");
	window.location = url;
	return false;
}

function goto_page(option, custom_param)
{
	return __load_page("config", option, custom_param);
}

function submit_page(option, custom_param)
{
	return __load_page("submit", option, custom_param);
}

//	Construction Helper Functions (requires jQuery 1.7+)
// {{{ function auto_unit()
;(function(root) {

	// TODO: _unit is just a temp reference, we should further refine
	//	details into basic info / default style, such that style
	//	can be overridden from run-time parameters
	var	_unit = {
			"bps":	{
				family: "speed",
				scale: 1
			},
			"kbps": {
				family: "speed",
				scale: 1000
			},
			"Mbps": {
				family: "speed",
				scale: 1000*1000
			},
			"Gbps": {
				family: "speed",
				scale: 1000*1000*1000
			},
			"B": {
				family: "size",
				scale: 1
			},
			"KB": {
				family: "size",
				scale: 1024
			},
			"MB": {
				family: "size",
				scale: 1024*1024
			},
			"GB": {
				family: "size",
				scale: 1024*1024*1024
			},
			"TB": {
				family: "size",
				scale: 1024*1024*1024*1024
			},
			"PB": {
				family: "size",
				scale: 1024*1024*1024*1024*1024
			},
			"EB": {
				family: "size",
				scale: 1024*1024*1024*1024*1024*1024
			},
			"W": {
				family: "power",
				scale: 1
			},
			"kW": {
				family: "power",
				scale: 1000
			},
			"&#xb0;C": {
				family: "temperature-celsius",
				scale: 1
			},
			"&#xb0;F": {
				family: "temperature-fahrenheit",
				scale: 1
			},
			"&#x2103;": {
				family: "temperature-celsius-alt",
				scale: 1
			},
			"&#x2109;": {
				family: "temperature-fahrenheit-alt",
				scale: 1
			},
			"second": {
				family: "time",
				plural: "seconds",
				scale: 1
			},
			"minute": {
				family: "time",
				plural: "minutes",
				scale: 60
			},
			"hour": {
				family: "time",
				plural: "hours",
				scale: 60*60
			},
			"day": {
				family: "time",
				plural: "days",
				scale: 60*60*24
			}
		},
		_format = {
			"fraction": {
				"*": {
					dp: 2
				},
				"bps": {
					dp: 0
				},
				"kbps": {
					dp: 1
				},
				"B": {
					dp: 0
				},
				"KB": {
					dp: 1
				},
				"W": {
					dp: 1
				},
				"kW": {
					dp: 1
				},
				"&#xb0;C": {
					dp: 1
				},
				"&#xb0;F": {
					dp: 1
				},
				"&#x2103;": {
					dp: 1
				},
				"&#x2109;": {
					dp: 1
				},
				"second": {
					dp: 0
				},
				"minute": {
					dp: 0
				},
				"hour": {
					dp: 0
				},
				"day": {
					dp: 0
				}
			},
			"sig_fig": {
				"*": {
					digits: 3
				},
				"second": {
					digits: 0
				},
				"minute": {
					digits: 0
				},
				"hour": {
					digits: 0
				},
				"day": {
					digits: 0
				}
			},
			"round_down": {
				"*": {
					round_down: true
				}
			}
		},
		_mode = {
			"default": {
				format: "fraction"
			},
			"sig_fig": {
				format: "sig_fig"
			},
			"integer": {
				format: "*"
			},
			"round_down": {
				format: "round_down"
			}
		},
		get_format = function(mode) {
			var	name = (_mode[mode] || {})["format"];
			return _format[name] || {};
		},
		is_plural = function(v) {
			return +v == 1 ? 0 : 1;	// Valid for English
		};

	$.each(_unit, function(s, o) { o["unit"] = s; });

	$.extend(root, {
		auto_unit: function(v, u, _param) {
			var	param = _param || {},
				mode = param["mode"] || "default",
				base_format = get_format(mode),
				profile = _unit[u], sep;
			if (profile && profile["scale"])
			{	// Unit Conversion
				var	sel_profile = profile, sel_format;
				$.each(_unit, function(name, o) {
					if (o["family"] != profile["family"]) return;
					if (!(o["scale"] > sel_profile["scale"])) return;
					if (o["scale"] / profile["scale"] > v) return;
					if (mode == "integer" &&
						(o["scale"] % profile["scale"] != 0 ||
						v % (o["scale"] / profile["scale"]) != 0)) return;
					sel_profile = o;
					return;
				});
				if (sel_profile != profile)
				{
					v = +v;
					v /= (sel_profile["scale"] / profile["scale"]);
				}

				sel_format = $.extend(true, {},
					base_format["*"] || {},
					base_format[sel_profile["unit"]] || {});
				if ($.isPlainObject(param["format"]))
				{
					$.extend(true, sel_format,
						param["format"]["*"] || {},
						param["format"][sel_profile["unit"]] || {});
				}
				if (sel_format["round_down"]) {
					v = Math.floor(v);
				}
				if (sel_format["dp"] !== undefined)
				{
					v = v.toFixed(sel_format["dp"] || 0);
				}
				if (sel_format["digits"] !== undefined) {
					v = v >= Math.pow(10,
						sel_format["digits"]) ?
						Math.floor(v) :
						v.toPrecision(sel_format["digits"]);
				}
				u = sel_profile["plural"] && is_plural(v) ?
					sel_profile["plural"] : sel_profile["name"] || sel_profile["unit"];
				sep = sel_format["sep"];
			}
			return [ v, u ].join(sep || " ");
		}
	});

})(window);

// }}}
// {{{ function get_random_number()
;(function(root) {
	root.get_random_number = function() {
		return Math.floor(Math.random()*899999999 + 100000000);
	}
})(window);

// }}}
// {{{ function create_radio_input()
// create_radio_input
//	name = (required)
//		"name"
//	val_list = (required)
//		[ "text", ... ]				// Display text of radio with value 0, 1, 2, ...
//	or
//		[ {
//			text: "text",			// Display text of radio
//			value: "value",			// Value of radio
//			block: true,			// Optional Line-by-line block display (explicit for this item)
//			className: "class",		// Optional class name to apply to radio (explicit for this item)
//			itemClassName: "class"		// Optional class name to apply to the item (The whole label for this radio and text)
//		}, ... ]
//	or
//		{
//			"value": "text",		// Value and display text of radio
//			...
//		}
//	or
//		{
//			"xxx": {
//				text: "text",		// Display text of radio
//				value: "value",		// Value of radio
//				className: "class"	// Optional class name on radio
//				__class: "class"	// (deprecated) same as className
//		}, ... }
//	_param = (optional)
//		{
//			"defaultValue": "a",	// Initial check value (explicite false will make all radio unchecked by default)
//			"block": true,		// Line-by-line block display (in general)
//			"className": "cls",	// Class name to apply to every radio input
//			"delimiter": "delimiter"	// Custom separtor between each item
//		}
//	or
//		"def_value"	// Legacy (deprecated)
//	_delim = (optional)
//		"delimiter"	// Legacy (deprecated)
var create_radio_input = function(name, val_list, _param, _delim) {
	var	$ = jQuery,
		param = $.isPlainObject(_param) ?
			_param : { defaultvalue: _param },
		is_block = !!param["block"],
		def_val = param["defaultvalue"] === false ? undefined :
			(param["defaultValue"] || []),	// Hacky []
		delim = param["delimiter"] || _delim || (is_block ? "" : " "),
		arr = $.map(val_list, function(_o, v) {
			var	o = $.isPlainObject(_o) ? _o : { text: _o },
				val = o["value"] != undefined ? o["value"] : v,
				cls = o["className"] || o["__class"] ||
					param["className"];
				labcls = o["itemClassName"];
				inp = $("<input/>", {
					type: "radio",
					name: name
				}).val(val),
				lab = $("<label/>").append(
					inp, " ",  o["text"] || v, delim
				),
				labblk = o["block"] === undefined ? is_block : !!o["block"];
			if (def_val == val) {
				inp.prop("defaultChecked", true);
				inp.prop("checked", true);
				def_val = undefined;
			}
			if (cls) {
				inp.addClass(cls);
			}
			if (labcls) {
				lab.addClass(labcls);
			}
			if (labblk) {
				lab.css({ display: "block" });
			}
			return lab;
		});
	if (def_val && arr.length) {
		// Hacky [] drives here, giving default first radio check
		arr[0].find("input").prop("checked", true);
	}
	return arr;
};
// }}}
// {{{ function create_checkbox()
//
// list: array of checkboxes description
//	[ {
//		"name": "checkbox_name",
//		"value": "checkbox_value",
//		"text": "display_text",
//		"__class": "input_classes",
//		"itemClassName": "class"	// Optional class name to apply to the item (The whole label for this radio and text)
//	}, ... ]
// or (in legacy style, deprecated)
//	{
//		"checkbox_name": {
//			"value": "checkbox_value",
//			"text": "display_text",
//			"__class": "input_classes"
//		}, ... }
//
// _param: varies paramters
//	{
//		"name": "default_name (if checkbox_name not defined)",
//		"__class": "default_input_classes",
//		"default_value": "pre-check boxes with this value",
//		"delimiter": "delimiter object between each checkboxes"
//	}
// or (in legacy style, deprecated)
//	string	"pre-check boxes with this value"
//
// _delimiter (legacy style, drepcated)
//	delimiter object between each checkboxes
//
(function(root) {
	var	$ = root.jQuery;
	root.create_checkbox = function(list, _param, _delimiter) {
		// Parameters checking
		var	param = {
				"name": "",
				"delimiter": " "
			}, arr;
		if ($.isPlainObject(list)) {
			// Checking list in legacy way...
			list = $.map(list, function(o, _name) {
				return $.isPlainObject(o) ? $.extend({
					"name": _name
				}, o) : null;
			});
		}
		if ($.isPlainObject(_param)) {
			$.extend(param, _param);
		} else {
			// Checking params in legacy way...
			if (_e(_param)) {
				param["default_value"] = _param;
			}
			if (_delimiter) {
				param["delimiter"] = _delimiter;
			}
		}

		// Create checkboxes
		arr = $.map(Array.isArray(list) ? list : [], function(o) {
			var	labcls = o["itemClassName"],
				cb = $("<input/>", {
					"type": "checkbox",
					"name": o["name"] || param["name"]
				}).val(o["value"]),
				lab = $("<label/>").text(o["text"] || "")
					.prepend(cb, " ", o["content"] || "")
					.append(param["delimiter"]);
			if (o["__class"]) {
				cb.addClass(o["__class"]);
			}
			if (param["__class"]) {
				cb.addClass(param["__class"]);
			}
			if (o["value"] == param["default_value"]) {
				cb.prop("checked", true);
			}
			if (labcls) {
				lab.addClass(labcls);
			}
			return lab;
		});
		return arr;
	}
})(window);
// }}}
// {{{ function create_hidden_input()
var create_hidden_input = function(_name, _val) {
	return $("<input/>", { "type": "hidden", "name": _name }).val(_val || "");
};
// }}}
// {{{ function create_mac_input()
//	Parameter list is (temporarily) to be confirmed.
(function(w) {
	var	regex_double_colon = /:(:\w*)$/,
		regex_good_partial = /^[\da-f]{2}(:[\da-f]{2}){0,4}$/i,
		change_func = function(e) {
			var	o = $(this),
				prev = o.data("prev") || "",
				oriv = o.val(),
				v = trim(oriv);
			switch (e.which) {
			case 8:	// Backspace, universal notation in browsers
				if (prev.slice(-1) == ":" &&
					regex_good_partial.test(v)) {
				// Remove trialing ":" (plus last hex digit)
					v = v.slice(0, -1);
				}
			default:
				if (regex_double_colon.test(v)) {
				// Prohibit double trialing ":"
					v = v.replace(regex_double_colon, ":");
				} else if (regex_good_partial.test(v)) {
				// Insert hex digit (and auto trialing ":")
					v += ":";
				}
				break;
			}
			// [Bug#13995] Valid MAC Address Normalization
			if (/^[\da-f]{2}(-[\da-f]{2}){5}$/i.test(v)) {
				v = v.replace(/-/g, ":");
			}
			if (v != oriv) {
				o.val(v);
			}
			if (v != prev) {
				o.data("prev", v);
			}
		};

	w.create_mac_input = function(_param) {
		var	param = _param || {},
			attr = {
				maxlength: 17
			};
		if (_e(param["name"])) {
			attr["name"] = param["name"];
		}
		if (param["placeholder"] == undefined || param["placeholder"] == true) {
			attr["placeholder"] = "00:00:00:00:00:00";
		}
		return $("<input/>", attr).val(param["value"] || "")
		.on("change keyup", change_func);
	};
})(window);
// }}}
// {{{ function create_form_title()
var create_form_title = function(title, help_id, colspan) {
	var o = $("<td/>").append(
		(!!help_id? $("<div/>").addClass("helpIcon").data("help", help_id): ""),
		title
	);
	if (colspan != 1)
	{
		o.attr("colspan", (colspan > 0? +colspan: 2));
	}
	return $("<tr/>").addClass("tabletitle").append(o);
};

// }}}
// {{{ function create_form_row() / create_form_row_with_columns()
var create_form_row = function(title, content, help_id) {
	var	div = $("<div/>").addClass("form_field");
	if (title instanceof jQuery) {
		div.append(title);
	} else {
		div.text(title);
	}
	return $("<tr/>").addClass("tablecontent2").append(
		$("<td/>").addClass("tabletitle2 form_legend").append(
			(!!help_id? $("<div/>").addClass("helpIcon").data("help", help_id): ""),
			div
		),
		$("<td/>").append(content)
	);
};
var create_form_row_with_columns = function(title, content, help_id, title_width_perc, even_content_width)
{
	// help_id = -1 is a special case we were used to describe "No help please",
	// it is obsolete and should not be used anymore
	// The proper notation should be simply null or undefined
	var	f_arr = (Array.isArray(content)? content: [ content ]),
		o = $("<tr/>").addClass("tablecontent2").append(
			$("<td/>").addClass("tabletitle2 form_legend").append(
				(help_id && help_id != -1? $("<div/>").addClass("helpIcon").data("help", help_id): ""),
				$("<div/>").addClass("form_field").text(title)
			),
			$.map(f_arr, function(v) { return $("<td/>").append(v); })
		),
		t_width = (title_width_perc? title_width_perc + "%": undefined),
		f_width = (title_width_perc && even_content_width?
			Math.floor((100 - title_width_perc) / f_arr.length) + "%": undefined);
	if (t_width) { o.children("td:first").width(t_width); }
	if (f_width) { o.children("td:not(:first)").width(f_width); }
	if (f_arr.length == 1) { o.children("td:last").attr({ colspan: "9" }) }
	return o;
};

// }}}
// {{{ function create_option_array()
var	create_option_array = function(_param) {
		var	param = _param || [],
			isArray = Array.isArray(param),
			isPlainObject = $.isPlainObject(param);
		return $.map(param, function(o, i) {
			var	v, t;
			if (isPlainObject) {
				v = i;
				t = o;
			} else if (Array.isArray(o)) {
				v = o[0];
				t = o.length > 1 ? o[1] : v;
			} else {
				v = t = o;
			}
			return $("<option/>").val(v).text(t);
		}) || [];
	};

// }}}
// {{{ function create_multiip_panel()
var	create_multiip_panel = function(_param) {

		var	param = _param || {},
			div = param["panel"] || $("<div/>"),
			pfx = "_multiip", sfx = get_random_number(),
			style = param["style"] == "range" ? "range" : "netmask",
			ip_name = [ pfx, "ip", "ui", sfx ].join("_"),
			nm_name = [ pfx, "nm", "ui", sfx ].join("_"),
			rg_name = [ pfx, "rg", "ui", sfx ].join("_"),
			select_name = param["name"] || "_muiltiip_sl_ui",
			common_css = {
				"box-sizing": "border-box",
				"width": "100%"
			},
			box_css = $.extend({}, common_css, {
				"display": "block"
			}),
			nm_css = $.extend({}, common_css, {
				"width": "180px"
			}),
			ip_css = style == "netmask" ? nm_css : $.extend({}, common_css, {
				"width": "130px"
			}),
			rg_css = $.extend({}, common_css, {
				"width": "40px"
			});

		div.addClass("multiip_panel").data({
			"style": style,
			"ip_name": ip_name,
			"nm_name": nm_name,
			"rg_name": rg_name,
			"select_name": select_name
		});

		div.append(
			$("<div/>").append(
				$("<div/>").css($.extend({}, box_css, {
					"margin":"0 auto",
					"border":"1px solid black",
					"padding":"2px",
					"text-align":"right"
				})).append(
					"IP Address ",
					$("<input/>", {
						"name": ip_name,
						"maxlength": "15"
					}).css(ip_css)
					.addClass("multiip_ip_action"),
					$("<span/>").addClass("style_range hide")
					.append(
						" - ",
						$("<input/>", {
							"name": rg_name,
							"maxlength": "3"
						}).css(rg_css)
						.addClass("multiip_ip_action")
					),
					$("<span/>").addClass("style_netmask hide")
					.append(
						"<br>",
						"Subnet Mask ",
						$("<select/>", {
							"name": nm_name
						}).css(nm_css)
						.append(get_netmask_options(24, 32))
						.val(32)
					)
				),
				$("<div/>").append(
					$("<button/>", {
						type:"button",
						disabled: true
					})
					.addClass("icon downarrowIcon fa multiip_add_action")
				),
				$("<select/>", {
					"name": select_name,
					"multiple": "multiple"
				}).attr("size", "5").css(box_css)
				.addClass("multiip_sel_action")
			).css({
				"display": "inline-block",
				"width": "300px",
				"vertical-align": "bottom",
				"text-align": "center"
			}),
			$("<button/>", {
				type: "button",
				disabled: true
			}).addClass("icon trashIcon fa multiip_del_action")
		);
		div.find(".style_" + style).toggleClass("hide", false);

		// Event handler
		div
		.on("__add_ip_range", function(e, ipn, count) {
			// NOTE: Internal helper, no validation done here,
			// Please ensure caller is well behaved
			var	me = $(this),
				o = me.find("select[name=" +
					me.data("select_name") + "]"),
				range = {
					min: ipn,
					max: ipn + (count - 1)
				},
				dup = {}, arr;

			// Duplicated IP address checking
			o.find("option").each(function() {
				var	v = inet_aton($(this).val());
				if (checkIntFormat(v, range)) {
					dup[v] = true;
				}
			});
			if (!$.isEmptyObject(dup)) {
				err("Some IP address(es) in the input range are already there");
			}

			// Compose insertion options
			arr = $.map(new Array(count), function(_, i) {
				var	v = ipn + i;
				return dup[v] ? null : inet_ntoa(v);
			});
			o.append(create_option_array(arr));
		})
		.on("__reset_box_input", function(e) {
			var	me = $(this);
			$.each([ "ip_name", "rg_name" ], function(_, s) {
				me.find("[name=\"" + me.data(s) + "\"]").val("");
			});
			me.triggerHandler("check_action");
		})
		.on("__reset", function(e) {
			var	me = $(this), o;

			me.triggerHandler("__reset_box_input");

			o = me.find("[name=\"" + me.data("nm_name") + "\"]");
			o.val(me.data("default_nm") || "32");

			o = me.find("[name=\"" + me.data("select_name") + "\"]");
			o.empty();
		})
		.on("get", function(e) {
			var	me = $(this),
				o,
				dup = {};
			o = me.find("[name=\"" + me.data("select_name") + "\"]");
			return o.find("option").map(function() {
				var	v = $(this).val();
					ret = dup[v] ? null : v;
				dup[v] = true;
				return ret;
			}).get();
		})
		.on("set", function(e, list, should_reset) {
			var	me = $(this),
				o,
				dup = {}, arr;

			if (should_reset) {
				me.triggerHandler("__reset");
			}

			if (!Array.isArray(list) || !list.length) {
				// Nothing to set
				return;
			}

			// Duplicate IP address check-up preparation
			o = me.find("[name=\"" + me.data("select_name") + "\"]");
			o.find("option").each(function() {
				dup[$(this).val()] = true;
			});

			// Compose insertion options
			arr = $.map(list, function(v) {
				var	ret = dup[v] ? null : v;
				dup[v] = true;
				return ret;
			})
			o.append(create_option_array(arr));
		})
		.on("fetch_box_input", function(e) {
			var	me = $(this),
				o = me.find("[name=\"" +
					me.data("ip_name") + "\"]"),
				v = trim(o.val()),
				range, mask, ipn, count,
				dup;
			if (checkIPFormat(v)) {
				switch (me.data("style")) {
				case "range":
					ipn = inet_aton(v);
					range = {
						min: inet_aton(v) % 256,
						max: 255
					};
					v = trim(me.find("[name=\"" +
						me.data("rg_name") + "\"]").val());
					if (isempty(v)) {
						count = 1;
					} else if (checkIntFormat(v, range)) {
						count = v - range["min"] + 1;
					}
					break;
				case "netmask":
				default:
					// Setup the IP / Range
					mask = inet_aton(netmask_ntoa(me.find("[name=\"" +
						me.data("nm_name") + "\"]").val()));
					ipn = inet_aton(v) & mask;
					count = (ipn | ~mask) - ipn + 1;

					// Special Hack for Network / Broadcast removal in general
					//	when the network has more than 2 IP addresses
					if (count > 2) {
						ipn++;
						count -= 2;
					}
					break;
				}
			}

			return count > 0 ? [ ipn, count ] : null;
		})
		.on("check_action", function(e) {
			var	me = $(this),
				is_valid = !!me.triggerHandler("fetch_box_input"),
				is_selected = _e(me.find("[name=\"" +
					me.data("select_name") + "\"]").val());
			me.find(".multiip_add_action")
			.prop("disabled", !is_valid);
			me.find(".multiip_del_action")
			.prop("disabled", !is_selected);
			return is_valid;
		})
		.on("add_action", function(e) {
			var	me = $(this),
				info = me.triggerHandler("fetch_box_input");

			if (info) {
				me.triggerHandler("__add_ip_range", info);
				me.triggerHandler("__reset_box_input");
				try {
					me.find("input:first").focus();
				} catch (e) {}
			}
		})
		.on("del_action", function(e) {
			var	me = $(this),
				o = me.find("[name=\"" +
					me.data("select_name") + "\"]")
					.find("option:selected");
			if (_e(o)) {
				o.remove();
				me.triggerHandler("check_action");
			}
		})
		.on("change keyup cut paste", ".multiip_ip_action", function(e) {
			var	me = $(e.delegateTarget),
				v;

			switch (e.which) {
			default:
				v = [
					me.find("[name=\"" +
					me.data("ip_name") + "\"]").val(),
					me.find("[name=\"" +
					me.data("rg_name") + "\"]").val()
				].join("-");
				if (me.data("cached_input") !== v) {
					me.data("cached_input", v);
					me.triggerHandler("check_action");
				}
				break;
			case 13:	// Enter key
				me.triggerHandler("add_action");
				break;
			}
		})
		.on("change keyup", ".multiip_sel_action", function(e) {
			var	me = $(e.delegateTarget),
				is_selected;

			switch (e.which) {
			default:
				is_selected = me.find("[name=\"" +
					me.data("select_name") + "\"]").val();
				if (me.data("cached_select") !== is_selected) {
					me.data("cached_select", is_selected);
					me.triggerHandler("check_action");
				}
				break;
			case 8:		// Backspace key
			case 46:	// Delete key
				me.triggerHandler("del_action");
				break;
			}
		})
		.on("click", ".multiip_add_action", function(e) {
			var	me = $(e.delegateTarget);
			me.triggerHandler("add_action");
		})
		.on("click", ".multiip_del_action", function(e) {
			var	me = $(e.delegateTarget);
			me.triggerHandler("del_action");
		})

		return div;
	};

// }}}
// {{{ function create_network_list_panel
var	create_network_list_panel = function(_param) {

		var	param = _param || {},
			div = param["panel"] || $("<div/>"),
			nm_css = {
				"width": "200px"
			},
			box_css = {
				"box-sizing": "border-box",
				"width": "100%"
			},
			ip_field = $("<input/>", {
				"name": "_ip",
				"maxlength": "15",
				"autocomlpete": "off"
			}),
			mask_field = $("<select/>", {
				"name": "_mask",
				"default_value": "24"
			}).append(get_netmask_options(1, 30)),
			grid_table = create_grid_table({
				title_row: $("<tr/>").addClass("tablecontent3").append(
					$("<td/>").text("IP Address"),
					$("<td/>").text("Subnet Mask").css(nm_css)
				),
				data_row: $("<tr/>").append(
					$("<td/>").append(
						ip_field.clone().css(box_css)
					),
					$("<td/>").append(
						mask_field.clone().css(box_css)
					).css(nm_css)
				),
				init_validator: function(cache) {
					var	me = $(this),
						serialize_func = function(ipa, maskn) {
							return [
								inet_aton(ipa),
								inet_aton(netmask_ntoa(maskn))
							];
						}, o;

					cache["__func"] = {
						"serialize": serialize_func,
						"is_network": function(s_arr) {
							var	n = s_arr[0],
								m = s_arr[1];
							// Comparison normalized as
							// [ -2^32, 2^32 - 1 ]
							return (n & m) == (n | 0);
						},
						"is_broadcast": function(s_arr) {
							var	n = s_arr[0],
								m = s_arr[1];
							// Comparison normalized as
							// [ -2^32, 2^32 - 1 ]
							return (n | (m ^ 0xFFFFFFFF)) == (n | 0);
						},
						"is_overlap": function(s_arr_1, s_arr_2) {
							var	n1 = s_arr_1[0],
								m1 = s_arr_1[1],
								n2 = s_arr_2[0],
								m2 = s_arr_2[1];
							return (n1 & m1 & m2) == (n2 & m1 & m2);
						}
					};

					cache["bag"] = [];
					o = me.data("lan");
					if (o) {
						cache["bag"].push(serialize_func(o["ip"], o["mask"]));
					}
				},
				row_validator: function(row, cache) {
					var	ret,
						o, v,
						arr = [];

					// IP Address
					o = row.find("[name=_ip]");
					o.val(trim(o.val()));
					if (isempty(o.val())) {
						return null;
					}
					if (!checkIPFormat(o.val())) {
						return err("Invalid IP Address", o);
					}

					// Network / Mask Checking
					arr = cache["__func"]["serialize"](
						o.val(),
						row.find("[name=_mask]")
						.find("option:selected").val());
					if (cache["__func"]["is_network"](arr)) {
						return err("Network Address is not allowed", o);
					} else if (cache["__func"]["is_broadcast"](arr)) {
						return err("Broadcast Address is not allowed", o);
					} else {
						ret = true;
						$.each(cache["bag"], function(_, v) {
							if (cache["__func"]["is_overlap"](arr, v)) {
								ret = err("Network overlap with " + inet_ntoa(v[0]), o);
							}
							return ret;
						});
						if (!ret) {
							return ret;
						}
					}

					cache["bag"].push(arr);
					return true;
				}
			}),
			o;

		div.addClass("network_list_panel");

		div.append(
			grid_table
		);

		div
		.on("__reset", function(e) {
			var	me = $(this);

			// Grid Table
			me.find(".grid_table")
			.removeData("lan")
			.triggerHandler("matrix_reset");
		})
		.on("set", function(e, _list) {
			var	me = $(this),
				list = Array.isArray(_list) ? _list : [ _list ],
				o = list[0] || {},
				show_multi = !!(list.length > 1);

			// Grid Table
			me.find(".grid_table")
			.triggerHandler("matrix_set", [ list ]);
		})
		.on("get", function(e, _param) {
			var	me = $(this),
				param = _param || {},
				o, list;

			o = me.find(".grid_table");

			o.data("lan", param["lan_ip"] && param["lan_mask"] ? {
				"ip": param["lan_ip"],
				"mask": param["lan_mask"]
			} : false);

			list = o.triggerHandler("matrix_export", [ param ]);
			return list;
		});

		div.triggerHandler("__reset");
		return div;
	};

// }}}

(function(w) {
	// Standard jQuery Dialog Parameter for Add / Edit dialog
	w.std_dialog_param = function() {
		return {
			"draggable": false,
			"resizable": false,
			"autoOpen": false,
			"modal": true,
			"width": "800px",
			"position": {
				my: "left+160 top+70",
				at: "left top",
				collision: "none"
			}
		};
	};

	// Commonly used save bar display with [Save] button at center
	w.create_save_div = function(_param) {
		var	param = _param || {};	// Reserved for expansion
		return $("<div/>").append(
			$("<button/>", {
				type: "button"
			})
			.addClass("icon save_action")
			.text(param["text"] || "Save")
		).css({
			"text-align": "center"
		});
	};

	// Commonly used loading bar display with spinning wheel at center
	w.create_loading_div = function(_param) {
		var	param = _param || {},
			css = $.extend({
				margin: "0 auto"
			}, param["css"] || {});
		return $("<div/>").css(css).addClass("loadIcon");
	};
})(window);

// function create_led_icon() - Experimental
(function(w) {

	var	set_state_func = function(e, state) {
			var	me = $(this),
				cls_list = [ "ledIcon", "ledSpinner" ],
				cls = [ "ledIcon" ],
				color;
			switch (state) {
			case "red":
				color = "#ea7d75";
				break;
			case "green":
				color = "#92F22A";
				break;
			case "yellow":
				color = "gold";
				break;
			case "gray":
				color = "lightGray";
				break;
			case "flash":
				cls = [ "ledSpinner" ];
				break;
			case "empty":
			default:
				cls = [];
				break;
			}
			if (me.data("state") != state) {
				me.data("state", state)
				.toggleClass(cls_list.join(" "), false)
				.toggleClass(cls.join(" "), true)
				.css("color", color || "");
			}
		};

	w.create_led_icon = function(init_state) {
		var	o = $("<span/>").addClass("fa fa-fw ledIcon");
		o.on("set_state", set_state_func);
		if (init_state) {
			o.triggerHandler("set_state", [ init_state ]);
		}
		return o;
	};

})(window);

function getWebProxyStr()
{
	return window.webproxy_name || "";
}
function getSpeedFusionTrialTitle(type)
{
	var title = "";
	switch (type)
	{
	case "sf":
		title = "SpeedFusion Bonding";
		break;
	case "sf_llb":
		title = "SpeedFusion Bonding & Link Load Balancing";
		break;
	case "ws":
		title = "SpeedFusion WAN Smoothing";
		break;
	case "ws_llb":
		title = "SpeedFusion WAN Smoothing & Link Load Balancing";
		break;
	case "hf":
		title = "SpeedFusion Hot Failover";
		break;
	case "hf_llb":
		title = "SpeedFusion Hot Failover & Link Load Balancing";
		break;
	default:
		break;
	}
	return title;
}
function getSpeedFusionStr(param)
{
	var	w = window,
		is_pep = /^peplink|pepwave$/i.test(w.comname),
		mvpn_mode = w.support_mvpn_mode,
		// 4: Bonding, 3: WAN Smoothing, 2: Persist, 1: Basic
		is_sf = (mvpn_mode == 4 || mvpn_mode == 3 || mvpn_mode == 2);
	{
		var l=window,I=l.r0t1e,I=I(l.oemid),l=0>$.inArray(I,l.r0tle);
		if (I=="cnggba") { return "WAN Bonding"; }
	}
	return (!is_pep? "Site-to-Site VPN":
		(!is_sf? "PepVPN":
		(param && param["full"]? "PepVPN with SpeedFusion":
		(param && param["tm"]? "SpeedFusion":
		"PepVPN"
	))));
}
function getPortSpeedMap(v)
{
	var extsw_speed = {
		"auto": "Auto",
		"10000FD": "10 Gbps Full Duplex",
		"5000FD": "5 Gbps Full Duplex",
		"2500FD": "2.5 Gbps Full Duplex",
		"1000FD": "1 Gbps Full Duplex",
		"100FD": "100 Mbps Full Duplex",
		"100HD": "100 Mbps Half Duplex",
		"10FD": "10 Mbps Full Duplex",
		"10HD": "10 Mbps Half Duplex"
	};
	var speed = {
		"Auto": "Auto",
		"1000baseTx-FD": "1 Gbps Full Duplex",
		"100baseTx-FD": "100 Mbps Full Duplex",
		"100baseTx-HD": "100 Mbps Half Duplex",
		"10baseT-FD": "10 Mbps Full Duplex",
		"10baseT-HD": "10 Mbps Half Duplex"
	};
	// TODO: Seems only allow 10Gbps for EPX [2019/01/28 Kayee]
	var module_speed = $.extend({
		"10000baseTx-FD": "10 Gbps Full Duplex"
	}, speed);
	if (v === undefined) {
		return window.support_extsw ? extsw_speed :
			window.support_module ? module_speed :speed;
	} else {
		return module_speed[v] || extsw_speed[v];
	}
}
function get_pepvpn_display_name(mvpn)
{
	var master_o = {};
	var master_order = [];
	var ret = {};
	var order = [];
	$.each(mvpn["_order"], function(_, id) {
		var o = mvpn[id];
		var master_id = mvpn[id]["master"];
		if (!master_o[master_id]) {
			master_o[master_id] = [];
		}
		if (id == master_id && $.inArray(id, master_order) == -1) {
			master_order.push(id);
		}
		master_o[master_id].push(id);
	});
	// Insert tunnel name
	order = $.map(mvpn["_order"], function(id) {
		var o = mvpn[id];
		var name = [ o["name"] ];
		var master_id = o["master"];
		var arr = master_o[master_id];
		var tunnel_id = arr && arr.length > 1 ? $.inArray(o["id"], arr) + 1 : 0;
		if (tunnel_id) {
			name.push(" (",
				tunnel_id,
				_e(o["tunnel_name"]) ?
				" - " + o["tunnel_name"] : "",
				")"
			);
		}
		ret[id] = {
			master: master_id,
			id: id,
			name: name.join(""),
			name_arr: name,
			is_enable: mvpn[master_id]["is_enable"],
			is_nat: mvpn[master_id]["is_nat"],
			is_multi_tunnel: _e(arr) && arr.length > 1
		};
		return id;
	});
	ret["master_order"] = master_order;
	ret["group_relationship"] = master_o;
	ret["_order"] = order.sort(function(a, b) {
		return (this[a]["name"] < this[b]["name"] ? -1 : (this[a]["name"] > this[b]["name"] ? 1 : 0));
	}.bind(ret));
	return ret;
}
/*
	Parameters Object:
	context: ajax-related callbacks
	ignore_lan0: Do not include lan0 (Untagged LAN) in the list
	include_ipaddr: Switch need to show the IP for Web Admin Access Option
*/
function parse_vlan_name(o, with_ip)
{
	if (!o) {
		return;
	}
	var vlan_id = o["vlan_id"];
	var name = _e(o["name"]) ? o["name"] :
		(o["id"] == 0 ? "Untagged LAN" : "(Unnamed)");
	return (name + (vlan_id ? " (" + vlan_id + ")" : "") +
		(with_ip ? " (" + (_e(o["network"]) ? o["network"].join(", ") : "No IP Address") + ")": "")
	);
}
/*
	Return value:
	Deferred Object that a successful response will return an
	_ordered-list of LAN/VLAN that contains "name" and 'vlan_id"

	_param = context object (pass-through),
	which also understand the following specific members:
	ignore_lan0 - If true, strip (untagged) LAN from result
*/
function get_vlan_option_list(_param)
{
	var	param = _param || {};

	return $.ajax("api.cgi", {
		cache: false,
		data: {
			func: "config.lan",
			lite: "yes"
		},
		context: param
	}).then(function(json, status, jqXHR) {
		var	strip_lan = this["ignore_lan0"],
			with_ip = this["include_ipaddr"],
			info = jsonGetObject(json, {
				"response>.o": [
					"name",
					"vlanId>vlan_id.d", {
					"network>__network.a": [ "ip", "mask.d" ]
				}]
			});

		// Only _order is needed in result
		delete info["order"];

		// Strip 0 from _order, if instructed
		if (strip_lan) {
			var pos = $.inArray(0, info["_order"]);
			if (pos >= 0) {
				info["_order"].splice(pos, 1);
				delete info["0"];
			}
		}

		// Transform name into display name string
		$.each(info["_order"], function(_, id) {
			var	o = info[id];
			o["network"] = $.map(o["__network"], function(ntw) {
				return ntw["ip"] + "/" + ntw["mask"];
			});
			o["name"] = parse_vlan_name(o, with_ip);
		});

		// [Bug#20230] Sort LAN/VLAN by VLAN ID
		info["_order"] = info["_order"].sort(function(a, b) {
			if (info[a]["vlan_id"] === info[b]["vlan_id"]) {
				return 0;
			}
			return !info[a]["vlan_id"] ||
				info[a]["vlan_id"] < info[b]["vlan_id"] ?
				-1 : 1;
		});

		return $.Deferred().resolveWith(this, [ info ]).promise();
	});
}
/*
	Parameters Object:
	lan: LAN Profile info (including ids, names and enable status)
	vpn: VPN Profile info (including ids, names and enable status)
	any: if value is false, option "any" will not be provided
	custom: if value is false, option "custom" will not be provided
*/
function create_network_select_list(_param)
{
	var param = _param || {};
	var lan = param["lan"] || {};
	var vpn = param["vpn"] || {};
	var pfx = param["prefix"] || "";
	var def_val = param["default_value"] || "";
	var custom_width = +param["custom_width"] || 255;
	var custom_vpn_width = Math.max(0, custom_width - 40);
	var custom_lan_width = Math.max(0, custom_vpn_width - 40);
	var VPN_MASK = 10000;
	if (!_e(lan["_order"]) && !_e(vpn["_order"])) {
		return;
	}
	var div = $("<div/>").addClass("network_list").append(
		$("<select/>", {
			name: pfx + "_net",
			default_value: def_val
		}).addClass("network_list_action").append(
			$("<option/>").addClass("_opt_nothing"),
			param["any"] === false ? "" :
				$("<option/>").val("any").text("Any"),
			lan && _e(lan["_order"]) ?
				$.map(lan["_order"], function(id) {
					return $("<option/>").val(id)
						.text("LAN: " + lan[id]["name"]);
				}) : "",
			vpn && _e(vpn["_order"]) ?
				$.map(vpn["_order"], function(id) {
					return $("<option/>").val(VPN_MASK + +id)
						.text("VPN: " + vpn[id]["name"]);
				}) : "",
			param["custom"] === false ? "" :
				$("<option/>").val("custom").text("Custom...")
		).addClass("single"),
		$("<div/>").addClass("chkbox_panel").append(
			$.map(lan["_order"], function(id) {
				var	obj = {},
					name = lan[id]["name"],
					sfx, o;

				// Ad-hoc decompose potential name "xxxx (nnn)"
				//	into name "xxx" and sfx " (nnn)"
				o = name.split(" ");
				if (o.length > 1 &&
					/^\(\d{1,4}\)$/.test(o[o.length - 1])) {
					sfx = " " + o.pop();
					name = o.join(" ");
				}

				name = $("<span/>").text("LAN: " + name);
				if (name.textOverflow) {
					name.textOverflow({
						width: custom_lan_width
					});
				}

				obj["_custom"] = {
					value: id,
					content: name,
					text: sfx
				};
				return $("<div/>").append(create_checkbox(obj));
			}),
			$.map(vpn["_order"], function(id) {
				var	obj = {},
					name = vpn[id]["name"];

				name = $("<span/>").text("VPN: " + name);
				if (name.textOverflow) {
					name.textOverflow({
						width: custom_vpn_width
					});
				}

				obj["_custom"] = {
					value: +id + VPN_MASK,
					content: name
				};
				return $("<div/>").append(create_checkbox(obj));
			})
		).hide().css({ padding: "3px" })
	)
	.on("redraw.network_list", function() {
		var me = $(this);
		me.find(".chkbox_panel").toggle(
			me.find(".network_list_action option:selected").val() == "custom"
		);
	})
	.on("validate.network_list", function() {
		var me = $(this);
		var o = me.find("[name$=_net]");
		var v = o.find("option:selected").val();
		if (!_e(v) ||
			(v == "custom" && !me.find("input:checkbox:checked").length)) {
			return err("Network cannot be empty", o, me.closest(".grid_table"));
		}
		return true;
	})
	.on("change.network_list_action keyup.network_list_action", function(e) {
		$(e.delegateTarget).triggerHandler("redraw");
	});
	return div;
}
//	Parameters Object:
//	is_managed	- Where the configuration is already managed by InControl
//	status_link	- Effective when is_managed is set, the optional link / element to be attached
function createInControlReminder(_param)
{
	var	param = _param || {},
		icon = $("<img/>", { src: "../../en/images/ic2.png" })
			.addClass("icon icon_w16")
			.css({
				"padding-left": "3px",
				"padding-right": "3px"
			}),
		ic_link = $("<a/>", { href: "#" }).css({ color: "inherit" })
		.text("InControl")
		.on("click", function() {
			window.open("index.cgi?option=incontrol_redirect");
			return false;
		}),
		msg = param["is_managed"] ? $("<div/>").append(
			_e(param["page_str"]) ? param["page_str"] : "This",
			" configuration is being managed by ", ic_link, ". ",
			(param["status_link"] || "")
		) : $("<div/>").css({ color: "blue" }).append(
			" InControl management enabled. ",
			_e(param["page_str"]) ? param["page_str"] : "Settings",
			" can now be configured on ", ic_link, "."
		);
	return param["bare"] ? ic_link : msg.css({ "padding-bottom": "18px" }).prepend(icon);
}
// vim: set foldmethod=marker:
// End of File (menulib.js)
