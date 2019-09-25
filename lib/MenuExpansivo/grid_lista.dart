import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridLisHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 5.0,
      crossAxisCount: 2,
      children: <Widget>[
        _gridListItens(
            "Empreendimentos",
            "https://verdanatech.com/wp-content/uploads/2015/08/bg-banner-300x94.jpg",
            0x33ff33,
            0x009900),
        _gridListItens(
            "Clientes",
            "https://s3.amazonaws.com/kp-blog/wp-content/uploads/2018/09/27123335/como-fidelizar-clientes-o-que-fideliza-768x512.jpg",
            0xFFCCFF,
            0xCC33CC),
        _gridListItens(
            "Contratos",
            "https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-blue-technology-world-map-earth-cool-banner-background-windscience-and-technologybusiness-image_68478.jpg",
            0xFFCCFF,
            0xCC33CC),
        _gridListItens(
            "Usuarios",
            "https://s3.amazonaws.com/kp-blog/wp-content/uploads/2018/09/27123255/como-fidelizar-clientes-10-dicas-para-agradar-768x537.jpg",
            0xFFCCFF,
            0xCC33CC),
        _gridListItens(
            "Configuração",
            "http://cursosdevendaonline.com.br/wp-content/uploads/2016/12/Classifica%C3%A7%C3%A3o-ABC-de-Clientes.png",
            0xFFCCFF,
            0xCC33CC),
        _gridListItens(
            "Genexus for Students",
            "https://verdanatech.com/wp-content/uploads/2015/08/bg-banner-300x94.jpg",
            0xFFCCFF,
            0xCC33CC),
        _gridListItens(
            "Genexus for Students",
            "https://verdanatech.com/wp-content/uploads/2015/08/bg-banner-300x94.jpg",
            0x33CCFF,
            0x3333FF)
      ],
    );
  }

  Widget _gridListItens(String gridName, String gridImage, int cor1, int cor2) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
            colors: [Color(cor1), Color(cor2)],
            begin: Alignment.bottomLeft,
            end: new Alignment(1, 1.0)),
      ),
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Color(cor1).withOpacity(0.5),
                     BlendMode.hue),
                    image: NetworkImage(gridImage), fit: BoxFit.fitHeight),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Job",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Icon(
                        FontAwesomeIcons.compass,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Guide",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Center(
                  child: Text(
                    "$gridName",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
