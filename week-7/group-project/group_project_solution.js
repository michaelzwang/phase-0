

//SUM
//As a user, I want to take a list of numbers and add each number to the previous number.
//In the end, I want to have the sum of the entire list of numbers.

//Input: A collection of numbers
// Output: The sum of all the numbers in the collection
// Steps: Create a function for sum with the collection as the argument
// 	   Create a total that is equal to 0
//        Take the collection and using a FOR loop create a counter that is equal to 0 
//          As long as the counter is less than the length of the collection add 1 to the counter
//          Inside the loop set the total equal to the total plus the value within the collection
//        Outside the loop return the total

var sum = function(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
        total += array[i];
  }
  return total;
}
// As a user, I want the computer to do something meaningful with a long list of data I have. If I give the
// computer a bunch of numbers, I want the computer to add all of them together and tell me what the sum is.  


//MEAN
//As a user, I want to take a list of numbers and find the sum.
//I then want to divide the sum by the total amount of numbers.
//The result is the mean.

// Input: A collection of numbers
// Output: The mean(average) of the numbers in the collection
// Steps: Create a function for sum with collection as the argument
// 	   Create a total that is equal to 0
// 	   Take the collection and using a FOR loop create a counter that is equal to 0 
//    	     As long as the counter is less than the length of the collection add 1 to the counter
//          Inside the loop set the total equal to the total plus the value within the collection
// 	   Outside the loop return the total divided by the collection length

var mean = function(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++) {
        total += array[i];
  }
  return total/array.length;
}

// As a user, I want the computer to calculate an average value from a long list of numbers that I have. I
// would like it to count the sum of my data, as well as how many data points I have, and use those results to
// determine the average.




//MEDIAN
//As a user, I want to take a list of numbers, put them in numerical order, and determine how many numbers there are.
//If there are an odd number of numbers, I want to find the number in the middle of the list.
//If there are an even number of numbers, I want to find the mean of the two numbers in the middle of the list.
//The result is the median.

// Input: A collection of numbers
// Output: The middle number for an odd collection length
// 		The average of the two middle numbers for an even collection length
// Steps: Sort the collection of numbers from lowest to highest
// 	   Create a variable and set it equal to half of the total collection length rounding down to the nearest whole number
// 	   IF the length of the collection is odd return the middle number
// 	   Else return the average of the middle number plus the number below the middle number

function median(numbers) {
  numbers.sort( function(a,b) {return a - b;} );
    var half = Math.floor(numbers.length/2);
      if(numbers.length % 2)
        return numbers[half];
      else
        return (numbers[half-1] + numbers[half]) / 2.0;
}

//As a user, I want the computer to look at a long list of numbers and provide a basic statistical analysis.
// Specifically, I want the computer to give me the median as a single value. By definition, half of the values in my list
// will fall below the median, and the other half will fall above it. 




//SUMMARY
//All tests passed!
