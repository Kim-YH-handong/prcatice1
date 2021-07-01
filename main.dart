import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
            backgroundColor: Colors.white,
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget> [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                      accountName: Text('김영헌'),
                      accountEmail: Text('21800125'),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    )
                  ),
                ]
              ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color:Colors.black),
            textTheme: TextTheme(),
            backgroundColor: Colors.lightBlue,
            title: Text('세탁어플',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_laundry_service,
                color: Colors.white),
                text: '세탁'
                ),
                Tab(
                  icon: Icon(Icons.timer,
                  color: Colors.white),
                  text: '남은시간',
                ),
                Tab(
                  icon: Icon(Icons.info,
                  color: Colors.white),
                  text: '정보',

                )
              ]
            )
          ),
          body: TabBarView(
            children: <Widget> [
              Stack(
                children: <Widget>[

                  Container(
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: 100.0,
                      ),
                      Container(
                        child: Text('세탁기',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/4.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Container(
                        child: Text('건조기',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/3.png'),
                              fit: BoxFit.fill,
                            ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                  ],
                  ),
                ],
              ),

              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.green,
              )
            ]
          )
        )
    );
  }
}