var num;
const { log } = require('console');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Enter a number: ', (num) => 
{
c = 1
pos_nums = []
while (num != 0)
{
    z = num % 10;
    pos_nums += (z*c);
    num = num ;// 10
    c = c*10;
}    
console.log(pos_nums);
rl.close();
});
