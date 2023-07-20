import 'package:flutter/material.dart';
import 'package:ui_kerja/form_dua.dart';
import 'package:ui_kerja/form_satu.dart';
import 'package:ui_kerja/gambar.dart';
import 'package:ui_kerja/table_page.dart';
import 'package:ui_kerja/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TestPage(),
          '/satu': (context) => FormSatu(),
          '/dua': (context) => FormDua(),
          '/table': (context) => TablePage(),
          '/gambar': (context) => GambarPage(),
          
        },
      ),
    );
  }
}
