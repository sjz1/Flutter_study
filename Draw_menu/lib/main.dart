import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JJong connect'),
          centerTitle: true,
          elevation: 0.0,

          //drawer 메뉴를 추가하면 자동으로 햄버거 메뉴 생김

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping cart is clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search is clicked');
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('attach/people.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("attach/Bob.jpg"),
                  ),
                ],
                accountName: Text("JJong"),
                accountEmail: Text("tmdwhd619@naver.com"),
                onDetailsPressed: () {
                  print("arrow is clicked");
                },
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.grey[850]),
                title: Text('User Title'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.grey[850]),
                title: Text('Setting'),
                onTap: () {
                  print('Setting is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(Icons.message, color: Colors.grey[850]),
                title: Text('Messenger'),
                onTap: () {
                  print('messenger is clicked');
                },
                //trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body:
            //MySnackBar(),
            Center(
          child: FlatButton(
            onPressed: () {
              flutterToast();
            },
            child: Text('Toast'),
            color: Colors.blue,
          ),
        )
        // body: Builder(
        //   builder: (BuildContext ctx) {
        //     return Center(
        //       child: FlatButton(
        //         child: Text(
        //           "Start App",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //         color: Colors.red,
        //         onPressed: () {
        //           Scaffold.of(ctx).showSnackBar(SnackBar(
        //             content: Text("Hello"),
        //           ));
        //         },
        //       ),
        //     );
        //   },
        // )
        );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('detail'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Please insert of detail',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter',
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
