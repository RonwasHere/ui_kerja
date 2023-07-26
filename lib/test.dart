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
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/satu');
                },
                child: Text('ke- form 1'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/gambar');
                },
                child: Text('ke- hlmn gambar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/table');
                },
                child: Text('ke- hlmn sorting table'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/maps');
                },
                child: Text('ke- hlmn maps'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mapswithcluster');
                },
                child: Text('ke- hlmn maps with cluster'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mapswithclusterdua');
                },
                child: Text('ke- hlmn maps with cluster Versi-2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
