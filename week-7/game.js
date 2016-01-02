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
var wordBank= ['cash', 'dog', 'dish', 'money', 'raddish', 'carrot', 'factory', 'model', 'umbrella', 'persimmon',
'hazelnut', 'industry', 'collapse', 'america', 'champion', 'storage', 'design', 'heater', 'paper', 'treadmill',
'blanket', 'retail', 'marriage', 'engagement', 'apartment', 'weekend', 'rabbit', 'elephant', 'sweater',
'neighborhood', 'neighbor', 'easter', 'naughty', 'crooked', 'laptop', 'dictionary', 'toothache', 'conditoiner',
'program', 'project', 'olympics', 'manipulate', 'eloquent', 'variable', 'peacoat', 'coffee', 'penguin', 'tissue',
'dresser', 'wardrobe']
var life = 9
var messages = {
            win: 'You win!',
            lose: 'Game over!',
            guessed: ' already guessed, please try again...',
        };
        
//Let the word bank have several words in an array
var chosenWord= wordBank[Math.floor(Math.random() * wordBank.length)];
var theWord = chosenWord.split("")
console.log(theWord)

//Display the number of letters of that letter
console.log('There are ' +chosenWord.length.toString()+ ' letters. And you have '+ life.toString() + ' lives!')
//Ask for the player's input letter
// var letterGuess = prompt(messages.validLetter+ " You have " + life.toString() " tries.  Good luck.")
// letterGuess = letterGuess.substring(0,1).toLowerCase()

//If it matches any letter from the word bank, display where the letter is located
function guess(letterGuess){
 if(theWord.includes(letterGuess)){
 	display(letterGuess);
 	}
 else {
 	wrong(letterGuess);
 	   }
}

function display(correctLetter){
for(var i=0; i< chosenWord.length; i++){
	if(correctLetter===theWord[i]){
		prompt("That is correct! The letter " + correctLetter + " is on the "+ i.toString()+ "th position.")
							}}}



//If it is wrong, take a life away from the life toll
function wrong(wrongLetter){
		life-=1;
		prompt("That is incorrect! You have "+life.toString()+" lives left. Last Letter: " + wrongLetter)
		}


//Game is finished if the player guesses the word before the life toll is gone or life toll is zero
if(life=0){
	console.log(messages.lose)
}





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//

