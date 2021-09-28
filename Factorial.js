var number = process.argv[2]; 

function factorial(n) 
{
    if (n == 0) return 1;
    return n * factorial(n - 1);
}

console.log("Factorial of the number " + number+ " is: " + factorial(number));