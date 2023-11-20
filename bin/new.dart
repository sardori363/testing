void main() async {
  int n = 17;
  List<int> list = [];
  int sum = 0;

  for(int i = 1; i<=n;i+=2){
    list.add(i);
    sum += list.reduce((int value, int element) => value + element);
    print(sum);
    print(list);
  }



  var list = [1,2,3,4];
  final summa = Future.delayed(Duration(milliseconds: 200),
          () => sum(list)
  )
      .then((value) => print("sasa"))
      .catchError((e)=>print(e))
      .whenComplete(() => print("Completed"));


  int n = 10000;
  int evens = await sumOfEvens(n);
  print(evens);
  int odds = await sumOfOdds(n);
  print(odds);

  print(sumOfSeries(10));

}

Future<void> sum(List list) async {
  int sum = 0;
  for(int i in list){
    sum+=i;
  }
  print("func tugadi");
}

Future<int> sumOfEvens(int n) async {
  await Future.delayed(Duration(seconds: 1));
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    if (i.isEven) sum += i;
  }
  return sum;
}

Future<int> sumOfOdds(int n) async {
  await Future.delayed(Duration(seconds: 1));
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    if (i.isOdd) sum += i;
  }
  return sum;
}

int sumOfSeries(int n) {
  int summa = 0;
  for (int i = 0; i <= n; i++) {
    int sum = 0;
    for (int j = 0; j <= i; j++) {
      if (j.isOdd) {
        sum += j;
        print(j);
      }
    }
    summa += sum;
  }
  return summa;
}