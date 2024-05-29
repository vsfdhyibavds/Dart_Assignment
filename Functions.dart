// Functions in Dart

// 1. Addition
int addTwo(int a, int b) {
  int sum = a + b;
  return sum;
}

// 2. Subtraction
int subtractTwo(int a, int b) {
  int subtract = a - b;
  return subtract;
}

// 3. Multiplication
int multiplyTwo(int a, int b) {
  int multiply = a * b;
  return multiply;
}

// 4. Division
double divideTwo(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Division by zero is not allowed');
  }
  double divide = a / b;
  return divide;
}

// 5. String Length
int stringLength(String str) {
  return str.length;
}

// 6. Get First Element
dynamic getFirstElement(List<dynamic> list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    return null;
  }
}

void main() {
  // Testing the functions
  print('Addition: ${addTwo(3, 4)}'); // 7
  print('Subtraction: ${subtractTwo(10, 3)}'); // 7
  print('Multiplication: ${multiplyTwo(2, 5)}'); // 10
  print('Division: ${divideTwo(10, 2)}'); // 5.0
  print('String Length: ${stringLength("Hello")}'); // 5
  print('Get First Element: ${getFirstElement([1, 2, 3, 4])}'); // 1
}
