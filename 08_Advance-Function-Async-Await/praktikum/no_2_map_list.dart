void main(List<String> args) {
  List<List> list = [
    ['Nama', 'NoID', 'Kelas'],
    ['Maulana Aryo', '1_016FLB_36', 'B']
  ];

  Map<String, String> list_map = {};

  var count = list[0].length;

  for (var i = 0; i < count; i++) {
    for (var j = 0; j < count; j++) {
      list_map[list[0][j]] = list[1][j];
    }
  }
  print('DATA DIRI :');
  print(list_map);
}
