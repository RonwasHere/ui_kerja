import 'package:flutter/material.dart';

class FormSatu extends StatelessWidget {
  const FormSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form ke Satu'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('nama usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nama usaha',
                  ),
                ),
                Text('jabatan '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'jabatan',
                  ),
                ),
                Text('usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('nama usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nama usaha',
                  ),
                ),
                Text('jabatan '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'jabatan',
                  ),
                ),
                Text('telepon'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'telepon',
                  ),
                ),
                SizedBox(height: 2),
                Text(' website'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'website',
                  ),
                ),
                Text('nama NPWP '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nama npwp',
                  ),
                ),
                Text('NIK'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nik',
                  ),
                ),
                SizedBox(height: 2),
                Text('alamat kantor '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'alamat kantor',
                  ),
                ),
                Text('nama lengkap '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'nama lengkap',
                  ),
                ),
                Text(' mobile  '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'mobile',
                  ),
                ),
                Text(' email '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                ),
                Text('no NPWP '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'no npwp',
                  ),
                ),
                Text('alamat NPWP'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'alamat npwp',
                  ),
                ),
                Text(' account representative'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('kembali'),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text('selanjutnya'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
