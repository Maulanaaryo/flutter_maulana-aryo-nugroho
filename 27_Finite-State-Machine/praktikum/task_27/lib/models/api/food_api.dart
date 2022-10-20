import 'package:dio/dio.dart';
import 'package:task_27/models/food_model.dart';

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
