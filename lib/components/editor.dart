// widget para entrar com informaçoes
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icone;

  // as chaves dentro dos parenteses do Editor indicam que ao instanciar este objeto podem ser usados ou não os paramentros do widget principal da classe
  // Cria Widgets flexíveis
  // ignore: use_key_in_widget_constructors
  const Editor({
  required this.controlador, required this.rotulo, required this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    // padding adiciona o espacinho (margem) antes dos textos
    return Padding(
      padding: const EdgeInsets.all(16.0),
      //textfield -> campo pra inserir textos
      child: TextField(
        controller: controlador,
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}