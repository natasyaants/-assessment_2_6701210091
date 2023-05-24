import 'package:flutter/material.dart';
// import 'package:dppb_layout/dppb_layout.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'WIREFRAME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _bks = '';

  void _pilihBekas(value) {
    setState(() {
      _bks = value;
    });
  }

  bool? _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama Barang',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              maxLines: 4,
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Deskripsi',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Harga',
              ),
            ),
          ),
          const Text('kondisi Barang'),
          Container(
            child: Column(
              children: [
                RadioListTile(
                  value: "Bekas",
                  title: new Text("Bekas"),
                  groupValue: _bks,
                  onChanged: (value) {
                    _pilihBekas(value);
                  },
                ),
                RadioListTile(
                  value: 'Baru',
                  title: new Text('Baru'),
                  groupValue: _bks,
                  onChanged: (value) {
                    _pilihBekas(value);
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                CheckboxListTile(
                    title: Text("Pengiriman dalam kota saja"),
                    value: _ischecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _ischecked = newValue;
                      });
                    }),
                CheckboxListTile(
                    title: Text("Menerima retur"),
                    value: _ischecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _ischecked = newValue;
                      });
                    }),
              ],
            ),
          ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  child: const Text('Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20)),
                          
                ),
          )
        ],
      ),
    );
  }
}
