var detectMobile = function() {
		//return "ooo";
		var agent	= navigator.userAgent.toLowerCase();
		// We need to eliminate Symbian, Series 60, Windows Mobile and Blackberry
		// browsers for this quick and dirty check. This can be done with the user agent.
		var otherBrowser = 	(agent.indexOf("series60") != -1) || 
							(agent.indexOf("symbian") != -1) || 
							(agent.indexOf("windows ce") != -1) || 
							(agent.indexOf("blackberry") != -1);
		// If the screen orientation is defined we are in a modern mobile OS
		var mobileOS = typeof orientation != 'undefined' ? true : false;
		// If touch events are defined we are in a modern touch screen OS
		var touchOS = ('ontouchstart' in document.documentElement) ? true : false;
		// iPhone and iPad can be reliably identified with the navigator.platform
		// string, which is currently only available on these devices.
		var iOS =	(navigator.platform.indexOf("iPhone") != -1) ||
					(navigator.platform.indexOf("iPad") != -1) ? 
						true : false;
		// If the user agent string contains "android" then it's Android. If it
		// doesn't but it's not another browser, not an iOS device and we're in
		// a mobile and touch OS then we can be 99% certain that it's Android.
		var android = (agent.indexOf("android") != -1) || (!iOS && !otherBrowser && touchOS && mobileOS) ? true : false;
		if (mobileOS || touchOS || iOS || android) {  return true }else { return false};
		return false;
		
}
