import 'package:flutter/material.dart';
import 'package:foydalanuvchilar_ruyxati/widgets/foydalanuvchi_qismi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "StyleScript",
      ),
      home: FoydalanuvchilarRuyxati(),
    );
  }
}

class FoydalanuvchilarRuyxati extends StatefulWidget {
  @override
  State<FoydalanuvchilarRuyxati> createState() =>
      _FoydalanuvchilarRuyxatiState();
}

class _FoydalanuvchilarRuyxatiState extends State<FoydalanuvchilarRuyxati> {
  List<Map<String, String>> foydalanuvchilar = [
    {
      "id": "user1",
      "ismi": "Ann Neal",
      "telefon": "401-479-2334",
      "rasmManzili":
          "https://images.unsplash.com/photo-1518526157563-b1ee37a05129?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    },
    {
      "id": "user2",
      "ismi": "Davron Kabulov",
      "telefon": "401-555-7000",
      "rasmManzili":
          "https://static.sports.uz/crop/c4d96990fae89f13bcfc66071c5b7cf1.jpg",
    },
    {
      "id": "user3",
      "ismi": "Eva Bergman",
      "telefon": "417-799-4004",
      "rasmManzili":
          "https://images.unsplash.com/photo-1674665895191-6ee1ac923ba2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=436&q=80",
    },
    {
      "id": "user4",
      "ismi": "Lisa Oneil",
      "telefon": "420-555-5555",
      "rasmManzili":
          "https://images.unsplash.com/photo-1674675303264-de80b1498a6a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60",
    },
  ];

  void foydalanuvchiniUchirish(String foydalanuvchiId) {
    setState(() {
      foydalanuvchilar.removeWhere((foydalanuvchi) {
        return foydalanuvchi["id"] == foydalanuvchiId;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Foydalanuvchilar ro`yxati"),
      // ),
      //  SafeArea Havfsiz joy
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Text(
                  "Foydalanuvchilar ro`yxati",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // Expanded => Column yoki Row ichida widgetlardan qolgan joyni boricha egallaydi
            Expanded(
              // ListView => Ro`yxat ko`rinishi
              child: ListView(
                itemExtent: 90,
                children: foydalanuvchilar.map((foydalanuvchi) {
                  return FoydalanuvchiQismi(
                    id: foydalanuvchi["id"]!,
                    ismi: foydalanuvchi["ismi"]!,
                    telefon: foydalanuvchi["telefon"]!,
                    rasmManzili: foydalanuvchi["rasmManzili"]!,
                    foydalanuvchiniUchirish: foydalanuvchiniUchirish,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
    );
  }
}
