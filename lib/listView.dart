import 'package:flutter/material.dart';

class EmpreedimentosListView extends StatefulWidget {
  @override
  _EmpreedimentosListViewState createState() => _EmpreedimentosListViewState();
}

class _EmpreedimentosListViewState extends State<EmpreedimentosListView> {
  @override
  Widget build(BuildContext context) {
    return _listDetalhes(
      
    );
  }
  
  _listDetalhes() {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        Container(
          height: 100,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 100,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 100,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
