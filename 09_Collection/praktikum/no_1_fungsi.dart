void main(List<String> args) async {
  var data = await listData([2, 3, 4], 2);
  print(data);
}

Future<List<int>> listData(List<int> list, int pengalian) async {
  List<int> newData = [];

  for (var i = 0; i < list.length; i++) {
    await Future.delayed(
      Duration(seconds: 1),
      () {
        newData.add(list[i] * pengalian);
      },
    );
  }
  return newData;
}