var isLocal = /^(0.0.0.0|192.168.\d+.\d+|localhost)$/.test(location.hostname);

window.kr_settings = {
  sentry: true
};

if (/^#[a-z0-9]{10}$/i.test(location.hash)) {
  window.kr_settings.id = location.hash.substring(1);
}

// Compatible with IE or older browser versions
var params = function (name) {
  var results = new RegExp("[?&]" + name + "=([^&#]*)").exec(
    window.location.href
  );
  if (results == null) {
    return null;
  } else {
    return decodeURI(results[1]) || 0;
  }
};

if (params) {
  var appConfig = window.appConfig;
  var server;
  var webchat;
  if (appConfig && appConfig.BASE_URL) {
    server = appConfig.BASE_URL;
  }

  if (appConfig && appConfig.WEBCHAT_URL) {
    webchat = appConfig.WEBCHAT_URL || "https://webchat.keyreply.com/";
  }

  if (webchat) {
    window.kr_settings.webchat = webchat;
  }

  if (params("server")) {
    server = params("server");
  }

  var bot = params("bot");
  var isPreview = params("isPreview");
  var event = params("kr-event");
  var data = params("kr-data");
  var token = params("token");
  var userSource = params("user-source");
  var userRole = params("user-role");

  if (server) {
    if (/^http/.test(server)) {
      // Has full server URL
      window.kr_settings.server = server;
    } else {
      window.kr_settings.server = "https://" + server + ".app.keyreply.com/server/"
    }
  } else {
    // If there is no server in URLParams
    if (isLocal) {
      window.kr_settings.server = "http://" + location.hostname + ":3000";
      window.kr_settings.isPreview = false;
      window.kr_settings.sentry = false;
    } else {
      // Prompt user for server address
      if (!window.kr_settings.server) {
        const savedServer = localStorage.getItem("KR_SERVER");
        server = savedServer === null ? prompt("Chatbot Server") : savedServer;
        if (/^http/.test(server)) {
          // Has full server URL
          window.kr_settings.server = server;
        } else {
          window.kr_settings.server = "https://" + server + ".app.keyreply.com/server/";
        }

        // save last use server
        if (server) {
          localStorage.setItem("KR_SERVER", window.kr_settings.server);
        }
      }
    }
  }

  if (window.kr_settings.server && bot) {
    // Takes some time to complete bot switch
    fetch(window.kr_settings.server + "/api/switch_bot?bot=" + bot);
  }

  if (event && data) {
    window.kr_settings.start = {
      event: event,
      data: data
    };
  }


  if (isPreview) {
    window.kr_settings.isPreview = isPreview;
  }

  if (token || userSource || userRole) {
    window.kr_settings.user = {
      JWT: token,
      source: userSource,
      role: userRole,
    }
  }
}

document.addEventListener("touchend", function (event) {
  var isClickInside = document.body.contains(event.target);
  if (!isClickInside && navigator.userAgent === "KeyReplyiOSSDK") {
    //the click was outside the specifiedElement, do something
    const url = "keyreplysdk://?alert=close";
    window.location.href = url;
  }
});

function iosOpenLink(event, href) {
  event.stopPropagation();
  event.preventDefault();
  window.location.href = "keyreplysdk://?tab=" + href;
}
