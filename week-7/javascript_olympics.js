 // JavaScript Olympics


//Bulk Up
function athlete(name, sport){
  this.name = name;
  this.sport = sport;
}

var Neymar = new athlete ("Neymar", "soccer");
var Messi = new athlete ("Messi", "soccer");
var Iniesta = new athlete ("Iniesta", "soccer");


var athletes = [Neymar, Messi, Iniesta]

var add_win = function(athletes){
    for (var i=0; i < athletes.length; i++){
  
    athletes.win = athletes[i].name + " won the Champions League!"
    console.log (athletes.win)   
    }
}

add_win(athletes)


// Jumble your words
function reverse(word){
  var array = word.split("").reverse().join("");
  console.log(array)
}

reverse("Hello")

// 2,4,6,8

function even_numbers(array){
  var evens = []
  
  for (var i=0; i < array.length; i++){
    if(array[i] % 2 === 0){
      evens.push(array[i])
    }
  }
  console.log(evens)
}
even_numbers([2,3,4,6,8,12,11])

// "We built this city"
function Athlete(){
    this.name = "Michael Phelps";
    this.age = 29;
    this.sport = "swimming";
    this.quote = "It's medicinal I swear!"
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
//What JavaScript knowledge did you solidify in this challenge?
	//I solidified my understanding of iterating in JavaScript.
	//I also got more practice making functions.

//What are constructor functions?
	//Constructor functions are used if you need to do some initial work before the object is created 
	//or require multiple instances of the object where each instance can be changed
	//allows the use of new to create a new object

//How are constructors different from Ruby classes (in your research)?
	//constructors are functions that manufacture new objects and define their behavior
	//classes in ruby are objects that manufacture new objects and define their behavior
	//the two are very similar but everything defined within a class stays within it
	//methods and properties from constructors are exposed and accessed directly

