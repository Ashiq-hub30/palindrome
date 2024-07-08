import 'dart:io';

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;
  bool isPalindrome = isPlaindromeString(input);
  if (isPalindrome) {
    print("$input is a palindrome");
  } else {
    print("$input is not a palindrome");
  }
}

bool isPlaindromeString(String s) {
  int start = 0;
  int end = s.length - 1;
  while (start < end) {
    if (s[start] != s[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}
