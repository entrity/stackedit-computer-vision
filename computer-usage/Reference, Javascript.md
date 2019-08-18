## To debug events that change the DOM
e.g. "What script is causing this?"
```javascript
document.getElementById(elemId)
.addEventListener('DOMSubtreeModified', (evt) => {
	console.log(document.currentScript);
})
```

Other event names which may be of use and which are documented [here](https://www.w3.org/TR/DOM-Level-3-Events/#event-type-DOMSubtreeModified) include:

1.  [DOMAttrModified](https://w3c.github.io/uievents/#event-type-DOMAttrModified)
2.  [8.4.2.2DOMCharacterDataModified](https://w3c.github.io/uievents/#event-type-DOMCharacterDataModified)
3.  [8.4.2.3DOMNodeInserted](https://w3c.github.io/uievents/#event-type-DOMNodeInserted)
4.  [8.4.2.4DOMNodeInsertedIntoDocument](https://w3c.github.io/uievents/#event-type-DOMNodeInsertedIntoDocument)
5.  [8.4.2.5DOMNodeRemoved](https://w3c.github.io/uievents/#event-type-DOMNodeRemoved)
6.  [8.4.2.6DOMNodeRemovedFromDocument](https://w3c.github.io/uievents/#event-type-DOMNodeRemovedFromDocument)
7.  [8.4.2.7DOMSubtreeModified](https://w3c.github.io/uievents/#event-type-DOMSubtreeModified)
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTMxNTc2MzU2NV19
-->