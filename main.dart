import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final textController = TextEditingController();
  List<String> data = []; //data untuk listview

  @override
  int idx = 0; //index yang aktif

  //isi body akan sesuai index
  static const List<Center> halaman = [
    Center(child: Text("satu")),
    Center(child: Text("dua"))
  ];

  //event saat button di-tap
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  void dispose() {
    textController.dispose();
    super.dispose();
    void initState() {
      super.initState();
      for (int i = 0; i < 20; i++) {
        data.add("Data ke $i ");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 390,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                    IconButton(
                      icon: const Icon(Icons.check_circle_outline),
                      tooltip: 'Profil User',
                      onPressed: () {},
                      iconSize: 80,
                      // style: const IconStyle(icon),
                    ),
                    Text(
                      'No New Notifications',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\nYou are caught up! Checkback for Notifications, campus alert and more',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: idx,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.red,
            onTap: onItemTap, //event saat button di tap
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), label: " School"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Activity'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Person'),
            ]),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok'),
            content: const Text(
                'Alif Faturahman Firdaus (aliffaturahman@upi.edu)\nRavindra Maulana Sahman (ravindramaulanasahman@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
