import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task_27/models/api/food_api.dart';
import 'package:task_27/models/food_model.dart';
import 'food_api_test.mocks.dart';

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
