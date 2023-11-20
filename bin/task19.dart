///task1
/*
* Berilgan satrdagi raqamni yig’indisini hisoblab,
* print qilib beradigan Future<void>function yozing.
* Agar satrda raqamdan tashqari biron harf yoki belgi qatnashgan
* bo’lsa Future ning catchError i orqali tutib(handle) qiling oling hatolikni chop eting.
*
* */
//
// void main() {
//   final summa = Future.delayed(Duration(milliseconds: 200),
//           () => task1("111")
//   )
//       .then((value) => print(value))
//       .catchError((e)=>print(e))
//       .whenComplete(() => print("Completed"));
// }
//
// Future<int> task1(String str) async {
//   int sum = 0;
//
//   for(int i = 0;i<str.length;i++){
//     sum += int.parse(str[i]);
//   }
//
//   return sum;
// }

///task2
/*
* Kiritilgan n songacha bo’lgan faqat k ga karrali sonlarni chiqaruvchi asinxron function hosil qiling.
* */
// void main() {
//   final summa = Future.delayed(Duration(milliseconds: 200),
//           () => task2(10, 2)
//   )
//       .then((value) => print(value))
//       .catchError((e)=>print(e))
//       .whenComplete(() => print("Completed"));
// }
//
// Future<List> task2(int n, int k) async {
//   List list = [];
//
//   for(int i = 0; i<=n;i++){
//     if(i%k==0){
//       list.add(i);
//     }
//   }
//
//   return list;
// }

/// task3
/*
* Random 20 ta [1:100] oraliqda son hosil qiluvchi Future<void> function  tuzing.
* Sonlarda 5 ga karralisi bo'lsa 5 ga bo'lib chiqaradigan aks holda throw Exception
* qaytaradigan transformer nomli function yozing.

* */
import 'dart:math';
import 'dart:io' show Platform;

void main() {
  // Get the operating system as a string.
  String os = Platform.operatingSystem;
  // Or, use a predicate getter.
  if (Platform.isMacOS) {
    print('is a Mac');
  } else {
    print('is not a Mac');
  }
}


// Future<void> task3() async{
//   List<int> random = [];
//   for(int i =0; i<20;i++){
//     random.add(random*100);
//   }
// }