// Your previous Ruby content is preserved below:

 // JavaScript Olympics

// I paired [by myself, with:Tyler McKenzie] on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
var athlete = [{name: 'Michael Jordan', sports:'NBA Championship'},{name:'Michael Phelps', sports: 'Olympics swimming'} ]

function win(array){
  for (var i = 0; i < array.length; i++){
    console.log(array[i].name + ' won the '+ array[i].sports)
  }
}

win(athlete)


// Jumble your words
var words = 'These words will be jumbled up!'

function jumble_words(word) {
  word = word.split('').reverse().join('');
  return word
}

jumble_words(words)

// 2,4,6,8
function evenOnly(array){
  var result = [];
  for (var i = 0; i < array.length; i++){
    if(array[i] % 2 == 0){
    result.push(array[i]);
    };
  };
  return result
evenOnly([1, 2, 3, 4, 5, 6, 66, 7, 8])



// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
