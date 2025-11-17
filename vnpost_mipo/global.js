// Start of Script (global.js)

function isempty(inputStr)
{
	return (String(inputStr).length == 0);
}

// {{{ function setCookie() / getCookie() / clearCookie()
function setCookie(name, value, days)
{
	var	arr = [
			name + "=" + value,
			"path=/"
		];
	if (days) {
		var date = new Date();
		if (days > 0) {
			date.setTime(date.getTime() +
				(days * 24 * 60 * 60 * 1000));
		}
		arr.push("expires=" + date.toUTCString());
	}
	document.cookie = arr.join("; ");
}
function getCookie(name)
{
	var	pfx = name + "=",
		v = null;
	$.each(document.cookie.split("; "), function(_, s) {
		if (s.lastIndexOf(pfx, 0) === 0) {
			v = s.slice(pfx.length);
			return false;
		}
	});
	return v;
}
function clearCookie(name)
{
	return setCookie(name, "", -1);
}

// }}}
// {{{ function verifyBrowserCompatibility() / getmsgBrowserCompatibility()
function verifyBrowserCompatibility()
{
	var	bv = navigator.userAgent, identifier, version, version_arr;

	// LOGIC ORDER IS IMPORTANT
	if (/Opera/.test(bv)) {
	//	Opera~ it is not in our supported browser.
		return false;
	}

	//	[Bug#14245] Edge Browser detection
	identifier = /Edge\/([0-9]*)/.exec(bv);
	if (identifier) {
	//	It's Microsoft Edge, expecting version 13 or above...
	//	but we won't actually blame you if you are version 12, in case.
		version = parseInt(identifier[1]);
		return (version >= 12);
	}

	identifier = /Chrome\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier) {
	//	It's Chrome!, are you version 9.0 (or above)?
	//	[Bug#20457] Are you version 41.0 (or above)?
		version = parseFloat(identifier[1]);
		return (version >= 41.0);
	}

	identifier = /CriOS/.exec(bv);
	version_arr = /CriOS\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier && version_arr) {
	//	[Bug#20629] It's Chrome for iOS
	//	A webkit based variation
	// TODO: We didn't pose any version restriction on this yet
		return true;
	}

	identifier = /FxiOS/.exec(bv);
	version_arr = /FxiOS\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier && version_arr) {
	//	[Bug#20629] It's FireFox for iOS
	//	A webkit based variation
	// TODO: We didn't pose any version restriction on this yet
		return true;
	}

	identifier = /Safari/.exec(bv);
	version_arr = /Version\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier && version_arr) {
	//	It's Safari!, are you version 5.1 (or above)?
	//	[Bug#20457] Are you version 9.0 (or above)?
		version = parseFloat(version_arr[1]);
		return (version >= 9.0);
	}

	identifier = /Firefox\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier) {
	//	Firefox, are you version 4.0 (or above)?
	//	[Bug#20457] Are you version 40.0 (or above)?
		version = parseFloat(identifier[1]);
		return (version >= 40.0);
	}

	//	[Bug#14243] No longer to claim support on
	//	Internet Explorer 9 and 10
/*
	identifier = /MSIE ([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier) {
	//	Internet Explorer, are you version 9.0 / 10.0?
		version = parseFloat(identifier[1]);
		return (version >= 9.0);
	}
*/
	//	[Bug#20095] No longer to claim support on
	//	Internet Explorer 11
/*
	identifier = /Trident\/([0-9]*[.][0-9]*)/.exec(bv);
	if (identifier) {
	//	Internet Explorer 11 dropped MSIE symbol,
	//	here is alternative detection for it.
		version = parseFloat(identifier[1]);
		return (version >= 7.0);
	}
*/
	return false;
}
function getmsgBrowserCompatibility()
{
	return "\
 - Mozilla Firefox<br>\
 - Google Chrome<br>\
 - Safari<br>\
 - Microsoft Edge<br>\
";
}

// }}}

// vim: set foldmethod=marker:
// End of Script (global.js)
