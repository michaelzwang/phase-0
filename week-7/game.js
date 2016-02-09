// Design Basic Game Solo Challenge

// This is a solo challenge
// 2 objects with properties
// 2 functions that interact with those objects by adding or modifying the object's properties

// Your mission description:
// Overall mission: escape the dungeon
// Goals: find the exit
// Characters: Tharin
// Objects: Tharin(health, position), the exit(position)
// Functions: moveUp, moveDown, moveLeft, moveRight

// Pseudocode
// Create Tharin object with position and escape properties
// Create functions that allow Tharin to move up, down, left, right
// Create exit object and assign it random position
// Move Tharin
// Check Tharin's position
// If Tharin is at exit, he wins and escapes the dungeon! If not, keep moving.

// Initial Code
var tharin = {
	posX: 0,
	posY: 0,
	escape: false,
};

var exit = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
};

var moveUp = function(object) {
	object.posY += 1;
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);
	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		tharin.escape = true;
		console.log("Tharin found the exit and escaped the dungeon!")
	}
};

var moveDown = function(object) {
	object.posY -= 1;
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);
	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		tharin.escape = true;
		console.log("Tharin found the exit and escaped the dungeon!")
	}
};

var moveLeft = function(object) {
	object.posX -= 1;
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);
	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		tharin.escape = true;
		console.log("Tharin found the exit and escaped the dungeon!")
	}
};

var moveRight = function(object) {
	object.posX += 1;
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);

	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		tharin.escape = true;
		console.log("Tharin found the exit and escaped the dungeon!")
	}
};


//moveUp(tharin);
//moveUp(tharin);
//moveRight(tharin);

//console.log(exit)


// Refactored Code

var tharin = {
	posX: 0,
	posY: 0,
	escape: false,
};

var exit = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
};

var move = function(object, direction) {
	if(direction === 'up'){
		object.posY += 1;
	}
	else if(direction === 'down'){
		object.posY -= 1;
	}
	else if(direction === 'left'){
		object.posX -= 1;
	}
	else if(direction === 'right'){
		object.posX += 1;
	}
	
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);
	
	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		tharin.escape = true;
		console.log("Tharin found the exit and escaped the dungeon!")
	}
};



move(tharin, 'up');
move(tharin, 'up');
move(tharin, 'right');

console.log(exit)




// Reflection
//What was the most difficult part of this challenge?

//What did you learn about creating objects and functions that interact with one another?

//Did you learn about any new built-in methods you could use in your refactored solution? 
//If so, what were they and how do they work?

//How can you access and manipulate properties of objects?

//
//
//