import 'package:flutter/material.dart';

//#TODO_9 Atur nama statefulWidget class untuk tab kedua
class TabPage2 extends StatefulWidget {
  @override
  _TabPage2State createState() => _TabPage2State();
}

class _TabPage2State extends State<TabPage2> {
  //#TODO_10 Bangun tampilan pada tab kedua berbentuk row dan column dengan tampilan 2 baris dan minimal 5 kolom
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      children: List.generate(10, (index) {
        return Card(
          margin: EdgeInsets.all(8),
          color: Colors.grey[800],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('image/gambar.jpeg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Member Person ${index + 1}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
