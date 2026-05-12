// JavaScript Basics
// Single-line comment
/* Multi-line
   comment */

let fruits = ["Apple", "Banana", "Mango"];
function sortDesc() {
  fruits.sort().reverse();
  console.log(fruits);
}

let obj = { a: 1, b: 2 };
for (let key in obj) {
  console.log(key, obj[key]);
}

let person = { firstname: "John", lastname: "Doe" };
console.log(person.firstname); // dot notation
console.log(person["lastname"]); // bracket notation

console.log(x); // undefined because hoisting moves declaration
var x = 5;

"use strict";
function strictExample() {
  // y = 10; // Uncommenting this line would throw a ReferenceError
}
