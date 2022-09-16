Future<String> p1() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'hello dari p1';
  });
}

void main() async {
  var data = await p1();
  print(data);
}