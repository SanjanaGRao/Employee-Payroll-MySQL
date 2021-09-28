
var number = process.argv[2]; 
console.log(number);
var original = number;

var answer = function checkPalindrome(n) 
{
    let digit;
    let reverse = 0;
    while(n != 0)
    {
        digit = n % 10;
        reverse = (reverse * 10) + digit;
        n /= 10;
    }
    console.log(reverse);
    if(reverse == original)
        return true;
    else
        return false;
}

checkAnswer = answer(number);
if(checkAnswer == true)
     console.log(original + " is a Palindrome.");
else
     console.log(original + " is not a palindrome.");