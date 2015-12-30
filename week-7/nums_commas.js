// Pseudocode
// Input: number
// Output: string with comma in every three digits
// Steps: 
// turn the number into string
// break the string into individual characters
// reverse the string
// put commas in every three positions
// Reverse the string back to its original order
// return the string



// Initial Solution
var separateComma = function (number)
{ number = number.toString();
  number = number.split("");
  number.reverse();
     var result = [];
     for (var i = 0; i < number.length; i ++ ) {
         if ((i % 3 == 0) && (i != 0)) {
         result.push(",");
         }
     result.push(number[i]);
  };
  result.reverse();
  var finalResult = result.join('');
  return finalResult.toString();
};


// Refactored Solution
var separateComma = function (number)
{ number = number.toString().split("").reverse();
     var result = [];
     for (var i = 0; i < number.length; i ++ ) {
         if ((i % 3 == 0) && (i != 0)) {
         result.push(",");
         }
     result.push(number[i]);
  };
  result.reverse();
  var finalResult = result.join('').toString();
  return finalResult
};





// Your Own Tests (OPTIONAL)
function assert(test, message) {
  if (!test) { 
    return "ERROR: " + message;
  }
else
{return true;}
};

assert(
  (separateComma(122345)==='122,345'),
  "This is correct"
)

console.log(assert(
  (separateComma(10)==='10'),
  "No Commas for numbers with two digits"
)

assert(
  (separateComma(100)==='100'),
  "No Commas for numbers with three digits"
)
// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I approached the problem the same way I approached it with the solo challenge last time.
// Even my partner had the same approach, except making a new result array except splice methods used for Ruby
// Other than different approach to print out the result, the persepective was almost identical

// What did you learn about iterating over arrays in JavaScript?
// I used push, split, join and reverse methods, which was identical to Ruby.

// What was different about solving this problem in JavaScript?
// I did not know to do splice methods in JS, so I just made a result array and joined them later with no spaces
// in between them.

// What built-in methods did you find to incorporate in your refactored solution?
// I could not find any methods to refactor my solution except changing multiple lines into a single lines
// and made it more readable

