## Lightweight Web Servers

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

## Heavier Web Servers

### Apache

### Nginx
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTI5OTEzNjA2NSwtNzg0NTMwODc3LC0xND
UwODQ4OTA2LDIwNzMzMTA4NTAsLTYxMjE4MDk4MCw5MzAxMzc3
OThdfQ==
-->