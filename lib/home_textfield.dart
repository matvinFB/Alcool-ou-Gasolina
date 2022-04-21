import 'package:flutter/material.dart';

class home_textField extends StatefulWidget {
  const home_textField({Key? key}) : super(key: key);

  @override
  State<home_textField> createState() => _home_textFieldState();
}

class _home_textFieldState extends State<home_textField> {

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  String resultado = "";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 45, right: 45, top: 15, bottom: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/logo.png'),
              Text("Saiba qual a melhor forma de abastecimento para o seu carro."),
              TextField(
                controller: _textEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Gasolina",
                  hintText: "Digite aqui o preço da gasolina",
                  hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              TextField(
                controller: _textEditingController2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Álcool",
                    hintText: "Digite aqui o preço do álcool",
                    hintStyle: TextStyle(fontSize: 15)
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    //Alcool:6.3 || Gasolina:9.2

                    setState(() {
                      resultado = "A melhor opção de abastecimento é: " +
                          ((double.parse(_textEditingController.text.replaceAll(",", "."))/9.2<double.parse(_textEditingController2.text.replaceAll(",", "."))/6.3)?"Gasolina":"Álcool");
                    });
                  },
                  child: Text("Calcular")
              ),
              Text("$resultado")
              
            ],
          ),
        ),
      ),
    );
  }
}
