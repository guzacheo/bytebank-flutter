import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criando transferência')),
      body: Column(
        children: [
          // padding adiciona o espacinho (margem) antes dos textos
          const Padding(
            padding: EdgeInsets.all(16.0),
            //textfield -> campo pra inserir textos
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration:
                  InputDecoration(labelText: 'Número da conta', hintText: '0000'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  labelText: 'Valor a ser transferido', hintText: '00.00', icon: Icon(Icons.monetization_on)),
            ),
          ),
          //elevatedbutton cria um botao
          ElevatedButton(
              onPressed: () {}, child: Text('Confirmar transferência'))
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    body:
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transferências"),
        ),
        body: Column(children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(200.0, 2000)),
          ItemTransferencia(Transferencia(300.0, 3000)),
        ]),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroconta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroconta;

  Transferencia(this.valor, this.numeroconta);
}
