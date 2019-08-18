## To debug events that change the DOM
e.g. "What script is causing this?"
```javascript
document.getElementById(elemId)
.addEventListener('DOMSubtreeModified', (evt) => {
	console.log(document.currentScript);
})
```

Other event names which may be of use and which are documented [here](https://www.w3.org/TR/DOM-Level-3-Events/#event-type-DOMSubtreeModified) include:

- ##### DOMAttrModified
- ##### DOMCharacterDataModified
- 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTY4ODQ0Mzc1NV19
-->