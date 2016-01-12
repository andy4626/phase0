// Pseudocode
// Input: two arrays of random objects
// Output: return one array that includes all objects from the input two arrays 
// Steps: 
// set up a function that takes two arguments(aka two arrays)
// create an array that is going to get pushed from the two input arrays
// return the array that is containing the results



// Initial Solution
function mixItUp(array1, array2){
    result= [];
    for(var i in array1){result.push(array1[i])};
    for(var i in array2){result.push(array2[i])};
    return result;
};


// Refactored Solution
function mixItUp(array1, array2){
    result= array1.concat(array2);
    return result;
};





// Reflection
// // What concepts did you solidify in working on this challenge? 
// I solidified my knowledge on how to concatenate two arrays.  Rather it be just integers, booleans, or strings

// // What was the most difficult part of this challenge?
// I did not know the syntax or the right order on how to concatenate two arrays, now i know.

// // Did you solve the problem in a new way this time?
// Yes, instead of having a new array for the result, I just combined the two and returned the result.

// // Was your pseudocode different from the Ruby version? What was the same and what was different?
// It was exactly the same.  Perhaps I chose a very easy topic to begin with, I just wanted to learn the syntax
// for concatenation for javascript because it will become very handy later.
