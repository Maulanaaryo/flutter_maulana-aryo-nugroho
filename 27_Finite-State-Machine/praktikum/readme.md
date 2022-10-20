# (27) Finite State Machine

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah sebuah halaman baru dengan MVVM lengkap untuk menampilkan data dari : https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods
2. Dari MVVM di atas, lakukan unit test pada model api dengan menerapkan mocking!

## 📒 Task_01
### [Task_01 🗒](#descriptive-)
Membuat halaman dengan MVVM dan menampilkan data dari yang sudah diberikan
```dart
class FoodsAPI {
  Future<List<Foods>> getAllFoods() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Foods> foods = (response.data as List)
        .map(
          (foods) => Foods(
            id: foods['id'],
            name: foods['name'],
          ),
        )
        .toList();

    return foods;
  }
}
```
![image](/27_Finite-State-Machine/screenshot/image_02.png)

Melakukan unit test pada model api dengan menerapkan mocking
```dart

@GenerateMocks([FoodsAPI])
void main() {
  group('FoodsAPI', () {
    FoodsAPI foodsAPI = MockFoodsAPI();
    test('get all foods return data', () async {
      when(foodsAPI.getAllFoods()).thenAnswer((_) async => <Foods>[
        Foods(id: 1, name: 'name'),
      ],);
      var foods = await FoodsAPI().getAllFoods();
      expect(foods.isNotEmpty, true);
    });
  });
}
```
![image](/27_Finite-State-Machine/screenshot/image_03.png)