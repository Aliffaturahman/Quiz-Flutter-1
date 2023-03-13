//--------------------------------------------------------------------------// 1

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }

}
*/

//--------------------------------------------------------------------------// 2

/*import 'package:flutter/material.dart';

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
  String _nama = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Masukan Nama :'),
            TextField(
              onChanged: (text) {
                _nama = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {}); //refresh
              },
              child: const Text('Klik Ini'),
            ),
            Text('Halo $_nama'), //hasil disini
          ],
        )), //column center
      ), //Scaffold
    ); //Material APP
  }
}
*/

//--------------------------------------------------------------------------// 3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               // Digunakan untuk menambahkan jarak antara container dengan widget yang ada dalamnya
//               //padding: EdgeInsets.all(20),// edge instet all untuk mengatur ukuran padding sama di ke-empat nya
//               padding: EdgeInsets.only(
//                   top: 50,
//                   bottom: 50,
//                   left: 50,
//                   right:
//                       50), // edge insets only untuk mengatur ukuran padding sesuai keinginan kita bisa diatur
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               // 'Halo $_nama',
//               /*// formatting text untuk atur warna, ukuran melalui widget style
//               style: const TextStyle(
//                   // widget untuk ubah style pada warna font output
//                   fontSize: 30, // ukuran font
//                   fontWeight: FontWeight.bold, // ketebalan font
//                   color: Colors.lightBlueAccent), // warna dari font output
//             */
//               // contoh text style lainnya penanganan overflow text
//               'Halo a slkdfjha sdfjklasjdfkl ajsdklfjaslk;dfjkl;asdjfklasjdkl;fjaskldfjalksd jfklasdjfklasdjlf kjasdlk;fj;aslj fal;skdjf $_nama',
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(fontSize: 20),
//             ),
//             //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

//--------------------------------------------------------------------------// 4

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               'Halo $_nama',
//               // formatting text untuk atur warna, ukuran melalui widget style
//               style: const TextStyle(
//                   // widget untuk ubah style pada warna font output
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

//--------------------------------------------------------------------------// 5

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

// latihan 4
enum genderType { male, female }

class MyAppState extends State<MyApp> {
  final textController = TextEditingController();
  String _nama = "";
  genderType? _gender;
  bool _isJob = false;
  double _tall = 0.0;
  String _foodFav = "Pizza";
  bool _food1 = false;
  bool _food2 = false;
  bool _food3 = false;
  String _provinsi = "";

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> foodFav = [];
    return MaterialApp(
      title: 'Morning App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
          backgroundColor: Color.fromARGB(221, 0, 0, 0),
        ),
        backgroundColor: Color.fromARGB(221, 157, 157, 157),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 500,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Masukan Nama',
                          border: OutlineInputBorder(),
                        ),
                        controller: textController,
                      ),
                      RadioListTile<genderType>(
                        title: const Text('Male'),
                        value: genderType.male,
                        groupValue: _gender,
                        activeColor: Color.fromARGB(255, 0, 110, 255),
                        onChanged: (genderType? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      RadioListTile<genderType>(
                        title: const Text('Female'),
                        value: genderType.female,
                        groupValue: _gender,
                        activeColor: Color.fromARGB(221, 123, 80, 221),
                        onChanged: (genderType? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      SwitchListTile(
                        title: const Text('Bekerja'),
                        value: _isJob, //boolean
                        activeColor: Color.fromARGB(221, 0, 0, 0),
                        onChanged: (bool value) {
                          setState(() {
                            _isJob = value;
                          });
                        },
                        secondary: const Icon(Icons.work),
                      ),
                      Slider(
                        value: _tall, //tipe double
                        max: 100,
                        divisions: 100,
                        thumbColor: Colors.black,
                        activeColor: Color.fromARGB(221, 0, 0, 0),
                        inactiveColor: Color.fromARGB(221, 157, 157, 157),
                        label: _tall.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _tall = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Bakso'),
                        value: _food1, //boolean
                        onChanged: (bool? value) {
                          setState(() {
                            _food1 = !_food1;
                          });
                        },
                        secondary: const Icon(Icons.check_circle),
                      ),
                      CheckboxListTile(
                        title: const Text('Batagor'),
                        value: _food2, //boolean
                        onChanged: (bool? value) {
                          setState(() {
                            _food2 = !_food2;
                          });
                        },
                        secondary: const Icon(Icons.check_circle),
                      ),
                      CheckboxListTile(
                        title: const Text('Siomay'),
                        value: _food3, //boolean
                        onChanged: (bool? value) {
                          setState(() {
                            _food3 = !_food3;
                          });
                        },
                        secondary: const Icon(Icons.check_circle),
                      ),
                      // DropdownButton(
                      //     value: _foodFav,
                      //     items: <String>['Pizza', 'Nasi Goreng', 'Sushi']
                      //         .map<DropdownMenuItem<String>>((String value) {
                      //       return DropdownMenuItem<String>(
                      //         value: value,
                      //         child: Text(value),
                      //       );
                      //     }).toList(),
                      //     onChanged: (String? newValue) {
                      //       setState(() {
                      //         if (newValue != null) {
                      //           _foodFav = newValue;
                      //         }
                      //       });
                      //     }),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _nama = textController.text;
                  });
                },
                child: const Text('Klik ini'),
              ),
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                height: 350,
              ),
              IconButton(
                icon: const Icon(Icons.add_a_photo),
                tooltip: 'Profil User',
                onPressed: () {
                  // kalau ditap
                },
              ),
              Text(
                _nama != ""
                    ? 'Halo $_nama' '\nKamu seorang $_gender' '\n' +
                        (_isJob != false ? "Sudah bekerja" : "Belum bekerja") +
                        '\nTinggi badan $_tall\n' +
                        (_food1 != false
                            ? "Bakso adalah makanan favoritnya\n"
                            : "") +
                        (_food2 != false
                            ? "Batagor adalah makanan favoritnya\n"
                            : "") +
                        (_food3 != false
                            ? "Siomay adalah makanan favoritnya\n"
                            : "")
                    // (_food2 != false
                    //     ? "Bakso adalah makanan favoritnya"
                    //     : ""),
                    // (_food3 != false
                    //     ? "Bakso adalah makanan favoritnya"
                    //     : ""),
                    // adalah makanan favoritnya'
                    : "",
              )
            ],
          ),
        ),
      ),
    );
  }
}




