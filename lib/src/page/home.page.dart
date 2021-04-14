import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 32);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Contador Yareli'),
              centerTitle: true,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de Cliks', style: _estiloTexto),
                Text('$_conteo', style: _estiloTexto),
              ],
            )),
            floatingActionButton: _crearBotones()));
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: _reset,
            icon: Icon(Icons.refresh),
            iconSize: 40,
          ),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: _sustraer,
            icon: Icon(Icons.remove),
            iconSize: 40,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: _agregar,
            icon: Icon(Icons.add),
            iconSize: 40,
          ),
        ),
      ],
    );
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
