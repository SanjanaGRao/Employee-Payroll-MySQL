var year = 2020;

//Logic to check if its a Leap year or not
if( ((year % 4 == 0) && (year%100!=0)) ||(year % 400 == 0) )
	console.log(" Year " + year + " is a leap year.");
else
	console.log(" Year " + year + " is not a leap year.");