//--------------------------------------------------------------------------// 5


//latihan 3
/*
// intro button
class MyAppState extends State<MyApp> {
  final textEditController = TextEditingController();
  String _nama = "";
  String pilihanSalam = "pagi";
  String pilihanSalamOut = ""; // untuk ditamplikan
  bool isChecked = true;

  @override
  void dispose() {
    // controller dibersihkan saat widget dibuang
    textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> salam = [];

    return MaterialApp(
      title: 'Helllo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.account_box_outlined),
                tooltip: 'Profil User',
                onPressed: () {},
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 500,
                child: CheckboxListTile(
                  title: const Text('Pilihan satu'),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
              ),
              DropdownButton(
                  value: pilihanSalam,
                  items: <String>['pagi', 'siang', 'malam']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      if (newValue != null) {
                        pilihanSalam = newValue;
                      }
                    });
                  }),
              Text('Masukan nama: '),
              TextField(
                controller: textEditController,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nama = textEditController.text;
                      pilihanSalamOut = pilihanSalam;
                    });
                  },
                  child: const Text('klik ini'),
                ),
              ),
              Text(
                _nama != "" ? 'Halo $_nama selamat $pilihanSalamOut' : "",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          ),
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.red,
        //   child: const Icon(Icons.dangerous),
        // ),
      ),
    );
  }
}*/

/*
// intro
class MyAppState extends State<MyApp> {
  final textEditController = TextEditingController();
  String _nama = "";

  @override
  void dispose() {
    // controller dibersihkan saat widget dibuang
    textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helllo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Masukan Nama: '),
              TextField(
                controller: textEditController, // controller
              ),
              Padding(
                padding: const EdgeInsets.all(20), // 20 pixel ke semua arah
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nama = textEditController.text;
                    });
                  },
                  child: const Text('Klik ini'),
                ),
              ),
              Text(
                'Halo $_nama',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

//--------------------------------------------------------------------------// 6

/*
// Latihan 1 <Hitung luas dan keliling segitiga> & 2 addin style
class MyAppState extends State<MyApp> {
  final TextEditingController _panjang = TextEditingController();
  final TextEditingController _lebar = TextEditingController();
  int _hasilLuas = 0;
  int _hasilKeliling = 0;

  @override
  void dispose() {
    // controller dibersihkan saat widget dibuang
    _panjang.dispose();
    _lebar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helllo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('App Hitung Luas dan keliling persegi panjang'),
              TextField(
                decoration: InputDecoration(labelText: 'Panjang'),
                controller: _panjang, // controller
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Lebar'),
                controller: _lebar,
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _hasilLuas =
                          int.parse(_panjang.text) * int.parse(_lebar.text);
                      _hasilKeliling = 2 *
                          (int.parse(_panjang.text) + int.parse(_lebar.text));
                    });
                  },
                  child: const Text('Klik ini'),
                ),
              ),
              Text(
                  '\nHasil luas: $_hasilLuas\n\nHasil keliling: $_hasilKeliling'),
            ],
          ),
        ),
      ),
    );
  }
}*/
