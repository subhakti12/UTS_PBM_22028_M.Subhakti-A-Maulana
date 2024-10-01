import 'package:flutter/material.dart';

//#TODO_11 Atur nama statefulWidget class untuk tab ketiga
class TabPage3 extends StatefulWidget {
  @override
  _TabPage3State createState() => _TabPage3State();
}

class _TabPage3State extends State<TabPage3> {
  //#TODO_12 Bangun tampilan pada tab ketiga
  //berbetuk halaman profil berisi foto pribadi yang dibungkus dengan frame lingkaran, nama lengkap, dan email UNSIKA
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('image/gambar.jpeg'),
          ),
          SizedBox(height: 20),
          Text(
            'M. SUBHAKTI A. MAULANA',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '2210631170028@student.unsika.ac.id',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
