'use strict';

const body = document.body;
const themeSelector = document.getElementById('switch');

themeSelector.addEventListener('click', (e) => {
    if(body.classList.contains('light')) {
        body.classList.remove('light');
    } else {
        body.classList.add('light');
    }
});