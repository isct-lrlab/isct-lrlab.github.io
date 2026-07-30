// Placeholder shim.
// The real Pagefind UI script is expected to be deployed at /pagefind/pagefind-ui.js
// by the site build pipeline. This file delegates to it.
(function(){
	var s=document.createElement('script');
	s.defer=true;
	s.src='/pagefind/pagefind-ui.js';
	document.head.appendChild(s);
})();
