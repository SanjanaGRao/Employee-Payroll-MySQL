var year;
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter a year: ', (year) => {
  //Logic to check if its a Leap year or not
if( ((year % 4 == 0) && (year%100!=0)) ||(year % 400 == 0) )
    console.log(" Year " + year + " is a leap year.");
else
    console.log(" Year " + year + " is not a leap year.");
  rl.close();
});

