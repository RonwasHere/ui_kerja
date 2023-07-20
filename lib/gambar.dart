import 'package:flutter/material.dart';

class GambarPage extends StatelessWidget {
  const GambarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ini hlmn gambar', style: TextStyle(fontSize: 40,),),
      ),
      body: Column(
       children: [
        Text('ini testing'),
       ],
      ),
    );
  }
}