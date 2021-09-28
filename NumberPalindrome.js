//Program to check if a number is Palindrome or not
var number = process.argv[2]; 
var original = number;

function reverseDigits(num)
{
    let rev_num = 0;
    while (num > 0) {
        rev_num = rev_num * 10 + num % 10;
        num = Math.floor(num / 10);
    }
    return rev_num;
}
 
/* Function to check if n is Palindrome*/
function isPalindrome(n)
{
    let rev_n = reverseDigits(n);
    if (rev_n == n)
        return 1;
    else
        return 0;
}

console.log("Is " + original + " a palindrome? ");
console.log(isPalindrome(number) == 1 ? "Yes, its a Palindrome" : "No, not a plaindrome");