# Tugas Weekly (2)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📒 Weekly
### [Weekly 02 🗒](#descriptive-)

Pada tugas weekly_02 ini yaitu melanjutkan dari weekly_01, yaitu memunculkan sidebar. Terdiri dari 3 navigation button yaitu contact us, about us, dan login.
Pada halaman yang sama. buatlah abut us dan terapkan teknik layouting, serta memiliki beberapa komponen sebagai berikut :
1. Terdapat title yang bertuliskan 'about us'
2. Terdapat list dari program / jasa / barang yang kalian jual dalam bentuk card

### Berikut ini source code list barang yang dijual
```dart
class Item {
  String name;
  String price;

  Item({
    required this.name,
    required this.price,
  });
}

var itemList = [
  Item(name: 'Mouse', price: 'Rp.250.000'),
  Item(name: 'MousePad', price: 'Rp.200.000'),
  Item(name: 'Keyboard', price: 'Rp.500.000'),
  Item(name: 'CoolingPad', price: 'Rp.150.000'),
  Item(name: 'Headset', price: 'Rp.100.000'),
  Item(name: 'Microphone', price: 'Rp.150.000'),
];
```

### SourceCode berikut ini yaitu menjelaskan barang yang ditampilkan menggunakan Card, serta terdapat title bertuliskan 'about us'
```dart
Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
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
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    item.price,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
```