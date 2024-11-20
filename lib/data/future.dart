Future<void> task() async {
  await Future.delayed(const Duration(seconds: 3));
  print('task');
}

Future<void> main() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();


  print('1111');

  await task();

  // Future.delayed(const Duration(seconds: 3)).then((value) {
  //   print('3333');
  // });

  // Future.delayed(const Duration(seconds: 3), () {
  //   // 완료 콜백
  //   print('3333');
  // });
  print('2222');
}