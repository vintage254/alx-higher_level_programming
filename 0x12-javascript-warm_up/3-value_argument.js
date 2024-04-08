#!/usr/bin/node
function getlength () {
  let count = 0;
  for (const arg in arguments) {
    count++;
  }
  return count;
}
if (getlength(process.argv) === 2) {
  console.log('No argument');
} else {
  console.log(process.argv[2] || 'No argument');
}
