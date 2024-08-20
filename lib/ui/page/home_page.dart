import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));
  double _value = 0;

  void _incremetaUno(){
    setState(() {
      _value += 1;
    });
  }

  void _decrementaUno(){
    setState(() {
      _value -= 1;
    });
  }

  void _incremetaPuntoUno(){
    setState(() {
      _value += 0.1;
    });
  }

  void _decrementaPuntoUno(){
    setState(() {
      _value -= 0.1;
    });
  }

  void _restart(){
    setState(() {
      _value = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: _restart,
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(value: _value, onAdd: _incremetaPuntoUno, onSub: _decrementaPuntoUno,), 
                W2(value: _value,), 
                W3(value: _value, onAdd: _incremetaUno, onSub: _decrementaUno,)],
            ),
          ),
        ],
      )),
    );
  }
}
