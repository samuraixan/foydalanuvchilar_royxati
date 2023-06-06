import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoydalanuvchiQismi extends StatelessWidget {
  final String id;
  final String ismi;
  final String telefon;
  final String rasmManzili;
  final Function foydalanuvchiniUchirish;

  FoydalanuvchiQismi(
      {required this.id,
        required this.ismi,
        required this.telefon,
        required this.rasmManzili,
        required this.foydalanuvchiniUchirish,
      });

  @override
  Widget build(BuildContext context) {
    // print(ismi);

    return // Card => Bu karobka faqat uzini standart dizayniga ega, misol uchun == soya,borderRadius
      Card(
        elevation: 0,
        //ListTile => Ro`yxat elementi o`zini standart dizaynlari bilan,
        // misol uchun == leading, title, subtitle, trailing
        child: Center(
          child: ListTile(
            //CircleAvatar => Yumaloq rasm o`rnatishda ishlatiladi
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  rasmManzili),
            ),
            title: Text(
              ismi,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
                telefon,
            ),
            trailing: IconButton(
              onPressed: () {
                foydalanuvchiniUchirish(id);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ),
      );
  }
}