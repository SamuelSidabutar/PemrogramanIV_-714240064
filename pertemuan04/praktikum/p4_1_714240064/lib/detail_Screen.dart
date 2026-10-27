// ignore_for_file: file_names
import 'package:flutter/material.dart' as material 
show BuildContext, Column, Container, CrossAxisAlignment, EdgeInsets, FontWeight, Icon, Icons, Image, MainAxisAlignment, Row, SafeArea, Scaffold, SingleChildScrollView, SizedBox, StatelessWidget, Text, TextAlign, TextStyle, Widget;

class DetailScreen extends material.StatelessWidget {
  const DetailScreen({super.key});

  @override
  material.Widget build(material.BuildContext context) {
    return material.Scaffold(
      body: material.SafeArea(
        child: material.SingleChildScrollView(
          child: material.Column(
            crossAxisAlignment: material.CrossAxisAlignment.stretch,
            children: <material.Widget>[
              // 1. BAGIAN GAMBAR
              material.Image.asset('images/ranca_upas.jpg'),

              // 2. BAGIAN JUDUL (TITLE)
              material.Container(
                margin: const material.EdgeInsets.only(top: 16.0),
                child: const material.Text(
                  'Ranca Upas',
                  textAlign: material.TextAlign.center,
                  style: material.TextStyle(
                    fontSize: 30.0,
                    fontWeight: material.FontWeight.bold,
                  ),
                ),
              ),

              // 3. BAGIAN INFORMASI (ROW & COLUMN UNTUK IKON & TEKS)
              material.Container(
                margin: const material.EdgeInsets.symmetric(vertical: 16.0),
                child: material.Row(
                  mainAxisAlignment: material.MainAxisAlignment.spaceEvenly,
                  children: const <material.Widget>[
                    // Kolom 1: Kalender (Open Everyday)
                    material.Column(
                      children: [
                        material.Icon(material.Icons.calendar_today),
                        material.SizedBox(height: 8.0),
                        material.Text('Open Everyday'),
                      ],
                    ),
                    // Kolom 2: Jam Operasional (Access Time) - Tantangan Praktikum
                    material.Column(
                      children: [
                        material.Icon(material.Icons.access_time),
                        material.SizedBox(height: 8.0),
                        material.Text('09:00 - 20:00'),
                      ],
                    ),
                    // Kolom 3: Harga Tiket (Monetization On) - Tantangan Praktikum
                    material.Column(
                      children: [
                        material.Icon(material.Icons.monetization_on),
                        material.SizedBox(height: 8.0),
                        material.Text('Rp 20.000'),
                      ],
                    ),
                  ],
                ),
              ),

              // 4. BAGIAN DESKRIPSI TEMPAT WISATA
              material.Container(
                padding: const material.EdgeInsets.all(16.0),
                child: const material.Text(
                  'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. '
                  'Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, '
                  'kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, '
                  'seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
                  textAlign: material.TextAlign.justify,
                  style: material.TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}