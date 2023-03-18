import 'dart:io';

void main() {
/* Q1: Write a Dart function that returns whether a passed string is palindrome or not?
 A palindrome is word, phrase, or sequence that reads the same backward as forward, e.g., madam, non, mom etc. */

  /*  stdout.write(
      "\nEnter a string for check wheather string is palindrome or not \n");
  String? word = stdin.readLineSync();

  bool result = palindrome(word);
  if (result) {
    print("\n The given word is palindrome  : $word");
  } else {
    print("\n The given word is Not palindrome  : $word");
  } */

  // Write a Dart function that returns a passed string with letters in alphabetical orders.

/* 
 stdout.write(
      "\nEnter a letters for sorting  alphabetical orders \n");
  String? word = stdin.readLineSync();

  String result = alphabeticalSort(word);
  print("\n The given word is   : $word");
  print("\n The alphabetical sord word is  : $result"); */

  // Write a Dart function that accepts a string as a parameter and converts the first letter of each word of the string in upper case.

/*   stdout
      .write("\nEnter a letters for to convert first letter to upper case \n");
  String? sentence = stdin.readLineSync();

  String result = firstLetterUpperCase(sentence);
  print("\n The given Letter is   : $sentence");
  print("\n The First word of each letter is uppercase are  : $result");
 */

//Q4: Write a Dart function which will take an array of numbers stored and find the second lowest and second greatest numbers, respec
/* 
  String? sentence = stdin.readLineSync();

  String result = firstLetterUpperCase(sentence);
  print("\n The given Letter is   : $sentence");
  print("\n The First word of each letter is uppercase are  : $result"); */

  stdout.write("\nEnter a lenght of list  \n");
  int? length = int.parse(stdin.readLineSync()!);

  List<String> number = [];

  for (var i = 1; i <= length; i++) {
    stdout.write("Enter a number : ${i}  \n");
    String? n = (stdin.readLineSync()!);
    number.add('${n}');
  }

  List result = sortedSecondHighestnLowest(number);
  print("\n The Given list is   : $number");
  print("\n The Second highest and lowest numbers are   : $result");
}

bool palindrome(word) {
  bool flag = false;
  List<String> d1 = (word.split(""));

  List<String> reverseList = [];

  for (var i = (d1.length - 1); i >= 0; i--) {
    reverseList.add(d1[i]);
  }

  String reverse = reverseList.join();

  if (word == reverse) {
    flag = true;
  }

  return flag;
}

String alphabeticalSort(word) {
  List<String> d1 = (word.split(""));
  d1.sort((a, b) => a.compareTo(b));

  String data = '';
  d1.forEach((element) {
    data += '$element';
  });

  return data;
}

String firstLetterUpperCase(word) {
  List<String> value = (word.split(""));

  var result = value[0].toUpperCase();
  for (int i = 1; i < value.length; i++) {
    if (value[i - 1] == " ") {
      result = result + value[i].toUpperCase();
    } else {
      result = result + value[i];
    }
  }
  return result;
}

List sortedSecondHighestnLowest(number) {
  List<String> result = [];

  int l = number.length;
  l = l - 2;
  number.sort();
  result.add(number[1]);
  result.add(number[l]);
  return result;
}
