import 'package:flutter/material.dart';
import 'package:ui_kerja/page/sortable_page.dart';

class TablePage extends StatefulWidget {
  const TablePage({ Key? key }) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1, 
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sortable'),
                // Tab(icon: Icon(Icons.select_all), text: 'Selectable'),
                // Tab(icon: Icon(Icons.edit), text: 'Editable'),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              SortablePage(),
            ],
          ),
        )
        ),
    );
  }
}