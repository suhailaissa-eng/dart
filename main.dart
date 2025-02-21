//Hello Dart

//Main entry point
void main() {
  print('Hello, Dart!');

  // 1-Data type and variable
  //1.1 Objects: Reality and Dart
  // Objects can do things and can have things done to them.

  //1.2 Variable declarations
  //Information stored in a computer's memory
  var x = 5;
  var y = 20;
  var sum = x + y;
  print(sum);

  // The Dart language has special support for the following:
  // Numbers (int, double)
  // Strings (String)
  // Booleans (bool)
  // Records ((value1, value2))
  // Functions (Function)
  // Lists (List, also known as arrays)
  // Sets (Set)
  // Maps (Map)
  // Runes (Runes; often replaced by the characters API)
  // // Symbols (Symbol)
  // The value null (Null)

  print(" Variable declarations:");
  double x1 = 3.5;
  int y1 = 6;

  print(x1 + y1);
  print(x1 - y1);
  print(x1 * y1);
  print(x1 / y1);

  print("example:");
  double num1 = -15.75;
  double num2 = 4.3;
  print('Original number: $num1'); //-15.75
  print('Absolute value: ${num1.abs()}'); //15.75
  print('Compare $num1 to $num2: ${num1.compareTo(num2)}'); // -1
  print('Remainder of $num1 / $num2: ${num1.remainder(num2)}'); //-2.85
  print('Rounded value of ${num1}: ${num1.round()}'); //-16
  print('${num1} To double: ${num1.toDouble()}'); //-15.75
  print('${num1} To integer: ${num1.toInt()}'); //-15
  print('To string: ${num1.toString()}'); //-15.75
  print('Truncated value of ${num1}: ${num1.truncate()}'); //-15

  print("Strings:");
  String x2 = "Hello";
  String y2 = "Suhaila";

  String z2 = x2 + ' ' + y2;
  print(z2);

  //Booleans
  bool isOn = true;
  bool isOof = false;

  //Lists
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.

  // Growable List
  List<int> numbers, numbers2, fixedList;

  numbers = [1, 2, 3, 4];
  numbers2 = []; // Correctly initializing an empty list

  print(numbers); // Output: [1, 2, 3, 4]
  print(numbers2); // Output: []

  // Adding an item
  numbers.add(5);
  numbers2.add(11);

  print(numbers); // Output: [1, 2, 3, 4, 5]
  print(numbers2); // Output: [11]

  // Accessing items (Fix: Avoid out-of-bounds access)
  print(numbers[0]); // Output: 1

  // Removing an item
  numbers.remove(3);
  print(numbers); // Output: [1, 2, 4, 5]

  // Fixed-length List
  fixedList = List<int>.filled(
    3,
    1,
  ); // Creates a fixed-size list initialized with 1

  //fixedList.add(5); // Error: Cannot add to a fixed-length list
  //fixedList.remove(0); // Error: Cannot remove from a fixed-length list

  fixedList[1] = 99;
  print(fixedList); // Output: [1, 99, 1]

  List<int> var_name1 = List<int>.filled(2, 0);
  print(var_name1); // Output: [0, 0]
  var_name1 = List<int>.filled(4, 1);
  print(var_name1); // Output: [1, 1, 1, 1]

  List<int> number = [10, 20, 30, 40, 50];
  // Add and remove
  number.add(60);
  print(number.length); // 6
  print(number.indexOf(30)); //2
  number.remove(30);
  print(number.indexOf(30)); //-1
  // Access and modify
  print(number[1]); // 20
  number[1] = 25;
  // Query
  print(number.contains(48)); // false
  // Sort and reverse
  number.sort();
  print(number.reversed.toList()); // Reversed list

  List items = ["Book", "Car", "Pin"];
  items.add(12);
  items.add(2.2);
  print(items);
  print(items.runtimeType);

  //Maps
  Map employeeList = {001: "John Doe", 002: "Jane Doe"};

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

  var gifts2 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['fourth'] = 'calling birds';

  var nobleGases2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  final constantMap = const {2: 'helium', 10: 'neon', 18: 'argon'};

  // constantMap[2] = 'Helium'; // This line will cause an error.

  Map<String, int> studentGrades = {'Alice': 90, 'Bob': 85, 'Charlie': 88};

  var map1 = <int, double>{1: 90, 2: 99.2};
  var map2 = {'A': 90, 'B': 99.2}; // Fixed closing bracket

  print(studentGrades); // Output: {Alice: 90, Bob: 85, Charlie: 88}
  print(
    map1,
  ); // Output: {1: 90.0, 2: 99.2} (90 is promoted to 90.0 because the values are doubles)
  print(map2); // Output: {A: 90, B: 99.2}

  print(studentGrades); // Output: (Alice: 90, Bob: 85, Charlie: 88}
  // Accessing a Value
  print(studentGrades['Alice']); // Output: 90
  // Adding a Key-Value Pair
  studentGrades['David'] = 92;
  print(studentGrades); // Output: (Alice: 90, Bob: 85, Charlie: 88, David: 92)
  // Updating a Value
  studentGrades['Alice'] = 95;
  print(studentGrades); // Output: (Alice: 95, Bob: 85, Charlie: 88, David: 92)
  // Removing a Key-Value Pair
  studentGrades.remove('Bob');
  print(studentGrades); // Output: (Alice: 95, Charlie: 88, David: 92}
  // Checking if a Key Exists
  print(studentGrades.containsKey('Charlie')); // Output: true
  // Checking if a Value Exists
  print(studentGrades.containsValue(88)); // Output: true
  // Iterating Over Keys
  print('Keys:');

  Map<String, int> scores = {'Bob': 36};
  for (var key in ['Bob', 'Rohan', 'Sophena']) {
    print(scores.putIfAbsent(key, () => key.length));
  }
  scores['Bob']; // 36
  scores['Rohan']; //  5
  scores['Sophena']; //  7

  // Map<String, int> map1 = null; Error: map1 is not nullable
  //Map<String, int> map2 = {"apple": null}; Error: map values (int) is not nullable

  //  In Dart, a List itself can be null (List<T>?).
  // A List’s elements can be null (List<T?>).

  List<int>? nullableList = null; // Entire list is null
  List<int?> listWithNullableValues = [1, null, 3]; // Elements can be null

  //Set

  Set<int> number11 = {1, 2, 3};
  Set number22 = <int>{1, 2, 3};
  Set number33 = {1, 2, 3};

  print(number11.length);
  number11.add(4);
  print(number11);
  print(number11.length);
  number11.remove(4);
  print(number11);
  print(number11.length);

  print(number11.contains(3));
  print(number11.isEmpty);
  print(number11.isNotEmpty);

  number11.clear();
  print(number11.isEmpty);

  //Type inference and annotation

  var x5 = 10; // instead of int x = 10;
  var y5 = 1.2; // instead of double y = 1.2;
  //	x = 1.1; /Syntax error because x is int and does not accept double

  //Basic Operators
  var x6 = 3 + 4 + 78;
  print(x6);
  var x7 = (3 * 8) - 9;
  print(x7);

  //assignment operater
  x7 = 7;

  //compound assignment operater
  x6 += 3;

  //Logical Operater
  print(x == 3 && y == 9 || x6 == 5);

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  var num11 = 10;
  var num22 = 5;
  var result = num11 < num22 || ++num11 < num22;
  print(result);

  var num12 = 10;
  var num23 = 5;
  var result2 = num12 + num23 * 2 - 3;
  print(result2);

  //String Operators

  const string = 'Dart is fun';
  print(string.substring(0, 4));

  const string1 = 'Dart ' + 'is' + ' fun';
  print(string1); // 'Dart is fun'

  const string2 =
      'Dart '
      'is'
      ' fun';
  print(string2); // 'Dart is fun'

  const string3 = 'dartlang';
  print('$string3 has ${string3.length} letters');

  var fName = 'Suhaila';
  var lName = "Issa";
  var fullName = 'Name: ${fName} $lName';
  print(fullName);

  const string4 = 'Dart';
  final charAtIndex = string[0];
  print(charAtIndex); // 'D'

  const string5 = 'Hello, Dart World!';
  bool hasDart = string5.contains('Dart');
  bool endsWithWorld = string5.endsWith('World!');
  print('Output: $hasDart'); // Output: true
  print('Output: $endsWithWorld'); // Output: true

  String text = " Hello, Dart World! ";
  print("toLowerCase: ${text.toLowerCase()}"); // Output: hello, dart world!
  print("toUpperCase: ${text.toUpperCase()}"); // Output: HELLO, DART WORLD!
  print("trim: '${text.trim()}'"); // Output: "Hello, Dart World!"
  String otherText = "Hello, Dart World!";
  print(
    "compareTo: ${text.trim().compareTo(otherText)}",
  ); // Output: 0 (since they are equal)
  print(
    "replaceAll: ${text.replaceAll("Dart", "Flutter")}",
  ); // Output: Hello, Flutter World!
  var words = text.split(" ");
  print(
    "split: $words",
  ); // Output: ["", "", "Hello,", "Dart", "World!", "", ""]
  print("substring: '${text.trim().substring(7, 11)}'"); // Output: "Dart"
  var num = 123;
  print("toString: ${num.toString()}"); // Output: "123"
  print(
    "codeUnitAt: ${text.codeUnitAt(0)}",
  ); // Output: 32 (ASCII value for space)

  String text2 = "Dart Programming";
  print(text2.indexOf('Programming'));
  print(text2[5]);

  String text3 = "Dart";
  print("Hello, $text3!");

  //If statment
  var tem = 30;
  if (tem > 23) {
    print("yes");
  }

  //loops

  for (var i = 0; i < 5; i++) {
    print(i);
  }

  var j = 0;
  while (j < 5) {
    print(j);
    j++;
  }

  //switch
  var suspect = "Bob Johnson";
  switch (suspect) {
    case "Michael Bane":
      // execute this code block if the suspect is Michael Bane
      print("Michael Bane is the culprit");
      break;
    case "Janet Smith":
      // execute this code block if the suspect is Janet Smith
      print("Janet Smith is the culprit");
      break;
    case "Bob Johnson":
      print("Bob Johnson is the culprit");
      // execute this code block if the suspect is Bob Johnson
      break;
    default:
      print("Please provide a suspect.");
    // execute this code if no suspect is provided
  }

  var numbera = 2;

  switch (numbera) {
    case 1:
      print("1");
    case 2:
      print("2");
    case 3:
      print("3");
      break;
    default:
      print("Invalid number");
  }
}
