/*:
**Exercise:** Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
*/
let students = [
    ["first" : "Obi-Wan",   "last" : "Kenobi",      "age" : "55", "class" : "Math"],
    ["first" : "Darth",     "last" : "Vader",		"age" : "76", "class" : "English"],
    ["first" : "Anakin",    "last" : "Skywalker",	"age" : "17", "class" : "History"],
    ["first" : "Darth",     "last" : "Sidious",		"age" : "88", "class" : "Science"],
    ["first" : "Padme",     "last" : "Amidala",		"age" : "25", "class" : "Math"],
    ["first" : "Mace",      "last" : "Windu",		"age" : "56", "class" : "Science"],
    ["first" : "Count",     "last" : "Dooku",		"age" : "67", "class" : "History"],
    ["first" : "Luke",      "last" : "Skywalker",	"age" : "21", "class" : "Math"],
    ["first" : "Han",       "last" : "Solo",		"age" : "35", "class" : "Science"],
    ["first" : "Leia",      "last" : "Organa",		"age" : "21", "class" : "English"],
    ["first" : "Chew",      "last" : "Bacca",		"age" : "33", "class" : "Science"],
    ["first" : "Boba",      "last" : "Fett",		"age" : "32", "class" : "History"],
    ["first" : "Lando",     "last" : "Calrissian",	"age" : "55", "class" : "English"],
    ["first" : "Kylo",      "last" : "Ren",			"age" : "21", "class" : "Math"],
    ["first" : "Poe",       "last" : "Dameron",		"age" : "25", "class" : "History"],
    ["first" : "Finn",      "last" : "FN-2187",		"age" : "23", "class" : "Science"],
    ["first" : "Rey",       "last" : "Rey",			"age" : "16", "class" : "English"]
]
/*:
**Functions:**
* each = Iterate over each element in the array
* all = Returns true if all of the elements is not false
* any = Returns true if at least one of the elements is not false
* contains = Returns true if the element is present
* indexOf = Returns the index at which element can be found
* filter = Returns an array of all the elements that pass a truth test
* reject = Returns the elements in the array without the elements that pass a truth test
* pluck = Returns an array of a specific value from all the elements
>> **Constraints:**
Use the above functions to query your students.
>>
>> **Example Output:**
* Last names of math and sciense students where age > 25 and age < 80
* ["Kenobi", "Windu", "Solo", "Bacca"]
*/

print ("Each student:\n")
each(students) { print("\($0["first"]!) \($0["last"]!) is index \($1)") }

print ("\ntrue if all of the elements are true. class in [\"Science\", \"Math\", \"English\", \"History\"]") 
print((all(students) { ["Science", "Math", "English", "History"].contains($0["class"]!) }))

print ("\ntrue if any of the elements are true. last in [\"Vader\"]")
print((any(students) { ["Vader"].contains($0["last"]!) }))

print("\nReturns the index at which element can be found. Index of item w/ age==88")
print((indexOf(students) { Int($0["age"]!) == 88 }!))

print("\ncontains = Returns true if the element is present. age == 12")
print((contains(students) { Int($0["age"]!) == 12 }))

print("\nfilter = Returns an array of all the elements that pass a truth test. class = English")
print ( filter(students) { ($0["class"]!) == "English" }!)

print("\nreject = Returns the elements in the array without the elements that pass a truth test. class = English")
print (reject(students) { ($0["class"]!) == "English" }!)

print("\npluck = Returns an array of a specific value from all the elements. array of classes")
print((pluck(students) { $0["class"]! }))



