# (18) Form Picker

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah halaman form yang berjudul Create Post dengan struktur seperti gambar!
2. Buatlah saat tombol simpan ditekan, tampilkan data pada form ke halaman baru!

## 📒 Task
### [Task 01 🗒](#descriptive-)
Pada task ini membuat halaman form yang berjudul Create Post serta membuat fungsi-fungsi lain seperti Cover, Publish At, Color Theme, Captop dan Tombol Simpan.

### Judul
```dart
 Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        leading: const Icon(Icons.menu),
      ),
```

### Cover
```dart
ListView(
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
```

### Publish At
```dart
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
```

### Color Theme
```dart
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
```

### Caption
```dart
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
```

### Tombol Simpan
```dart
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
```

![image](/18_Form-Picker/screenshot/image_02.png)

## 📒 Task
### [Task 02 🗒](#descriptive-)
Pada Task 02 menampilkan hasil yang telah dibuat pada halaman awal

```dart
Scaffold(
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
```
![image](/18_Form-Picker/screenshot/image_03.png)
