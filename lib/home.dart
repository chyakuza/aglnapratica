import 'package:alex_flutter/clipper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _clipPath();
  }
}

body() {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.teal[50],
        height: 100,
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return _card();
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _clipPath(),
        ],
      )
    ],
  );
}
_clipPath(){
  return ClipPath(
    clipper: MyClipper(),
    child: _imagem(),
  );
}
_imagem() {
  return Container(
    height: 400,
    decoration: BoxDecoration(
      color: Colors.blue[200],
      image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.teal.withOpacity(0.8),
            BlendMode.hue,
          ),
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgt7pqfDlQp_ULA6ZO5yAVV5GYAmaoYRizN8_y7oeSQptOCyBR")),
    ),
  );
}

_card() {
  return Card(
    child: _linha(),
  );
}

_linha() {
  return Container(
    padding: EdgeInsets.all(10),
    child: ListTile(
      leading: Icon(
        Icons.person,
        size: 28,
      ),
      title: Text(
        "Carlos Henrique Miranda",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
      subtitle: Text("Este é meu nome!"),
    ),
  );
}
