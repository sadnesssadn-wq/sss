<script>
function get(id) {
    return document.getElementById(id);
}
function trim(str) {
    return str.replace(/^\s+|\s+$/g, '');
}
function login(user, pwd, autologin) {
    var expires = new Date();
    expires.setTime(expires.getTime() + (30 * 24 * 60 * 60 * 1000));
    document.cookie = 'username=' + user +
        '; expires=' + expires.toGMTString() + '; path=/';

    window.name = (autologin ? 'autologin=' : 'login=') + user + '|' + pwd;
    window.location.replace('/webfig/' + window.location.hash);
}
function dologin() {
    login(get('name').value, get('password').value);
}
function loaded() {
    var p = window.name.split('=');
    if (p[0] == 'error' && p[1]) {
        var err = get('error');
        err.appendChild(document.createTextNode(p[1]));
        err.style.display = 'block';
    } else if (p[0] != 'noautologin' || p[1] != 1) {
        var user = '';
        if (user) {
            login(user, '', true);
            return;
        }
    }
    window.name = '';

    document.onkeydown = function(e) {
        e = e || event;
        if (e.keyCode == 13) {
            dologin();
            return false;
        }
        return true;
    };

    var username = null;
    var cookies = document.cookie.split(';');
    for (var i in cookies) {
	var c = trim(cookies[i]).split('=');
	if (c[0] == 'username') {
	    username = c[1];
	    break;
	}
    }
    
    if (username != null) {
	get('name').value = username;
	get('password').focus();
    } else {
        get('name').value = 'admin';
	get('name').focus();
    }
}
</script>
</head>

<body onload="loaded()">

<div id="container">

    <div id="box">
    <a href="http://mikrotik.com"><img src="mikrotik_logo.png" style="float: right;" /></a>

    <br style="clear: both;"/>
    
		<h1>RouterOS v6.49.18</h1>
        
        <p>You have connected to a router. Administrative access only. If this device is not in your possession, please contact your local network administrator. </p>
        
      <table id="login">
	<tr><td colspan="3"><h2>WebFig Login:</h2>
        <tr><td class="label">Login: <td><input id="name" type="text" tabindex="1">
	 <td class="toolbar" rowspan="2">
         <ul class="toolbar">
	   <li><a onclick="dologin()" ondragstart="return false;"><span>Login</span></a></li>
         </ul>
         <tr><td class="label">Password: <td><input id="password" type="password" tabindex="2">
	<tr><td colspan="3">
	    <div id="error"></div>
      </table>
            
            <fieldset>
            <div class="floater"> 
            	<a href="http://www.mikrotik.com/download/winbox.exe"><img src="winbox.png"/></a><br/>
                <label>Winbox</label>
            </div>
            
            <div class="floater"> 
            	<a href="telnet://203.189.136.83"><img src="console.png"/></a><br/>
                <label>Telnet</label>
            </div>

            
            
            <div class="floater"> 
            	<a href="/graphs"><img src="green.png"/></a><br/>
                <label>Graphs</label>
            </div>
           
            
            <div class="floater"> 
            	<a href="/help/license.html"><img src="license.png"/></a><br/>
                <label>License</label>
            </div>
            
			<div class="floater"> 
            	<a href="http://wiki.mikrotik.com"><img src="help.png"/></a><br/>
                <label>Help</label>
            </div>

</fieldset>
           
            <br style="clear: both"/> 
                            <div style="float: right">&copy; mikrotik</div>

    </div>
</div>

</div>

</body>
</html>
