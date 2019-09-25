import 'package:alex_flutter/MenuExpansivo/grid_lista.dart';
import 'package:alex_flutter/home.dart';
import 'package:alex_flutter/listAnimate.dart';
import 'package:alex_flutter/theme_green.dart';
import 'package:alex_flutter/theme_grey.dart';

import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myThemeGrey,//myTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.apps),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.format_list_bulleted),
              onPressed: () {},
            )
          ],
          title: Text("Aprova CH"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Aprovações",
              ),
              Tab(
                text: "Empreendimentos",
              ),
              Tab(
                text: "Avisos",
              ),
            ],
          ),
          //centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            GridLisHome(),
            HomePage(),            
            // EmpreedimentosListView(),
            ListaAnimada()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          backgroundColor: Colors.teal,
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 26,
          ),
          //label: Text("Aprovar"),
          //icon: Icon(Icons.accessibility),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blueGrey,
          child: Container(
            height: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
