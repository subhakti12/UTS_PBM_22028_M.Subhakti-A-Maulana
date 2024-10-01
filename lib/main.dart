import 'package:flutter/material.dart';

//TODO_13 Import 3 halaman tabbar yang telah dibuat
import 'tabpage1.dart';
import 'tabpage2.dart';
import 'tabpage3.dart';

//TODO_14 Buat function main dan jalankan aplikasi
void main() {
  runApp(MyApp());
}

//#TODO_1 Atur nama statelessWidget Class
class MyApp extends StatelessWidget {
  //TODO_3 Bangun MaterialApp dan Arahkan property home ke statefulWidget Class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsBrow',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.grey[850],
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//TODO_2 Atur nama statefulWidget Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //TODO_4 Bangun Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsBrow'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        //TODO_5 Buat tampilan AppBar
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            color: Colors.grey[850],
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.transparent,
              //TODO_6 Buat tampilan TabBar dengan 3 tab
              tabs: [
                Tab(icon: Icon(Icons.message), text: "Pesan"),
                Tab(icon: Icon(Icons.video_library), text: "Status"),
                Tab(icon: Icon(Icons.person), text: "Profil"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.black,
            child: TabPage1(),
          ),
          Container(
            color: Colors.black,
            child: TabPage2(),
          ),
          Container(
            color: Colors.black,
            child: TabPage3(),
          ),
        ],
      ),
    );
  }
}
