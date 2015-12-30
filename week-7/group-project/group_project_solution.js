// User Story 1 Pseudocode:
// Input: a given set of numbers (array?)
// Output: sum of the given set of numbers
// Steps:
// create a function called "sum" that will take a set of numbers as an argument
// add each of the numbers in the set
// return the sum of the numbers


// var sum = function(array){ 
// var result = 0;
//   for(var i=0; i < array.length; i++);
//  result += array[i];
//  return result
// };
// var my_array = [1, 3, 5];

// console.log(sum(my_array))

function sum(numbersArray){
  var sumNumbers = 0;
  for(var i=0; i < numbersArray.length; i++) {
    sumNumbers += numbersArray[i];
    }
  return (sumNumbers);
}

sum([1,2,3,4]); 


// User Story 2 Pseudocode:
// Input: a given set of numbers (array?)
// Output: average of the given set of numbers
// Steps:
// create a function called "mean" that will take a set of numbers as an argument
// add each of the numbers in the set
// divide the sum by how many numbers there are in the given set
// return the mean


function mean(numbersArray){
  var sumNumbers = 0;
  for(var i=0; i < numbersArray.length; i++) {
    sumNumbers += numbersArray[i];
    }
  return (sumNumbers / numbersArray.length);
}

mean([5, 5, 7, 7]);




// User Story 3 Pseudocode:
// Input: a given set of numbers (array?)
// Output: the median of the given set of numbers
// Steps:
// create a function called "median" that will take a set of numbers as an argument
// sort the numbers in the set in numerical order

// if the given set contains an odd number of numbers
//   return the number in the middle of the sorted set

// if the given set contains an even number of numbers
//   add the two numbers in the middle of the sorted set
//   return the sum of those two numbers divided by two.

function median(numbersArray){

  var sortedArray = numbersArray.sort(function(a, b){return a-b});
 

    if (sortedArray.length % 2 != 0){
    var midIndex = sortedArray.length / 2;
    midIndex = Math.floor(midIndex);
    return sortedArray[midIndex];
  }

    else {
       (sortedArray.length % 2 != 0)
    var midIndex = sortedArray.length / 2;
    return (sortedArray[midIndex] + sortedArray[midIndex-1]) /2;
  }
    
}

