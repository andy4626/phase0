 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:  Play the game hangman
// Goals: Guess the correct word 
// Characters: Player vs Computer
// Objects: Random word chosen by Computer
//  		Random input letters given by the player
// Functions: First function is to choose a random word from the word bank
// 				Second function is to see if the input letter from player matches any letters from the random word
// 				Third function is to display the result after each input letters

// Pseudocode
//Let the word bank have several words in an array
//When game starts, let the computer randomly choose the index that is paired with a word from word bank
//Display the number of letters of that letter
//Ask for the player's input letter
//If it matches any letter from the word bank, display where the letter is located
//If it is wrong, take a life away from the life toll
//Game is finished if the player guesses the word before the life toll is zero

// Initial Code
//Let the word bank have several words in an array
var hangman= function() {

  this.wordBank= ['cash', 'dog', 'dish', 'money', 'raddish', 'carrot', 'factory', 'model', 'umbrella', 'persimmon',
  'hazelnut', 'industry', 'collapse', 'america', 'champion', 'storage', 'design', 'heater', 'paper', 'treadmill',
  'blanket', 'retail', 'marriage', 'engagement', 'apartment', 'weekend', 'rabbit', 'elephant', 'sweater',
  'neighborhood', 'neighbor', 'easter', 'naughty', 'crooked', 'laptop', 'dictionary', 'toothache', 'conditoiner',
  'program', 'project', 'olympics', 'manipulate', 'eloquent', 'variable', 'peacoat', 'coffee', 'penguin', 'tissue',
  'dresser', 'wardrobe'];
  
  this.life = 9;
  
  this.chosenWord= this.wordBank[Math.floor(Math.random() * this.wordBank.length)];
  this.theWord = this.chosenWord.split("");
  this.usedLetters = [];


  this.resultBoard = [];
  var board= this.resultBoard;
  this.result= this.theWord.forEach(function(i) {
    board.push('_');
  });
  
};

hangman.prototype.getLetter = function(){
var letterGuess = prompt("Your Result: "+ this.resultBoard + " Give me a Letter. You have "+this.life +"chances left. "+ " Your used letters are: "+ this.usedLetters);
  var userInputLetter = letterGuess[0].toLowerCase();
  return userInputLetter;
}

hangman.prototype.check = function(inputLetter){
  var matchFound = false;
  for(var i=0; i< this.theWord.length; i++){
    if(this.theWord[i]===inputLetter){
        console.log(this);
        this.resultBoard[i]= inputLetter;
        matchFound = true;
    }
  }
  if (matchFound === false) {
    this.life -=1;
    this.usedLetters.push(inputLetter);
  }
}

hangman.prototype.checkStatus = function(){
  if(this.life === 0 || !this.resultBoard.includes('_'))
    {
      return false;
    }
    else
    {
      return true;
    }   
 }
 
 hangman.prototype.displayBoard = function(){
   console.log('Result: ' + this.resultBoard+ 'The lives: '+ this.life);
 }
 
 hangman.prototype.play = function() {
   while (this.checkStatus() === true) {
     var letter = this.getLetter();
     this.check(letter);
     this.displayBoard();
   }
  console.log('Game is Over');
 }

var newGame = new hangman();
newGame.play();


// Refactored Code
// I could not refactor for this exercise.  My initial solution has been refactored as I was working on it
// I just pulled a semi-all nighter for this exercise and got it done 2 hours before the deadline just to get it
// working.  I will try to refactor in the future if I learn more new methods.
// 





// Reflection
// //What was the most difficult part of this challenge?
// The most difficult part was figuring what a similar concept of instance variable or Ruby in Javascript
// And creating functions that is going to return a value for anothe function to work.
// The logic for check function was the most tough part.  Because without matchFound variable,
// it only iterated through the first letter array, and stopped the for loop.  But by setting matchFound
// variable, it iterates through the whole theWord array.
// The function I spent the most time on was play function, I did not use while loop and I had no idea on how
// to execute check function until the whole game is finished.  But after researching for hours,
// I was able to get the syntax right.  Getting the correct syntax was the most stressful moment for this challenge.
// // What did you learn about creating objects and functions that interact with one another?
// As seen in hangman function, which was created like class from Ruby, the concept is solidified.

// // Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned a new method called prototype.  I learned to save some memory a bit.  The concept is, by setting
// newGame variable equalling to new hangman, I only use instance variables set in the hangman function and
// store it as newGame, and use the protype functions will be used on the instance variables set in newGame 
// and execute the functions.

// // How can you access and manipulate properties of objects?
// I can use this. which is sort of like self. from Ruby or instance varibles.  I simply think of it as instance
// variable, which I might be totally wrong. 
//
//
//
//
//

