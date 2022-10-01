import 'package:flutter/material.dart';
import 'package:task_19/model/image.dart';
import 'package:task_19/ui/profile_screen.dart';

class GaleryScreen extends StatefulWidget {
  const GaleryScreen({super.key});

  @override
  State<GaleryScreen> createState() => _GaleryScreenState();
}

class _GaleryScreenState extends State<GaleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gallery'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1664206626597-2c158e274a96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=474&q=80',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 50),
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                final imageGallery = imageList[index];
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      )),
                      context: context,
                      builder: (context) => ProfileScreen(imageGallery),
                    );
                  },
                  onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content:
                            const Text('Apakah anda ingin menghapus?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: GridTile(
                    child:
                        Image.network(imageGallery.imageUrls, fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
