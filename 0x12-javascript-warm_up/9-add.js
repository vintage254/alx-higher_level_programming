#!/usr/bin/node
const { argv } = require('node:process');

const x = parseInt(argv[2]);
const y = parseInt(argv[3]);

function add(a, b) {
  return a + b;
}
if (isNaN(x)) {
  console.log('NaN');
}
else if (isNaN(y)) {
  console.log('Nan');
}
else {
  console.log(addx.(x, y));
}
