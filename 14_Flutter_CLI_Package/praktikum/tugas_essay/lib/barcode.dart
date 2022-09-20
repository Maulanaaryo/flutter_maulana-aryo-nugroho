import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeScreen extends StatefulWidget {
  const BarcodeScreen({super.key});

  @override
  State<BarcodeScreen> createState() => _BarcodeScreenState();
}

class _BarcodeScreenState extends State<BarcodeScreen> {
  int currentIndex = 0;

  final List<Widget> screen = [_barcodeA(), _barcodeB(), _barcodeC()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode'),
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
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        iconSize: 40,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Alterra',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Flutter'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Nama'),
        ],
      ),
    );
  }
}

Widget _barcodeA() {
  return BarcodeWidget(
    data: 'Alterra Academy',
    barcode: Barcode.code128(),
    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
    width: 300,
    height: 300,
    margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
  );
}

Widget _barcodeB() {
  return BarcodeWidget(
    data: 'Flutter Asik',
    barcode: Barcode.code128(),
    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
    width: 300,
    height: 300,
    margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
  );
}

Widget _barcodeC() {
  return BarcodeWidget(
    data: 'Maulana Aryo Nugroho',
    barcode: Barcode.code128(),
    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
    width: 300,
    height: 300,
    margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
  );
}
