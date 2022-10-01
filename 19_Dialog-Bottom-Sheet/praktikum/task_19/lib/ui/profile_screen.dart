import 'package:flutter/material.dart';
import 'package:task_19/model/image.dart';

class ProfileScreen extends StatelessWidget {
  final ImageModel _imageModel;

  const ProfileScreen(this._imageModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 390,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(_imageModel.imageUrls),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
        ],
      ),
    );
  }
}
