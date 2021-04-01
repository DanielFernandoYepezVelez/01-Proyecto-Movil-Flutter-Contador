import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    /* Aqui Retornamos Una Nueva Instancia Del ContadorPageState */
    // return new _ContadorPageState();
    return _ContadorPageState();
  }
}

// ------------------------------------------------

/* Esta Clase Es El Estado Del StatefulWidget */
class _ContadorPageState extends State<ContadorPage> {
  /* Es Inmutable Y En Ningun Momento Puede Cambiar */
  final _styleSize = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Titulo'), centerTitle: true),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Número De Clicks:', style: _styleSize),
            Text('$_conteo', style: _styleSize),
          ]),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(width: 30.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
    ]);
  }

  void _reset() => setState(() => _conteo = 0);

  void _sustraer() => setState(() => _conteo--);

  void _agregar() => setState(() => _conteo++);
}
