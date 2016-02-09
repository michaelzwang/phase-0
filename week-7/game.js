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
// Add goal: collect gold coin, rescue princess, defeat dragon
// Create new variables with random position
// When Tharin moves, check his new position

var tharin = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1),
	goldCount: 0,
	weapon: "none",
	princess: false,
	escape: false,
};

var exit = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
};

var gold = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
};

var sword = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
};

var dragon = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
}

var princess = {
	posX: Math.floor((Math.random()*5)+1),
	posY: Math.floor((Math.random()*5)+1)
}

var move = function(direction) {
	if(direction === 'up'){
		tharin.posY += 1;
	}
	else if(direction === 'down'){
		tharin.posY -= 1;
	}
	else if(direction === 'left'){
		tharin.posX -= 1;
	}
	else if(direction === 'right'){
		tharin.posX += 1;
	}
	
	console.log("Tharin is at:" + tharin.posX + "," + tharin.posY);

	if(tharin.posX === gold.posX && tharin.posY === gold.posY){
		tharin.goldCount += 1;
		console.log("Tharin found a golden coin! He put it in his bag.")
	}

	if(tharin.posX === sword.posX && tharin.posY === sword.posY){
		tharin.weapon = "sword";
		console.log("Tharin picked up a powerful sword!")
	}

	if(tharin.posX === princess.posX && tharin.posY === princess.posY){
		tharin.princess = true;
		console.log("Tharin found the beautiful princess! He must take her to safety!")
	}

	if(tharin.posX === dragon.posX && tharin.posY === dragon.posY){
		console.log("Tharin encountered a mighty dragon in the dungeon!");
		attack();
	}

	if(tharin.posX === exit.posX && tharin.posY === exit.posY){
		console.log("Tharin found the exit!");
		rescue();
	}
};

var attack = function(){
	if(tharin.weapon === "sword"){
		console.log("Tharin defeated the mighty dragon with the powerful sword!")
	}
	else{
		console.log("Tharin did not have a weapon to defend himself and was defeated by the mighty dragon. Game over!")
	}
};

var rescue = function(){
	if(tharin.princess === true){
		tharin.escape = true;
		console.log("Tharin rescued the princess and escaped the dungeon!")
	}
	else{
		console.log("Tharin must rescue the princess before he can escape!")
	}
}


move('up');
move('up');
move('right');
move('right');

console.log(exit)
console.log(gold)
console.log(sword)
console.log(tharin)



// Reflection
//What was the most difficult part of this challenge?
	//For me, it was difficult at first to figure out how to modify the original object.
	//Once I figured that out, and had my basic initial solution, I was able to effectively build upon it an add more elements to the game.

//What did you learn about creating objects and functions that interact with one another?

//Did you learn about any new built-in methods you could use in your refactored solution? 
//If so, what were they and how do they work?

//How can you access and manipulate properties of objects?

//
//
//