import 'package:flutter/material.dart';

class FormDua extends StatefulWidget {
  const FormDua({Key? key}) : super(key: key);

  @override
  State<FormDua> createState() => _FormDuaState();
}

class _FormDuaState extends State<FormDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form ke 2'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ID Customer'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('Nama Outlet'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('TYpe outlet '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('type alamat '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('alamat'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('nama lengkap'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('mobile'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('email'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('jabatan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('provinsi'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('kota'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('kecamatan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('kelurahan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('kode pos'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('titik gps'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
