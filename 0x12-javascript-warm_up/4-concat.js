#!/usr/bin/node
const { argv } = require('process');
const arg1 = argv[2];
const arg2 = argv[3];
if (!arg1 && !arg2) {
  console.log('undefined is undefined');
} else if (!arg2) {
  console.log(`${arg1} is undefined`);
} else {
  console.log(`${arg1} is ${arg2}`);
}
