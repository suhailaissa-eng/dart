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

  


}


