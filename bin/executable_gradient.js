const gradient = require('gradient-string');
const args = process.argv;

let str = args[2];

artwork = gradient('cyan', 'pink').multiline(
		str, 
		{interpolation: 'hsv', hsvSpin: 'long'});

console.log(artwork);

