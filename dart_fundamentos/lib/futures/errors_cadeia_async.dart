void main() {
  
  func1()
  .then((value) => func2())
  .then((value) => func3(), onError: (error) {
    print('Tratando erro da func2');
    return func3();
  })
  .then(print);

}

Future<String> func1() {
  print('func1');
  return Future.value('Fazendo algo func1');
}

Future<String> func2() {
  print('func2');
  //throw Exception();
  return Future.error('Fazendo algo func2');
}

Future<String> func3() {
  print('func3');
  return Future.value('Fazendo algo func3');
}