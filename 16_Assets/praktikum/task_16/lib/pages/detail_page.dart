import 'package:flutter/material.dart';
import 'package:task_16/model/image_asset.dart';

class DetailPage extends StatelessWidget {
  final Desain _desain;

  const DetailPage(this._desain, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            _desain.imageAsset,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: const EdgeInsets.only(top: 30, left: 20),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: 50,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
