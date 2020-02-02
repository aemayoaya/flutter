import 'package:flutter/material.dart';
import 'package:project/province.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Seouth Korea ไปไหนดี';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shopping()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.place),
                title: Text('แหล่งช้อปปิ้ง'),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Travel()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.beach_access),
                title: Text('สถานที่ท่องเที่ยว'),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafe()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('คาเฟ่แนะนำ'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
