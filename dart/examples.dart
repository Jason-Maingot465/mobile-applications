// Comments
// Variables and Data Types
// Control FLows and Looping
// Functions and Methods
// void creates a function which does not return a value
// main() name of the function (reserved for dart)
// {code to be excecuted when the function runs}
void main() {
  // call the function
  greeting();
  print(addTwo(100));

  int result = addTwo(30);
  print(result);

  var inferredString = "Jason";
  String explicitString = "Maingot";
  print(inferredString + " " + explicitString);

  // null Safety
  // Should NOT return an error when running
  int? someNumber;
  print(someNumber);
  someNumber = 12;
  print(someNumber);

  //late keyword
  late int willBeNumber;
  //
  int? goals;
  // control flow of the program to avoid error
  if (goals != null){
    print(goals + 2);
  } else {
    print("the variable goals is null");
  }

  // Built-in data type
  // Numeric
  int age = 21;
  num count = 3;
  double temp = 29.9;
  // Booleans (true or false)
  bool isReady = false;
  // Collections: lists, arrays, and maps
  // Strings for expressing text
  String school = "University of Miami";

  // String concatenation with +
  print("My school is " + school);
  // String concatenation with placeholders
  print("My school is $school");

  // Built-in type operations
  print("My schools name has ${school.length} characters");
  if (school.length > 20){
    print("Your school has a long name");
  } else if (school.length < 15){
    print("Your school has a short name");
  }

  // Control operatiors
  // > greater than
  //< less than
  // >= greater than or equal to
  // <= less than or equal to
  //  == equals
  // != not equals
  // % modulus

  // Arithmatic Operators
  // + addition
  // - subtraction
  // * multiplication
  // / division
  // % modulus

  // Math Shortcuts
  int x = 10;
  x = x + 5; // 15
  // same as (+=, -=, *=, and /= also work)
  x += 5;  // 20

  // ! the opposite of a boolean expression
  bool isHere = false; // !isHere

  // || OR (one condition has to be true)
  if (isHere || school.length < 10){
    // do stuff
  }

  // && AND (all conditions must be true)
  if (!isHere && school.length < 10) {
    // do some stuff
  }

  // while loops
  int counter = 0;
  while (counter < 2) {
    print(counter);
    counter++;
  }

  // do while
  do {
    print(counter);
    counter++;
  } while (counter < 20);

  // Variable declaration
  // type identifier/name = value
  // Dynamic types
  // Var identifier/name = value

}

// custom functions
void greeting() {
  print("hello");
}

// Operation with option or parameters
int addTwo(int number){
  return number + 2;
}