'use strict';

(function iifeBackToTop(document, window, undefined) {
	var button = document.querySelector('.back-to-top');
	var threshold = 400;

	function updateVisibility() {
		if (!button) {
			return;
		}

		if (window.scrollY > threshold) {
			button.classList.add('is-visible');
		} else {
			button.classList.remove('is-visible');
		}
	}

	function scrollToTop(event) {
		var reduceMotion = false;

		event.preventDefault();

		if (window.matchMedia) {
			reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
		}

		try {
			window.scrollTo({ top: 0, behavior: reduceMotion ? 'auto' : 'smooth' });
		} catch (e) {
			window.scrollTo(0, 0);
		}
	}

	if (button) {
		button.addEventListener('click', scrollToTop, false);
		window.addEventListener('scroll', updateVisibility, false);
		updateVisibility();
	}
}(document, window));
