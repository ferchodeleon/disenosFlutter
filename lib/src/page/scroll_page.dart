import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              _colorFondo(),
              _imagen(),
              _textos(),
            ],
          ),
          Stack(
            children: <Widget>[
              _colorFondo(),
              _boton()
            ],
          )
        ],
      ),
    );
  }

  Widget _boton() {

    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
        ),
        onPressed: () {},
      )
    );
  }

  Widget _pagina2() {

    return Center(
      child: Text('pagina 2'),
    );
  }

  Widget _colorFondo() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagen() {

    return Image(
      image: AssetImage('assets/image/imageCasa.png'),
      fit: BoxFit.cover,
    );
  }

  Widget _textos() {

    final estiloTexto = TextStyle( color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11º', style: estiloTexto),
          Text('Miercoles', style: estiloTexto,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }
}