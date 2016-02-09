// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Michael";
console.log("Hello" + " " + name);

// prompt("What's your favorite food?");
// alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var i = "#"; i.length <= 7; i += "#")
	console.log(i);

// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
	if (num1 < num2)
		return num1;
	else
		return num2;
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Michael",
	age: 23,
	favorite_foods: ["fries", "ice cream", "rice"],
	quirk: "tv fanatic"
};

console.log(me.name);
console.log(me.age);
console.log(me.favorite_foods);
console.log(me.quirk);

