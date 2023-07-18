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
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 2),
                Text('nama usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('jabatan '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 2),
                Text('nama usaha'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('jabatan '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('telepon'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 2),
                Text(' website'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('nama NPWP '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('NIK'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 2),
                Text('alamat kantor '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('nama lengkap '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text(' mobile  '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text(' email '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('no NPWP '),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text('alamat NPWP'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                Text(' account representative'),
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
      ),
    );
  }
}
