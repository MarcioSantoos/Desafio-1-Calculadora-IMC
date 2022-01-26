import 'package:application_calculadora/controller/calculo_imc_controller.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  TextEditingController heighController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = "Informe seus dados";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Image.asset('assets/images/logo_home.png', alignment: Alignment.centerRight,),
        title: SizedBox(
          width: 300,
          child: Text(
            'Calculadora IMC',
            style: TextStyle(
              fontSize: 14,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                textInfo = CalcularController().resetFields(heighController, weightController);
              });
            },
            child: SizedBox(
              width: 50,
              child: const Icon(Icons.refresh)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Image.asset('assets/images/user.png'),
              ),
              const SizedBox(
                height: 47,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: weightController,
                  decoration: const InputDecoration(
                    hintText: 'Peso (kg)',
                  ),
                ),
              ),
              const SizedBox(
                height: 38.5,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: heighController,
                  decoration: const InputDecoration(
                    hintText: 'Altura (cm)',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 33.5),
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                     textInfo = CalcularController().calculaImc(heighController, weightController);
                    });
                  },
                  child: const Text('Calcular'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 33),
                child: Text(textInfo)),
            ],
          ),
        ),
      ),
    );
  }
}
