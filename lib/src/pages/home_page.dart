import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  /* Es Inmutable Y En Ningun Momento Puede Cambiar */
  final styleSize = new TextStyle(fontSize: 25);
  final contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número De Clicks:', style: styleSize),
            Text('$contador', style: styleSize),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {print('Hola Mundo')},
      ),
    );
  }
}
