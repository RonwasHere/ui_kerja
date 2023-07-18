import 'package:flutter/material.dart';

class FormDua extends StatefulWidget {
  const FormDua({Key? key}) : super(key: key);

  @override
  State<FormDua> createState() => _FormDuaState();
}

class _FormDuaState extends State<FormDua> {
  void no() {
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
                  no();
                },
                child: Text('NO'),
              ),
              MaterialButton(
                onPressed: () async {
                  Navigator.pop(contex);
                  await Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => FormDua()));
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
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('mobile'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('email'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('jabatan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('provinsi'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('kota'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('kecamatan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('kelurahan'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('kode pos'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
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
                Text('foto'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'usaha',
                  ),
                ),
                SizedBox(height: 2),
                Text('aplikasi'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('status'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Text('remarkss'),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '',
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/satu');
                      },
                      child: Text('cek kembali'),
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
