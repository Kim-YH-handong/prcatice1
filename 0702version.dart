import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '세탁어플',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: MyPage(),
    );
  }
}

/*
* 나중에 칸 하나당 그림자 효과 넣고 싶으면
* card 사용 해야됨. container는 그림자를 발생시킬 수 있는
* 방법이 없다고 함.
* (1)FlatButton 누르면 Dialog 나오게 하는법
* WebSite: https://stackoverflow.com/questions/53844052/how-to-make-an-alertdialog-in-flutter
* (2)FlatButton 모양 바꾸는 법
* WebSite: https://stackoverflow.com/questions/50083390/create-a-button-with-rounded-border
* */

class MyPage extends StatelessWidget {
  final _valueList = ['벧엘관 1층', '벧엘관 2층', '벧엘관 3층', '벧엘관 4층', '벧엘관 5층'];
  var _selectedValue = '벧엘관 5층';

  showAlertDialog(BuildContext context){
    Widget cancelButton = FlatButton(onPressed: () {}, child: Text('Cancel'));
    Widget continueButton = FlatButton(onPressed: () {} , child: Text('Continue'));

    AlertDialog alert = AlertDialog(
    title: Text('확인'),
    content: Text('빨래를 시작하시겠습니까?'),
    actions: [
      cancelButton,
      continueButton,
    ]
    );

    showDialog(
    context:context,
    builder: (BuildContext context) {
      return alert;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          width: 100.0,
          height: 45.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        )
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget> [
              SizedBox(
                width: 40.0,
              ),
              Text('안녕하세요',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
              ),
              Text(' 하은',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('님',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
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
                  },
              ).toList(),
                onChanged: (value){

                },
              ),
            ]
          ),
          SizedBox(
            height: 100.0,
          ),
          Text('      세탁기',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                SizedBox(
                  width: 35.0,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    width: 140,
                    height: 230,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('1',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Container(
                            width: 70,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text('사용가능',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,
                              letterSpacing: 2.0,
                              fontSize: 20,
                            ),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text('세탁하기',
                            style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.blue,
                              width: 1,
                              style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                            ),
                        ]
                    ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  width: 140,
                  height: 230,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('2',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        Container(
                          width: 70,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/3.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('사용가능',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.blueAccent,
                            letterSpacing: 2.0,
                            fontSize: 20,
                          ),
                        ),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          child: Text('세탁하기',
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.blue,
                              width: 1,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(50)),
                        ),
                      ]
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  width: 140,
                  height: 230,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('3',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                        Container(
                          width: 70,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/3.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('사용가능',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.blueAccent,
                            letterSpacing: 2.0,
                            fontSize: 20,
                          ),
                        ),
                        FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          child: Text('세탁하기',
                              style: TextStyle(
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.blue,
                              width: 1,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(50)),
                        ),
                      ]
                  ),
                ),
              ]
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text('      건조기',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    width: 140,
                    height: 230,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('1',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Container(
                            width: 70,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text('사용가능',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,
                              letterSpacing: 2.0,
                              fontSize: 20,
                            ),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text('세탁하기',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    width: 140,
                    height: 230,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('2',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Container(
                            width: 70,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text('사용가능',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,
                              letterSpacing: 2.0,
                              fontSize: 20,
                            ),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text('세탁하기',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                          ),
                        ]
                    ),
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    width: 140,
                    height: 230,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('3',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          Container(
                            width: 70,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/3.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text('사용가능',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.blueAccent,
                              letterSpacing: 2.0,
                              fontSize: 20,
                            ),
                          ),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text('세탁하기',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.blue,
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(50)),
                          ),
                        ]
                    ),
                  ),
                ]
            ),
          ),
        ]
      )
    );
  }
}

