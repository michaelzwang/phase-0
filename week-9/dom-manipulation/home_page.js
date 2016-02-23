// DOM Manipulation Challenge

// Add your JavaScript calls to this page:

// Release 1:

//var done = document.getElementById("release-0");
//done.className += "done";

var done = document.getElementById("release-0");
done.classList.add("done");

// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

var change = document.getElementsByTagName("h1");
var newtext = change[0];
newtext.innerHTML = "I completed release 2";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:

 var size = document.getElementsByClassName("release-4");
 for (var i = 0; i < size.length; ++i) {
 	size[i].style.fontSize = "2em";
 }
	

// Release 6:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));



