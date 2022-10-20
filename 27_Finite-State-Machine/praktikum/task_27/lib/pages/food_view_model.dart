import 'package:flutter/material.dart';
import 'package:task_27/models/api/food_api.dart';
import 'package:task_27/models/food_model.dart';

enum FoodsViewState {
  none,
  loading,
  error,
}

class FoodsViewModel with ChangeNotifier {
  FoodsViewState _state = FoodsViewState.none;
  FoodsViewState get state => _state;

  List<Foods> _foods = [];
  List<Foods> get foods => _foods;

  changeState(FoodsViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoods() async {
    changeState(FoodsViewState.loading);

    try {
      final f = await FoodsAPI().getAllFoods();
      _foods = f;
      notifyListeners();
      changeState(FoodsViewState.none);
    } catch (e) {
      changeState(FoodsViewState.error);
    }
  }
}
