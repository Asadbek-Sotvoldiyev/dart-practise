import 'dart:io';

int getDayIndex(String day){
  switch (day) {
    case "dushanba":
      return 1;
    case "seshanba":
      return 2;
    case "chorshanba":
      return 3;
    case "payshanba":
      return 4;
    case "juma":
      return 5;
    case "shanba":
      return 6;
    case "yakshanba":
      return 7;
    default:
      return 0;
  }
}

void oneToTwenty(){
  for(int i=1; i<=20; i++){
    if(i%2==1){
      continue;
    }
    print(i);
  }
}

String reverseString(String text){
  // 1
  // return text.split("").reversed.join("");

  //2
  // String reversedText = "";
  // for(int i=text.length-1; i>=0; i--){
  //   reversedText+=text[i];
  // }
  // return reversedText;

  // 3
  StringBuffer buffer = StringBuffer();
  for(int i=text.length-1; i>=0; i--){
    buffer.write(text[i]);
  }
  return buffer.toString();
}

int evalPetrolPrice(int price, {int? v}){
  int sigim = v ?? 60;
  return sigim*price;
}

void main() {
  /*
    1. Hafta kunini string sifatida qabul qilib, o'sha hafta kunining tartib raqamini qaytaruvchi funksiya yozing.
    a. "Dushanba" yoki "dushanba" yoki "DuShaNBA" -> 1
    b. "yakshanba" -> 7
    * */

  // stdout.write("Enter a day: ");
  // String? day = stdin.readLineSync()!;
  // day = day.toLowerCase();
  // print("Day index: ${getDayIndex(day)}");

  /*
  2. O'zingiz istagan loopdan foydalanib 1 dan 20gacha bo'lgan juft sonlarni chiqaruvchi funksiya yozing. Lekin loop ichida continue dan foydalaning.
  */
  // oneToTwenty();

  /*3. Stringni qabul qilib uni teskarisiga aylantirib qaytaruvchi funksiya yarating.*/
  // print(reverseString("Hello"));

  /*4. Mashinaning yonilg'i bakining sig'imini va bir litr benzin narxini qabul qilib, mashinaning bakini to'ldirib yonilg'i quyish uchun qancha pul ketishini hisoblab chop etadigan funksiya yozing. Bunda, bakning sig'imini kiritish ixtiyoriy bo'lishi lozim va agar hech qanday qiymat kiritilmagan bo'lsa 60 litr qabul qilinishi kerak.*/
  stdout.write("V = ");
  String? vStr = stdin.readLineSync();
  int? vInt = vStr != null && vStr.isNotEmpty ? int.parse(vStr) : null;

  stdout.write("Enter a price: ");
  int price = int.parse(stdin.readLineSync()!);

  print("To'liq narx: ${evalPetrolPrice(price, v: vInt)} so'm");

}
