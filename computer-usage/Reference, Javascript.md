## To debug events that change the DOM
e.g. "What script is causing this?"
```javascript
document.getElementById(elemId)
.addEventListener('DOMSubtreeModified', (evt) => {
	console.log(document.currentScript);
})
```

Other event names which may be of use and which are documented [here]() include:

[https://www.w3.org/TR/DOM-Level-3-Events/#event-type-DOMSubtreeModified](https://www.w3.org/TR/DOM-Level-3-Events/#event-type-DOMSubtreeModified)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU5MDAyMzU1M119
-->