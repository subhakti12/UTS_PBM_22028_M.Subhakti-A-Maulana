import 'package:flutter/material.dart';

//#TODO_7 Atur nama statefulWidget class untuk tab pertama
class TabPage1 extends StatefulWidget {
  @override
  _TabPage1State createState() => _TabPage1State();
}

class _TabPage1State extends State<TabPage1> {
  //#TODO_8 Bangun tampilan pada tab pertama berbentuk listtile minimal 15 list
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('image/gambar.jpeg'),
                backgroundColor: Colors.grey[400],
              ),
              title: Text(
                'Person ${index + 1}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Harus Kuat Selagi Ada Doa Mamah dan Ayah',
                style: TextStyle(color: Colors.grey[300]),
              ),
              trailing: Text(
                'Bersyukur',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 12,
                ),
              ),
            ),
            Divider(
              height: 0,
              indent: 70,
              endIndent: 16,
              thickness: 1,
              color: Colors.grey[700],
            ),
          ],
        );
      },
    );
  }
}
