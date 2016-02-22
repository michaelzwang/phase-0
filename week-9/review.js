// Initial Solution in Ruby
// def create_list(items)     input: string of items (example: "carrots apples cereal pizza")
//   new_list = Hash.new(1)
//   items.split.each do |item|
//     new_list[item] = 1
//   end
//   new_list
// end


// Solution in JavaScript
var new_list = {};

var create_list = function(items) {
  var item_list = items.split(" ");

  for (var i = 0; i < item_list.length; i++) {
    new_list[item_list[i]] = 1
  };
};  

create_list("carrots apples cereal pizza")
console.log(new_list)

// RUBY
// def add_item(new_list, item, quantity=1)  
//   new_list[item] = quantity
//   new_list
// end

// JS
var add_item = function(new_list, item, quantity){
  new_list[item] = quantity;
};

add_item(new_list, "lemonade", 2)
add_item(new_list, "tomatoes", 3)
add_item(new_list, "onions", 1)
add_item(new_list, "ice cream", 4)
console.log(new_list)


// RUBY
// def remove_item(new_list, item)
//   new_list.delete(item)
//   new_list
// end

// JS
var remove_item = function(new_list, item){
  delete new_list[item];
};

remove_item(new_list, "lemonade")
console.log(new_list)

// RUBY
// def change_quantity(new_list, item, quantity)
//   new_list[item] = quantity
//   new_list
// end

// JS
var change_quantity = function(new_list, item, quantity){
  new_list[item] = quantity
};

change_quantity(new_list, "ice cream", 1)
console.log(new_list)


// RUBY
// def print_list (new_list)
//   new_list.each do |item, quantity|
//     puts "Item: " + item.to_s.capitalize + " - " + quantity.to_s
//   end
// end

// JS
var print_list = function(new_list){
  for (var item in new_list){
    console.log("Item --- " + item.charAt(0).toUpperCase() + item.slice(1) + ": " + new_list[item])
  }
}

print_list(new_list)

// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  // I was able to review creating objects (to work like a hash) and functions

// What was the most difficult part of this challenge?
  //The most difficult part was to figure out how to use JS that was equivalent to the built in Ruby methods.

// Did an array or object make more sense to use and why?
  // I think and object made sense because each object property had its own value in the list.




