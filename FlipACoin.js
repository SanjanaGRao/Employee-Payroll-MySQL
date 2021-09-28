//Program to simulate coin Toss
//to generate random function
var MinVal=0;
var MaxVal=1;		
var number = Math.floor(Math.random()*(MaxVal-MinVal+1)+MinVal);

//Coin toss simulation
console.log(" The result of Coin Flip is: " + number);
if(number < 0.5)
{
    console.log("Coin Toss Result: Tails");
}	
else
{
    console.log("Coin Toss Result: Heads");
}

