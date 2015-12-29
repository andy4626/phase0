// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var andrewAge= 28;
andrewAge = andrewAge - 1;
console.log(andrewAge);



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle:
var result = ''
while (result.length < 8) {
  result += '#';
  console.log(result);
}


// Functions

// Complete the `minimum` exercise.
function min(x,y) {
  if (x < y) {
    return x;
  }
  else {
    return y;
  }
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: 'Andrew',
  age: 28,
  favoriteFoods: ['korean BBQ', 'dumplings', 'truffle pasta'],
  quirk: 'I took piano lessons for about 15 years'
 }
