import 'dart:io';

void main() {
  String? value;
  value = stdin.readLineSync();
  bool con = RegExp(
    r'^(https?|ftps?){1}://w{3}\.[\w\-\.]{1,60}\.[a-zA-Z\d\.]{2,8}',
  ).hasMatch(value!);

  if (con) {
    print("Valid");
  } else {
    print("Invalid");
  }
}