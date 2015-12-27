window.bridge = {}
window.bridge.sendMessage = (json) ->
  iframe = document.createElement('iframe');
  iframe.setAttribute('src', 'js:' + JSON.stringify(json));
  document.documentElement.appendChild(iframe);
  iframe.parentNode.removeChild(iframe);
  iframe = null;
