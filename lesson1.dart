import 'dart:io';

void main(){
  // 1
  // stdout.write("Enter you birth date: ");
  // String? ageStr = stdin.readLineSync();
  // int age = int.parse(ageStr!);
  //
  // stdout.write("Current year: ");
  // String? yearStr = stdin.readLineSync();
  //
  // int year = int.parse(yearStr!);
  // print("You are ${year-age}.");

  //2
  // print("Num 1 = ");
  // int num1 = int.parse(stdin.readLineSync()!);
  // print("Num 2 = ");
  // int num2 = int.parse(stdin.readLineSync()!);
  //
  // if(num1>num2){
  //   print(num1);
  // } else if(num2>num1){
  //   print(num2);
  // }else{
  //   print("Equal");
  // }


  //3
  // stdout.write("Enter a name: ");
  // String? name = stdin.readLineSync()!;
  // print("Hello, $name");

  //4
  // stdout.write("Enter a name: ");
  // String? name = stdin.readLineSync()!;
  //
  // if(name.endsWith("oy")){
  //   print("Female");
  // }else if(name.endsWith("bek")){
  //   print("Male");
  // }


  //5
  // stdout.write("Enter a name: ");
  // String? fullName = stdin.readLineSync()!;
  //
  // List<String> parts = fullName.split(" ");
  //
  // print("First name: ${parts[0]}, Last name: ${parts[1]}");

  //8
  String? text = stdin.readLineSync()!;

  String vowels = "aeiouAEIOU";
  int countVowels = 0;

  for(int i=0; i<text.length; i++){
    if(vowels.contains(text[i])){
      countVowels++;
    }
  }

  print("Vowels count: $countVowels");

}