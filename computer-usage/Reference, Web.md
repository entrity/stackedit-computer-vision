## Lightweight Web Servers

*See also https://github.com/entrity/stackedit-computer-vision/blob/master/computer-usage/Reference%2C%20%3D%3D%20misc%20%3D%3D.md#quick-webserver*

### Flask (Python)

### python -m http.server
Start up a simple http file server in an instant with:
```bash
python -m http.server [port]
```
It defaults to port 8000 and the current directory. It will serve up directories as index pages.

### Google Script apps
Instead of running your own server, create a Google Apps Script project: https://script.google.com

When ready to deploy, click Publish > Deploy as web app. Then complete the form and submit.

The "Current web app url" with look like this:
https://script.google.com/macros/s/AKfycbzN5c9IV0MEgSwaCTo1T3dyYqanfwSBpCbrxyT9WKD2IwB9hE5w/exec
Copy the link that says "Test web app for your [latest code](https://script.google.com/a/ucdavis.edu/macros/s/AKfycbxkYMBUOozVsEq4h7RxyPf3rznHHJXksyxzvcgqgSjM/dev)."
https://script.google.com/a/ucdavis.edu/macros/s/AKfycbxkYMBUOozVsEq4h7RxyPf3rznHHJXksyxzvcgqgSjM/dev
If logged in, use this one, and you won't have to keep deploying.

If accessing Sheets or Docs or whatever, you need to give the script permissions (through the menus) to access those resources.

```javascript
function doPost(request) {
	return ContentService.createTextOutput('Got POST ' + request.parameter.foo);
}

function doGet(request) {
	return ContentService.createTextOutput('Got GET ' + request.parameter.foo);
}
```

## Apache



## Nginx
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDg1NTg3ODkxLDEyOTkxMzYwNjUsLTc4ND
UzMDg3NywtMTQ1MDg0ODkwNiwyMDczMzEwODUwLC02MTIxODA5
ODAsOTMwMTM3Nzk4XX0=
-->

## Clients

### Puppeteer
A headless (optionally), command-line browser.

### In ChromeOS
On chromebook, raises error, failing to launch browser. To remedy:
```bash
export CHROME_DEVEL_SANDBOX=/home/markham/proj/media-archiver/watchcartoononline/node_modules/puppeteer/.local-chromium/linux-656675/chrome-linux/chrome_devel_sandbox
```

## HTML processing
```bash
hxnormalize -x $FILE | hxselect $QUERY_SELECTOR -s '\n' -c | while read TEXT; do ...; done 
```
