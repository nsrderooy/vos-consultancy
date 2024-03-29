const switchButton = document.getElementById('switch-button');
const stylesheet = document.getElementById('styleDark');

// Load the saved style from localStorage, or use the default
let currentStyle = localStorage.getItem('style');
if (!currentStyle) {
  currentStyle = 'styleDark.css';
}
stylesheet.href = currentStyle;

// Set the initial state of the switch button
if (currentStyle === 'styleDark.css') {
  switchButton.textContent = 'Light mode';
} else {
  switchButton.textContent = 'Dark mode';
}

// Switch the stylesheet and update the switch button text when clicked
switchButton.addEventListener('click', () => {
  if (currentStyle === 'styleDark.css') {
    currentStyle = 'styleLight.css';
    switchButton.textContent = 'Dark mode';
  } else {
    currentStyle = 'styleDark.css';
    switchButton.textContent = 'Light mode';
  }
  stylesheet.href = currentStyle;
  localStorage.setItem('style', currentStyle);
});
