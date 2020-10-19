// ASSESSMENT 6: JavaScript Coding Practical Questions


// --------------------1) Create a function that takes in an array of objects and returns a sentence about each person with their names capitalized.

var people = [
  { name: "ford prefect", occupation: "hitchhiker" },
  { name: "zaphod beeblebrox", occupation: "president of the galaxy" },
  { name: "arthur dent", occupation: "radio employee" }
]
// Expected output example: "Ford Prefect is a hitchhiker." "Zaphod Beeblebrox is a president of the galaxy." "Arthus Dent is a radio employee."

const peopleInfo = (object) => {
  // empty array for our sentences.
  let sentences = []
  // Map through array of objects and push desired sentence in. 
  object.map(person => {
    sentences.push(`${person.name[0].toUpperCase() + person.name.slice(1)} is a ${person.occupation}.`)
  })
  // Join sentence array into string.
  return sentences.join(" ")
}

console.log(peopleInfo(people), "\n");

// --------------------2) Create a function that takes in a mixed data array and returns an array of only the REMAINDER of the numbers when divided by 3.

var testingArray1 = [23, "Heyyyy!", 45, -9, 0, "Yo", false]
// Expected output: [ 2, 0, -0, 0 ]
var testingArray2 = [5, "Hola", 43, -34, "greetings", true]
// Expected output: [ 2, 1, -1 ]

const numberFilterRemainder = (arr) => {
  let filteredArr = arr.filter(value => typeof value === "number")
  return filteredArr.map(num => num % 3)
}

console.log(numberFilterRemainder(testingArray1));
console.log(numberFilterRemainder(testingArray2), "\n");


// --------------------3) Create a function that takes in two arrays as arguments returns one array with no duplicate values.

var testingArray3 = [3, 7, "hi", 10, 3, "hello", 4, "hi"]
var testingArray4 = [7, "hi", 3, 1, "hi", 4, "hello", 4, 7]
// Expected output: [ 3, 7, "hi", 10, "hello", 4, 1 ]

const noDupes = (...arr) => {
  // create empty arr to throw our arguments into
  let joinedArr = []
  // For each arr passed in, we add in every item to the previous items in joinedArr
  arr.forEach(array => {
      joinedArr = [...joinedArr, ...array]
  }); 
  // return all items that only have a single index value
  return joinedArr.filter((item, index) => joinedArr.indexOf(item) == index)
}

console.log(noDupes(testingArray3, testingArray4))