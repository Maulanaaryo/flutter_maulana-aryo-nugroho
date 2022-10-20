import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_27/models/food_model.dart';
import 'package:task_27/pages/food_view_model.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({super.key});

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async { 
      var modelView = Provider.of<FoodsViewModel>(context, listen: false);
      await modelView.getAllFoods();
    });
    super.initState();
  }

  Widget body(FoodsViewModel modelView) {
    final isLoading = modelView.state == FoodsViewState.loading;
    final isError = modelView.state == FoodsViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Gagal mengambil data.'),
      );
    }

    return listView(modelView);
  }

  Widget listView(FoodsViewModel viewModel) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final food = viewModel.foods[index];
          return ListTile(
            title: Text(food.name),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: viewModel.foods.length);
  }

  @override
  Widget build(BuildContext context) {
    FoodsViewModel modelView = Provider.of<FoodsViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
      ),
      body: body(modelView),
    );
  }
}