// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

  bodyElement = $('body')
  mascot = $('.mascot')
  logo = $('input:image')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

  $('h1:first')
  	.css({'color': 'blue',
  	'border-color': 'green',
  	'border-width': '2px',
  	'border-style': 'solid'})
  	.hover(function() {
    $( this ).css('color', 'red');
  }, function() {
    $( this ).css( 'color', 'blue' );
  });

  $('h1:last').html('SeaLions 2016')

//RELEASE 4: Event Listener
  // Add the code for the event listener here

 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.stlzoo.org/files/3913/6260/5731/Sea-lion_RogerBrandt.jpg')
  })
 $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', './dbc_logo.png')
  })

//RELEASE 5: Experiment on your own

$( 'img' ).click(function() {
  $( 'img' ).animate({
    height: "100px"
  }, 5000, function() {
    // Animation complete.
  });
});




})  // end of the document.ready function: do not remove or write DOM manipulation below this.



// Reflection
// What is jQuery?
	// jQuery is a tool to modify/add html and css on a webpage
// What does jQuery do for you?
	// It was able to edit color, add border, and even animate elements
// What did you learn about the DOM while working on this challenge?
	// I learned that learning how the DOM works helps a lot in figuring out the correct selectors to use!





