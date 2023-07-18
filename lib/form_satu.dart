import 'package:flutter/material.dart';
import 'package:ui_kerja/form_dua.dart';

class FormSatu extends StatefulWidget {
  const FormSatu({Key? key}) : super(key: key);

  @override
  State<FormSatu> createState() => _FormSatuState();
}

class _FormSatuState extends State<FormSatu> {
  void no() {
    // Navigator.of(context).pop();
    //ini yg benar
    Navigator.of(context, rootNavigator: true).pop('dialog');
  }

  Future<void> _showDialog() async {
    showDialog(
        context: context,
        // barrierDismissible: false,
        builder: (contex) {
          return AlertDialog(
            backgroundColor: Colors.amber,
            title: Text('Cek Data !! '),
            content:
                Text('Pastikan kembali data yang anda masukan sudah sesuai?'),
            actions: [
              MaterialButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // Navigator.pop(context, 'OK');
                  // Navigator.of(context).pop();
                  no();
                },
                child: Text('NO'),
              ),
              MaterialButton(
                onPressed: () async {
                  Navigator.pushNamed(context, '/dua');
                  
                  // Navigator.of(contex, rootNavigator: true).pop('dialog');
                  // await Navigator.of(context).pop('dialog')
                  //     .push(MaterialPageRoute(builder: (context) => FormDua()));
                  
                },
                child: Text('Yes'),
              ),
            ],
          );
        });
  }

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
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text('kembali'),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        _showDialog();
                      },
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
