// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// Pseudocode

//DEFINE function that accepts an integer
//CHANGE integer to string
//IF string greater than length of 3 characters
// DO split on string every 3 characters 
// JOIN every set with comma in between
//REVERSE string
//else
// return num



// Initial Solution

var separateCommas = function(integer) {
  var intString = String(integer);
  var counter = 3;
  
  var intArray = intString.split("").reverse()
  

  while (counter < intArray.length){
    intArray.splice(counter, 0, ",")
    counter += 4;
  }
  
  var arrayString = intArray.reverse().join("");
  console.log(arrayString)
}

separateCommas(12345)



// Refactored Solution

var separateCommas = function(integer) {
  var intArray = String(integer).split("").reverse();
  
  for (var i = 3; i < intArray.length; i+=4){
    intArray.splice(i, 0, ",")
  }
  
  var arrayString = intArray.reverse().join("");
  console.log(arrayString)
}

separateCommas(1234567890)

// Reflection
//What was it like to approach the problem from the perspective of JavaScript? 
//Did you approach the problem differently?
  //It was difficult at first because we wanted to use methods from Ruby that didn't work in JavaScript.
  //We had to work around these differences but the overall logic was similar.

//What did you learn about iterating over arrays in JavaScript?
  //JS has a nice syntax that can be used in the for loop that provides the iterator and condition right at the start.

//What was different about solving this problem in JavaScript?
  //We had to figure out which methods worked for strings vs arrays.

//What built-in methods did you find to incorporate in your refactored solution?
  //the for loop
  //splice method




