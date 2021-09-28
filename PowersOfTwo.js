var n = process.argv[2]; 
var i = 0; // count from 0 to N
var powerOfTwo = 1; // the ith power of two

// repeat until i equals n
while (i <= n) 
{
console.log("2 ^ " + i + " = " + powerOfTwo); // print out the power of two
powerOfTwo = 2 * powerOfTwo; // double to get the next one
i = i + 1;
}


