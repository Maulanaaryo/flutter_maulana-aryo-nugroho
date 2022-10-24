# (28) UI Testings

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Lakukan test seluruh halaman yang pernah dibuat pada bagian judul, body, dan seluruh elemen yang ada pada halaman tersebut!
2. Lakukan test pada halaman yang belum dibuat!

## 📒 Task
### [Task 🗒](#descriptive-)
Melakukan Test Pada Halaman Contact Page dengan kriteria yang terdapat pada soal
```dart
Widget testContactPage() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactPage(),
  );
}

void main() {
  group('Test Contact Page', () {
    testWidgets('Test AppBar Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.text('Contacts'), findsOneWidget);
    });

    testWidgets('Test Body Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byType(ListView), findsOneWidget);
    });
    testWidgets('Negative Test Image Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byType(Image), findsNothing);
    });
    testWidgets('Test Icon Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byIcon(Icons.add_circle), findsOneWidget);
    });
    testWidgets('Negative Test Icon Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byIcon(Icons.delete), findsNothing);
    });
  });
}
```
![image](/28_UI-Testings/screenshot/image_02.png)