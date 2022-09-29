import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Color _currentColor = Colors.blue;

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}

TextEditingController inputDate = TextEditingController();
TextEditingController inputColor = TextEditingController();
TextEditingController inputCaption = TextEditingController();

DateTime selectedDate = DateTime.now();

class _HomeScreenState extends State<HomeScreen> {
  File? filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        leading: const Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Cover',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () async {
                final image = await FilePicker.platform.pickFiles();
                if (image == null) return;
                setState(() {
                  filePath = File(image.files.first.path.toString());
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
              ),
              child: const Text('Pilih File'),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Publish At',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              readOnly: true,
              controller: inputDate,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: 'dd/mm/yyyy',
              ),
              onTap: () async {
                final selectDate = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(selectedDate.year + 5));

                if (selectDate != null) {
                  setState(() {
                    selectedDate = selectDate;

                    inputDate.text =
                        DateFormat('dd-MM-yyyy').format(selectDate);
                  });
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Color Theme',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
                readOnly: true,
                controller: inputColor,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Pick a color',
                ),
                onTap: () => {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: ColorPicker(
                                pickerColor: _currentColor,
                                onColorChanged: (color) {
                                  setState(() {
                                    _currentColor = color;
                                    inputColor.text = _currentColor.toString();
                                  });
                                },
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Save'))
                              ],
                            );
                          }),
                    }),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Caption',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: inputCaption,
              maxLines: 7,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (filePath != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(filePath: filePath!),
                      ));
                }
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.filePath});

  final File filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        leading: const Icon(Icons.menu),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Image.file(filePath),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Published: '),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                const SizedBox(
                  width: 120,
                ),
                const Text('Color : '),
                Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: _currentColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            inputCaption.text,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
