var a = process.argv[2]; //value will be "banana"
var b = process.argv[3];
var c = process.argv[4];

var value1 = a + b * c;
console.log(value1);
var value2 = a % b + c;
console.log(value2);
var value3 = c + a / b;
console.log(value3);
var value4 = a * b + c;
console.log(value4);

if(value1>value2) 
    { 
        if(value1>value3) 
        { 
            if(value1>value4) 
            {   
                console.log(value1 + " is minimum"); 
            } 
            else 
            { 
                console.log(value4+" is minimum"); 
            } 
        } 
    } 
    else if(value2>value3) 
        { 
            if(value2>value4) 
                { 
                    console.log(value2 + " is minimum."); 
                } 
            else 
                { 
                    console.log(value4 + " is minimum."); 
                } 
        } 
    else if(value3>value4) 
        { 
            console.log(value3 + " is minimum."); 
        } 
    else 
    { 
        console.log(value4 + " is minimum."); 
    } 