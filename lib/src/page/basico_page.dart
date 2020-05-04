import 'dart:ui';

import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImage(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }


  Widget _crearImage() { //Widget para la imagen

    return Image(
      height: 250.0,
      width: double.infinity,
      image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
      fit: BoxFit.cover,
    );
  }

  Widget _crearTitulo() { //Widget para el titulo

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo),
                  SizedBox(height: 7.0,),
                  Text('Lago en el mundo', style: estiloSubTitulo, overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Router'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 20.0,),
        Text(texto, style: TextStyle( color: Colors.blue, fontSize: 15.0 ),)
      ],
    );
  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
          'Occaecat enim Lorem dolor magna magna non exercitation nostrud. Voluptate fugiat irure cillum minim officia mollit aliqua quis mollit. Velit dolore irure enim occaecat commodo sint dolore esse nostrud exercitation esse eu adipisicing. Veniam nisi non eiusmod quis commodo enim in reprehenderit non proident est. Aliquip aliquip elit amet ea occaecat eu incididunt elit incididunt. Ex sit dolor sunt est cupidatat aute excepteur quis amet enim. Adipisicing excepteur id anim aute nostrud reprehenderit adipisicing.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}