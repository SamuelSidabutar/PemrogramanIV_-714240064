import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Oswald', // Digunakan untuk mengubah font default (Modul B.4)
        useMaterial3: false,
      ),
      home: const FirstScreen(), // Mengarahkan ke FirstScreen untuk latihan Navigasi (Modul D)
    );
  }
}

// ==========================================
// KODE LATIHAN BAGIAN A.1 (Image.network)
// ==========================================
class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 5'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Image.network(
          'https://www.radarbandung.id/wp-content/uploads/2022/09/ranca-upas.jpg',
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}

// ==========================================
// KODE LATIHAN BAGIAN A.2 (Image.asset)
// ==========================================
class MyImageAsset extends StatelessWidget {
  const MyImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 5'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Image.asset('images/ulbi.jpg', width: 400, height: 400),
      ),
    );
  }
}

// ==========================================
// KODE LATIHAN BAGIAN B.3 (Custom Font)
// ==========================================
class MyCustomFont extends StatelessWidget {
  const MyCustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 5'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: const Center(
        child: Text(
          'Custom Font',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

// ==========================================
// KODE LATIHAN BAGIAN C.3 (ListView.separated)
// ==========================================
class ScrollingScreenListSeparated extends StatelessWidget {
  const ScrollingScreenListSeparated({super.key});
  
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}

// ==========================================
// KODE LATIHAN BAGIAN D (Navigation)
// ==========================================
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const SecondScreen();
              }),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}