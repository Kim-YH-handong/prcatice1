import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '깨끗한동',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  final _valueList = ['벧엘관 1층', '벧엘관 2층', '벧엘관 3층', '벧엘관 4층', '벧엘관 5층'];
  var _selectedValue = '벧엘관 5층';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
        Row(children: <Widget> [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('안녕하세요 하은님',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        )
      ),
      SizedBox(
        width: 100.0,
      ),
      DropdownButton(
        value: _selectedValue,
        items: _valueList.map(
          (value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }
        ).toList(),
        )
      ],
      ),
      SizedBox(
        height: 50.0,
      ),
      
      Text('     세탁기',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      )
      ),

      Stack(
        children: <Widget>[
         Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),
           ),
           color: Colors.blue[100],
           elevation: 2.0,
           child: Container(
             width: 150,
             height: 200,
           )
         ),
         
        Text('1',
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.grey,
        )
        ),
        ]
      ),
      SizedBox(
        height: 50.0,
      ),
      
      Text('     건조기',
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      )
      ),
       Stack(
        children: <Widget>[
         Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),
           ),
           color: Colors.blue[100],
           elevation: 2.0,
           child: Container(
             width: 150,
             height: 200,
           )
         ),
         
        Text('1',
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.grey,
        )
        ),
        ]
      ),
      SizedBox(
        height: 50.0,
      ),
      ],
      )
    );
  }
}
