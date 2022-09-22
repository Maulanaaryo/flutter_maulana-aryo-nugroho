import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  final List<IconData> dataIcons = [
    Icons.pets,
    Icons.pregnant_woman,
    Icons.spatial_audio_off,
    Icons.rounded_corner,
    Icons.rowing,
    Icons.timeline,
    Icons.update,
    Icons.access_time_filled,
    Icons.back_hand,
    Icons.euro,
    Icons.g_translate,
    Icons.remove_shopping_cart,
    Icons.restore_page,
    Icons.speaker_notes_off,
    Icons.delete_forever,
    Icons.accessibility,
    Icons.check_circle_outline,
    Icons.delete_outline,
    Icons.done_outline,
    Icons.maximize,
    Icons.minimize,
    Icons.offline_bolt_rounded,
    Icons.swap_horizontal_circle,
    Icons.accessible_forward,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'GridView',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 23,
            crossAxisSpacing: 20,
          ),
          itemCount: dataIcons.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightBlueAccent),
              child: Icon(dataIcons[index]),
            ),
          ),
        ));
  }
}
