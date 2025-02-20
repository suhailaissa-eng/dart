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

 

}


