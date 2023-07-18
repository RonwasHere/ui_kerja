import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('masukkan email'),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'email',
                ),
              ),
              SizedBox(height: 2),
              Text('masukkan password'),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'password',
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
