import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo de entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor:"
              ),
              maxLength: 2,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
              // obscureText: true,
              // onChanged: (String entrada){
              //   print("Valor digitado:" + entrada);
              // },
              onSubmitted: (String entrada){print("Valor digitado no confirmar" + entrada);},
              controller: _editingController,
            ),
          ),
          ElevatedButton(
              onPressed: (){print("Valor digitado no salvar: "+ _editingController.text);},
              child: Text("Salvar"))
        ],
      ),
    );
  }
}
