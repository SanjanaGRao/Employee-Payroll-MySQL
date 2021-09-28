var n = process.argv[2]; 
var i;
var flag = 0;

for (i = 2; i <= n / 2; ++i)
 {
    // condition for non-prime
    if (n % i == 0) 
    {
      flag = 1;
      break;
    }
}

if (n == 1) 
{
    console.log("1 is neither prime nor composite.");

} 
else 
{
    if (flag == 0)
      console.log(n + " is a Prime Number.");
    else
      console.log(n + " is not a Prime Number.");
}