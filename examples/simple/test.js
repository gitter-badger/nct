
var simple = require('./simple_nconf.js');

console.log('MYBOOL = ' + simple.nconf["MYBOOL"]);
console.log('MYSTRING = ' + simple.nconf['MYSTRING']);
console.log('MYTRISTATE = ' + simple.nconf['MYTRISTATE']);
console.log('MYINT = ' + simple.nconf['MYINT']);
console.log('MYHEX = ' + simple.nconf['MYHEX']);
